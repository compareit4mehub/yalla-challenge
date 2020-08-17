package yalla.assignment

import grails.converters.JSON

class UserController {

    def userService

    def index() {

    }

    def search() {
        def user = userService.getByUserName(params.userName)

        if (user.is(null)){
            def get = new URL("https://api.github.com/users/${params.userName}").openConnection()
            if(get.getResponseCode() == 200) {
                def jsonObj = JSON.parse(get.getInputStream().getText())
                user = new User(userName:jsonObj.login
                        ,avatar_url:jsonObj.avatar_url
                        ,location:jsonObj.location
                        ,bio:jsonObj.bio
                        ,gitHubId:jsonObj.id
                        ,public_repos:jsonObj.public_repos)

                userService.save(user)
            }
            else{
                flash.message = 'User doesn\'t exist'
            }
        }

        render (view: "index", model: [user: user])
    }
}
