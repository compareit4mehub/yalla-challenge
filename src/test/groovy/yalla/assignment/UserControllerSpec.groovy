package yalla.assignment

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class UserControllerSpec extends Specification implements ControllerUnitTest<UserController> {

    def setup() {
    }

    def cleanup() {
    }

    void "test Search"() {
        User user = new User();
        user.setUserName("maramsushma");
        controller.userService = Mock(UserService){
            list() >> [user]
        }
        when: "Valid existing gitHub user name is entered"
          params.userName = "xyz"
        controller.search()
         then: response.status == 200
    }

    void "test Negative Search"() {
        User user = new User();
        user.setUserName("#");
        controller.userService = Mock(UserService){
            list() >> [user]
        }
        def errorText = '{\n' +
                '       "status": "error",\n' +
                '       "details": "User doesn\'t exist"\n' +
                '    }'
        when: "Valid existing gitHub user Name is not entered"
        params.userName = "#"
        controller.search()
        then:
        response.text.contentEquals(errorText)
    }
}
