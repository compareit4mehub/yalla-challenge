package yalla.assignment
import grails.converters.JSON
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
            def get = new URL("https://api.github.com/users/${params.userName}").openConnection()
            if(get.getResponseCode() == 200) {
                def jsonObj = JSON.parse(get.getInputStream().getText())
                user = new User(userName:jsonObj.login
                        ,userImg: jsonObj.avatar_url
                        ,location:jsonObj.location
                        ,bio:jsonObj.bio
                        ,gitHubId:jsonObj.id
                        ,public_repos:jsonObj.public_repos)
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