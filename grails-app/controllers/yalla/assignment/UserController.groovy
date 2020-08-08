package yalla.assignment

class UserController {
    def userService
    def index() {

    }
    def searchResults = {

        def c = User.createCriteria()
        def user = c.list {
            if(params?.name) {
                like("userName", "%${params.name}%")
            }
        }
            [user:user]

    }
}
