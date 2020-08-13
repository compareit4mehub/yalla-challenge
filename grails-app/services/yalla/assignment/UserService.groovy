package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def serviceMethod() { }

    def get(id){
        user.get(id)
    }

    def list(){
        user.list()
    }

    def save(user){
        user.save(flush:true)
    }

    def getByUserName(userName){
        user.findByUserName(userName)
    }

}