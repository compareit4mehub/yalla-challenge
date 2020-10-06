package yalla.assignment

import grails.converters.JSON
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class GithubReposController {

    GithubReposService githubReposService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond githubReposService.list(params), model:[githubReposCount: githubReposService.count()]
    }


    def findUserRepos() {
        if (params.userName) {
            def apiLinkGetUserRepos = "https://api.github.com/users/${params.userName}/repos"
                try {
                    // GET Repos
                    def getUserRepos = new URL("${apiLinkGetUserRepos}").openConnection();
                    def reposGetRC = getUserRepos.getResponseCode();
                    if(reposGetRC.equals(200)) {
                        def jsonUserRepos = JSON.parse(getUserRepos.getInputStream().getText())
                        jsonUserRepos.each { repo ->
                            githubUserRepos = new GithubRepos(
                                    idRepo: repo.id
                                    , avatar_url: repo.avatar_url
                                    , html_url: repo.html_url
                                    , fullnameRepo: repo.fullname
                                    , description: repo.description
                                    , created_at: repo.created_at
                                    , updated_at: repo.updated_at)

                        }
                        try {
                            githubReposService.save(githubUserRepos)
                        } catch (ValidationException e) {
                            respond githubUsers.errors, view:'create'
                            return
                        }
                        //render(view: "details", model: [user: githubUser])
                    } else {
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

    }




    def show(Long id) {
        respond githubReposService.get(id)
    }

    def create() {
        respond new GithubRepos(params)
    }

    def save(GithubRepos githubRepos) {
        if (githubRepos == null) {
            notFound()
            return
        }

        try {
            githubReposService.save(githubRepos)
        } catch (ValidationException e) {
            respond githubRepos.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'githubRepos.label', default: 'GithubRepos'), githubRepos.id])
                redirect githubRepos
            }
            '*' { respond githubRepos, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond githubReposService.get(id)
    }

    def update(GithubRepos githubRepos) {
        if (githubRepos == null) {
            notFound()
            return
        }

        try {
            githubReposService.save(githubRepos)
        } catch (ValidationException e) {
            respond githubRepos.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'githubRepos.label', default: 'GithubRepos'), githubRepos.id])
                redirect githubRepos
            }
            '*'{ respond githubRepos, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        githubReposService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'githubRepos.label', default: 'GithubRepos'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'githubRepos.label', default: 'GithubRepos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
