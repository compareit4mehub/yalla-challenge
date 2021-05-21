package yalla.assignment

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"home")
        "/searchUser"(controller:"gitUser", action:"getUser")
        "/searchUser/${username}"(controller:"gitUser", action:"getUser")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
