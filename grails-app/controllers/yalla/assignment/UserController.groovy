package yalla.assignment

import grails.converters.JSON
import grails.validation.ValidationException

class UserController {

    def userService

    def index() {}

    def getUser() {
        if (params.userName) {
            def user = userService.findByUserName(params.userName)
            if (user.is(null)) {
                try {
                    def httpUrlConn = (HttpURLConnection) new URL("https://api.github.com/users/${params.userName}").openConnection()
                    if (httpUrlConn.getResponseCode() == 200) {
                        def jsonObj = JSON.parse(httpUrlConn.getInputStream().getText())
                        user = new User(userName: jsonObj.login
                                , avatar_image_url: jsonObj.avatar_url
                                , location: (jsonObj.location==null? "NA" : jsonObj.location)
                                , bio: (jsonObj.bio == null ? "NA" : jsonObj.bio)
                                , gitHubId: jsonObj.id
                                , public_repos: jsonObj.public_repos)

                        try {
                            userService.save(user)
                        } catch (ValidationException e) {
                            println(e.getErrors())
                            flash.message = "Something went wrong"
                            redirect action: "index"
                        }
                        render(view: "user", model: [user: user])
                    } else {
                        flash.message = "UserName ${params.userName} not found"
                        redirect action: "index"
                    }
                } catch (ValidationException e) {
                    println(e.getErrors())
                    flash.message = "Something went wrong"
                    redirect action: "index"
                }
            } else {
                render(view: "user", model: [user: user])
            }
        } else {
            flash.message = "UserName is empty"
            redirect action: "index"
        }
    }
}
