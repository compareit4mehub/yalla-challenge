package yalla.assignment

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional
import grails.converters.JSON

class GitUserController {

    GitUserService gitUserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    static String GITHUB_API = "https://api.github.com/users/"

    def getUser(String username){
        def userbio, userloc, userrepos, userimg, userid, error
        if (username)
        {
            (userbio, userloc, userrepos, userimg, userid, error) = getUserObject(username)
        }
        respond([
                username: username ?: null,
                userbio: userbio ?: null,
                userloc: userloc ?: null,
                userrepos: userrepos ?: null,
                userimg: userimg ?: null,
                userid: userid ?: null,
                error: error ?: null,
            ], view: "get_user")
    }

    def getUserObject(String username){

        def response, responseJson, userbio, userloc, userrepos, userimg, userid
        def gituserobj = GitUser.findByUser_name(username)
        if (gituserobj) {
            println "Found Cached user"
            userbio = gituserobj["user_bio"]
            userloc = gituserobj["user_location"]
            userrepos = gituserobj["user_pub_repos"]
            userimg = gituserobj["user_avatar_url"]
            userid = gituserobj["user_id"]
        }
        else {
            println "No Cached user found"
            response = new URL(GITHUB_API + username).openConnection()
            def status_code = response.getResponseCode()
            if (status_code == 404)
            {
                println "User not found"
                return [null, null, null, null, null, "User Not Found"]
            }
            else if (status_code == 403)
            {
                println "Forbidden"
                return [null, null, null, null, null, "Access Denied"]
            }
            else if (status_code != 200)
            {
                println "Unknown Error Occurred"
                return [null, null, null, null, null, "Unknown Error Occurred"]
            }
            responseJson = JSON.parse(response.getInputStream().getText())
            userbio = responseJson["bio"]
            userloc = responseJson["location"]
            userrepos = responseJson["public_repos"]
            userimg = responseJson["avatar_url"]
            userid = responseJson["id"]
            gituserobj = new GitUser(user_name: username, user_id: userid as long, user_avatar_url: userimg,
                user_bio: userbio, user_location: userloc, user_pub_repos: userrepos)
            gitUserService.save(gituserobj)
        }

        return [userbio, userloc, userrepos, userimg, userid, null]
    }

    /// Auto Generated CRUD
    def show(Long id) {
        respond gitUserService.get(id)
    }

    def create() {
        respond new GitUser(params)
    }

    @Transactional
    def save(GitUser gitUser) {
        if (gitUser == null) {
            notFound()
            return
        }

        try {
            gitUserService.save(gitUser)
        } catch (ValidationException e) {
            respond gitUser.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gitUser.label', default: 'GitUser'), gitUser.id])
                redirect gitUser
            }
            '*' { respond gitUser, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond gitUserService.get(id)
    }

    @Transactional
    def update(GitUser gitUser) {
        if (gitUser == null) {
            notFound()
            return
        }

        try {
            gitUserService.save(gitUser)
        } catch (ValidationException e) {
            respond gitUser.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'gitUser.label', default: 'GitUser'), gitUser.id])
                redirect gitUser
            }
            '*'{ respond gitUser, [status: OK] }
        }
    }

    @Transactional
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        gitUserService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'gitUser.label', default: 'GitUser'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gitUser.label', default: 'GitUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
