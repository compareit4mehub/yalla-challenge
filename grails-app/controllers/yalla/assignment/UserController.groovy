package yalla.assignment

import grails.converters.JSON

class UserController {

    def userService

    def index() { }

    def getUser() {
        def user = userService.findByUserName(params.userName)
        if (user.is(null)){
            def httpUrlConn =(HttpURLConnection) new URL("https://api.github.com/users/${params.userName}").openConnection()
            if(httpUrlConn.getResponseCode() == 200) {
                def jsonObj = JSON.parse(httpUrlConn.getInputStream().getText())
                user = new User(userName:jsonObj.login
                        ,avatar_image_url:jsonObj.avatar_url
                        ,location:jsonObj.location
                        ,bio:jsonObj.bio
                        ,gitHubId:jsonObj.id
                        ,public_repos:jsonObj.public_repos)


                userService.save(user)

                render (view: "user", model: [user: user])
            }
            else{
                flash.message ="UserName ${params.userName} not found"
                redirect action: "index"
            }
        }
        else{
            render (view: "user", model: [user: user])
        }
    }
}
