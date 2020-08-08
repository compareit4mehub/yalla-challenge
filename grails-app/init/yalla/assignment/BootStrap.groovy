package yalla.assignment

class BootStrap {
    def userService
        def init = { servletContext ->
        if(User.count() == 0 ){
            userService.createUser("aleena4249","https://avatars3.githubusercontent.com/u/69631?v=4","ABuDhabi,UAE","We are working to build community through open source technology. NB: members must have two-factor auth.","1234","12")
            userService.createUser("aleena4247","https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200","Dubai,UAE","We are working to build community through open source technology. NB: members must have two-factor auth.","1234","12")
        }
    }
    def destroy = {
    }
}
