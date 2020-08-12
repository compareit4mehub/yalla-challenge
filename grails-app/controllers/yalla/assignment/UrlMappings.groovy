package yalla.assignment

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/github"(controller:"gitUser", action:"getUser") // Custom Mapping Here
        "/github/$username"(controller:"gitUser", action:"getUser") //Recirector with Param
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
