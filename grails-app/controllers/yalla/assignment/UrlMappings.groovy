package yalla.assignment

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"home")
        "/searchUser"(controller:"gitUser")
        "/searchUser/${username}"(controller:"gitUser")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
