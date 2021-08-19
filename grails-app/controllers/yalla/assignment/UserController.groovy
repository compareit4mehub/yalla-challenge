package yalla.assignment

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import groovy.json.JsonSlurper
import grails.web.databinding.DataBinder

class UserController {

    UserService userService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def bindData = ['name','bio','github_id', 'location', 'avatar_url', 'numRepos']

    def index() {   
    }

    def show(User user) {
        render(view: "show", model: [user: user])
    }

    def create() {
        respond new User(params)
    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            bindData(user, params, [include: bindData])
            userService.save(user)
            show(user)
            return

        } catch (ValidationException e) {
            respond user.errors, view:'show'
            return
        }

        response.flushBuffer()
    }

    def retrieve_from_db() {
        def user = User.get(params.name)
       
        if(!user){ //If User is not found in Database then Get the Data from Github API
            get_api_data(params.name)
            return
            
        }
        else {
            //If User is found in Database then Display the Data
             redirect(action: "show", params:params.name)
        }

        response.flushBuffer()
        
    }

    protected void get_api_data(final String user) {
        def get = new URL('https://api.github.com/users/'+ user).openConnection();
        def getRC = get.getResponseCode();
        
        if (getRC.equals(200)) {
            
            //Parse Incoming Data to store in Local DB
            parse_api_data(get.getInputStream().getText())
        }
        else {
            render "No Record found. Error code: "+ getRC
        } 

    }

    protected void parse_api_data(final String data) {
        def json = new JsonSlurper().parseText(data)
        
       def user = new User(name: json.'login', github_id:json.'id', avatar:json.'avatar_url', numRepos:json.'public_repos', location:json.'location', bio:json.'bio')
       //Save User to Database, so It maybe Displayed on Page
       save(user)

       response.flushBuffer() 
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.name])
                redirect action: "show", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
