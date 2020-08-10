package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    def save(user){
        user.save(flush:true)
    }

    def findByUserName(userName){
        User.findByUserName(userName)
    }
}
