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
                user = new User(
                        userName:jsonObj.login,
                        avatar_url:jsonObj.avatarUrl,
                        location:jsonObj.location,
                        bio:jsonObj.bio,
                        gitId:jsonObj.id,
                        public_repos:jsonObj.publicRepos)


                userService.save(user)

                render (view: "user", model: [user: user])
            }
            else{
                render "User doesn't exist"
            }
        }
        else{
            render (view: "user", model: [user: user])
        }
    }
}