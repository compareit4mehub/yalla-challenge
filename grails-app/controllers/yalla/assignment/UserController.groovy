package yalla.assignment
import grails.converters.JSON
import groovy.json.JsonOutput

class UserController {

    def UserService

    def index() { }

    def search() {

            def user = UserService().getByUserName(params.userName)

            if (user.is(null)){

                def userInfo = new URL("https://api.github.com/users/${params.userName}").openConnection()

                if(userInfo.getResponseCode() == 200) {
                    def userJson = JSON.parse(userInfo.getInputStream().getText())

                    user = new User(
                            userName:userJson.login,
                            avatarUrl: userJson.avatar_url,
                            location:userJson.location,
                            bio:userJson.bio,
                            gitId:userJson.id,
                            publicRepos:userJson.public_repos)

                    userService.save(user)

                    render (view: "user", model: [user: user])
                }
                else{
                    render "user doesn't exist."
                }
            }
            else{
                render (view: "user", model: [user: user])
            }

        }

    }
