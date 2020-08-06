package yalla.assignment

import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class GituserController {

    GituserService gituserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def search(Gituser gituser) {
        respond new Gituser(params)
    }
    def getuser(Gituser gituser) {
        def user = gituserService.searchUserName(gituser.getName())
        render user as JSON
    }
}
