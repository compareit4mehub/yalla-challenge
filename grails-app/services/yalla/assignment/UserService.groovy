package yalla.assignment

import grails.gorm.transactions.Transactional

/**
 * Here my code would handle the retrieve
 * the git user info and also persists all the data to the database.
 * */
@Transactional
class UserService {

    def serviceMethod() { }

    def get(id){
        User.get(id)
    }

    def list(){
        User.list()
    }

    def save(user){
        user.save(flush:true)
    }

    def getByUserName(userName){
        User.findByUserName(userName)
    }

    def delete(id){
        Student.get(id).delete()
    }
}
