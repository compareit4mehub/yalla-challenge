package yalla.assignment

class BootStrap {

    GitUserService gitUserService

    def init = { servletContext ->

        //Some initial data for default db
        gitUserService.saveUser("5addam", 40033542,
                "https://avatars.githubusercontent.com/u/40033542?v=4",
                "https://github.com/5addam",
                "Saddam Mughal",
                "Pakistan",
                "Student | Software Developer | CyberSec Enthusiastic | Learner",
                25)
        gitUserService.saveUser("facebook", 69631,
                "https://avatars.githubusercontent.com/u/69631?v=4",
                "https://github.com/facebook",
                "Facebook",
                "Menlo Park, California",
                "We are working to build community through open source technology. NB: members must have two-factor auth.",
                117)
        gitUserService.saveUser("ali", 515861,
                "https://avatars.githubusercontent.com/u/515861?v=4",
                "https://github.com/ali",
                "Ali Ukani",
                "Somerville, MA",
                "Senior SWE working on HubSpot's Frontend Platform",
                119)
    }
    def destroy = {
    }
}
