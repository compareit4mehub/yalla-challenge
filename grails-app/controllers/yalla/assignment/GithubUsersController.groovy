package yalla.assignment

import grails.converters.JSON
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class GithubUsersController {

    GithubUsersService githubUsersService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)

        //respond githubUsersService.list(params), model:[githubUsersCount: githubUsersService.count()]
        render(view: "search")

    }

    def show(Long id) {
        respond githubUsersService.getById(id)
    }


    def findUser() {
        if (params.userName) {
            def apiLinkGetUser = "https://api.github.com/users/${params.userName}"
            def apiLinkGetUserRepos = "https://api.github.com/users/${params.userName}/repos"
            def githubUser = githubUsersService.getByUserName(params.userName)
            if (githubUser.is(null)) {
                try {
                    // GET User
                    def getUser = new URL("${apiLinkGetUser}").openConnection();
                    def userGetRC = getUser.getResponseCode();
                    if(userGetRC.equals(200)) {
                        def jsonUser = JSON.parse(getUser.getInputStream().getText())
                        githubUser = new GithubUsers(
                                          userName: jsonUser.login
                                        , githubId: jsonUser.id
                                        , avatar_url: jsonUser.avatar_url
                                        , html_url: jsonUser.html_url
                                        , repos_url: jsonUser.repos_url
                                        , type: jsonUser.type
                                        , githubName: jsonUser.name
                                        , location: jsonUser.location
                                        , githubBio: jsonUser.bio
                                        , public_repos: jsonUser.public_repos
                                        , created_at: jsonUser.created_at
                                        , updated_at: jsonUser.updated_at)
                        try {
                            githubUsersService.save(githubUser)
                        } catch (ValidationException e) {
                            respond githubUsers.errors, view:'create'
                            return
                        }
                        render(view: "details", model: [user: githubUser])
                    } else {
                        flash.message = "No account found for username ${params.userName}"
                        redirect action: "index"
                    }
                } catch (ValidationException e) {
                    println(e.getErrors())
                    flash.message = "Something went wrong"
                    redirect action: "index"
                }
            } else {
                render(view: "details", model: [user: githubUser])
            }
        } else {
            redirect action: "index"
        }
    }


    def create() {
        respond new GithubUsers(params)
    }

    def save(GithubUsers githubUsers) {
        if (githubUsers == null) {
            notFound()
            return
        }

        try {
            githubUsersService.save(githubUsers)
        } catch (ValidationException e) {
            respond githubUsers.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'githubUsers.label', default: 'GithubUsers'), githubUsers.id])
                redirect githubUsers
            }
            '*' { respond githubUsers, [status: CREATED] }
        }
    }

    // local users list
    def loadLocalUser() {

        def usersList = githubUsersService.list()
        render(view: "all", model: [usersList : usersList, totalUsers : githubUsersService.count()])

    }


    def edit(Long id) {
        respond githubUsersService.getById(id)
    }

    def update(GithubUsers githubUsers) {
        if (githubUsers == null) {
            notFound()
            return
        }

        try {
            githubUsersService.save(githubUsers)
        } catch (ValidationException e) {
            respond githubUsers.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'githubUsers.label', default: 'GithubUsers'), githubUsers.id])
                redirect githubUsers
            }
            '*'{ respond githubUsers, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        githubUsersService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'githubUsers.label', default: 'GithubUsers'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'githubUsers.label', default: 'GithubUsers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
