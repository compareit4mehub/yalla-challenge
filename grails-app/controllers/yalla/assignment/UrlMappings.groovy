package yalla.assignment

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/Home/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
