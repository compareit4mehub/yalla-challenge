package yalla.assignment

import grails.converters.JSON

class GitUserController {

    GitUserService gitUserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    final static String API_URL = "https://api.github.com/users/"

    def getUser(String username) {
        def userAccountName, userName, userId, userAvatarUrl, userProfileUrl, userLocation, userBio, userPublicRepos, message
        if (username != null) {
            (userAccountName, userId, userAvatarUrl, userProfileUrl, userName, userLocation, userBio, userPublicRepos, message) = searchUser(username)
        }
        respond([
                username      : userName ?: null,
                userbio       : userBio ?: null,
                userrepos     : userPublicRepos ?: null,
                userimg       : userAvatarUrl ?: null,
                userid        : userId ?: null,
                userloc       : userLocation ?: null,
                userlogin     : userAccountName ?: null,
                userProfileUrl: userProfileUrl ?: null,
                message       : message ?: null
        ], view: "index")
    }

    def searchUser(userName) {
        def response, jsonData
        def gitUser = gitUserService.findUser(userName)
        if (gitUser) {
            return [gitUser["login"], gitUser["id"],
                    gitUser["avatar_url"],
                    gitUser["html_url"],
                    gitUser["name"],
                    gitUser["location"],
                    gitUser["bio"],
                    gitUser["public_repos"], null]
        } else {
            try {
                response = new URL(API_URL + userName).openConnection()
                println(response.toString())
                def status_code = response.getResponseCode()
                if (status_code == null) {
                    return [null, null, null, null, null, null, null, null, "Check your internet connection!!"]
                }
                switch (status_code) {
                    case 200:
                        jsonData = JSON.parse(response.getInputStream().getText())
                        gitUser = gitUserService.saveUser(jsonData["login"], jsonData["id"],
                                jsonData["avatar_url"],
                                jsonData["html_url"],
                                jsonData["name"],
                                jsonData["location"],
                                jsonData["bio"],
                                jsonData["public_repos"])

                        return [jsonData["login"], jsonData["id"],
                                jsonData["avatar_url"],
                                jsonData["html_url"],
                                jsonData["name"],
                                jsonData["location"],
                                jsonData["bio"],
                                jsonData["public_repos"],
                                null]
                        break
                    case 404:
                        return [null, null, null, null, null, null, null, null, "User: ${userName} not found!!"]
                        break
                    case 408:
                        return [null, null, null, null, null, null, null, null, "Request timeout. Please try after come time."]
                        break
                    case 500:
                        return [null, null, null, null, null, null, null, null, "Some Internal Error Occurred!!"]
                        break
                    case 503:
                        return [null, null, null, null, null, null, null, null, "Server isn't responding at the moment, please try later."]
                        break
                    default:
                        return [null, null, null, null, null, null, null, null, "Some Unknown error occurred!!."]
                        break
                }
            }
            catch (Exception e) {
                println(e.toString())
                return [null, null, null, null, null, null, null, null, "Some Internal error occurred!! Check your internet connection."]

            }
        }
    }

    def index() {}
}
