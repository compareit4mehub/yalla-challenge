package yalla.assignment
import grails.converters.JSON

class UserController {
    def userService
    def index() {

    }
    def searchResults = {

//        def c = User.createCriteria()
//        def user = c.list {
//            if(params?.name) {
//                like("userName", "%${params.name}%")
//            }
//        }
//            [user:user]

        def user = userService.getByUserName(params.name)
        if (user.is(null)){
            def get = new URL("https://api.github.com/users/${params.name}").openConnection()
            if(get.getResponseCode() == 200) {
                def jsonObj = JSON.parse(get.getInputStream().getText())
                user = new User(userName: jsonObj.login
                        , avatar_url: jsonObj.avatar_url
                        , location: jsonObj.location
                        , bio: jsonObj.bio
                        , gitHubId: jsonObj.id
                        , public_repos: jsonObj.public_repos)


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

