package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

//    User createUser(String userName, String userImage,String location,String bio,String gitId ,String norepos) {
//        User p = new User()
//        p.userName = userName
//        p.userImage = userImage
//        p.location  = location
//        p.bio = bio
//        p.gitId = gitId
//        p.norepos = norepos
//        p.save()
//        return p
//    }

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
