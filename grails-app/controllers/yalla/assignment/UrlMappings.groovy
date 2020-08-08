package yalla.assignment

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/user/$id?"(controller: 'user')
        "/searchResults/$id?"(controller: 'user',action:'searchResults')
        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
