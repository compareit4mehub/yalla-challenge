package yalla.assignment
import grails.converters.JSON
import groovy.json.JsonOutput

class UserController {
    /**
     * This controller is responsible for handling requests
     * and delegates it to the view.
     *
     * index() actions are been mapped to the URI /user/index and /user/index/form
     * */
    def userService

    def index() { }

    def search() {

        def user = userService.getByUserName(params.userName)

        if (user.is(null)){
            def userInfo = new URL("https://api.github.com/users/${params.userName}").openConnection()
            if(userInfo.getResponseCode() == 200) {
                def userJson = JSON.parse(userInfo.getInputStream().getText())
                user = new User(userName:userJson.login
                        ,userImg: userJson.avatar_url
                        ,location:userJson.location
                        ,bio:userJson.bio
                        ,gitHubId:userJson.id
                        ,public_repos:userJson.public_repos)
                userService.save(user)

                render (view: "user", model: [user: user])
            }
            else{
                def errorText = '{\n' +
                        '       "status": "error",\n' +
                        '       "details": "User doesn\'t exist"\n' +
                        '    }'
                render(text: errorText, contentType: "application/json", encoding: "UTF-8")
            }
        }
        else{
            render (view: "user", model: [user: user])
        }
    }
}