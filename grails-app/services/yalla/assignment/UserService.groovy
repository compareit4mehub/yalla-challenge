package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    def get(id){
        User.get(id)
    }

    def save(user){
        user.save(flush:true)
    }

    def getByUserName(userName){
        User.findByUserName(userName)
    }
}
