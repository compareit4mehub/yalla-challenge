package yalla.assignment

import grails.gorm.validation.exceptions.ValidationConfigurationException
import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class UserControllerSpec extends Specification implements ControllerUnitTest<UserController> {

    def setup() {

    }

    def cleanup() {
    }

    void "test get user details"() {
        given:
        params.userName = 'mohana91'
        controller.userService = Mock(UserService){
            findByUserName(params.userName) >> null
        }

        when : controller.getUser()

        then: "view is rendered with user page"
        model.user != null
        view == '/user/user'
    }

    void "test get user details with empty or null username"() {
        given:
        params.userName = null

        when : controller.getUser()

        then: "redirecting it to index page to show message"
        flash.message == "UserName is empty"
        response.redirectUrl == '/user/index'
    }

    void "test get user details with invalid username"() {
        given:
        params.userName = 'dsfgdg'
        controller.userService = Mock(UserService){
            findByUserName(params.userName) >> null
        }

        when : controller.getUser()

        then: "redirecting it to index page to display username not found"
        flash.message == "UserName dsfgdg not found"
        response.redirectUrl == '/user/index'
    }
}
