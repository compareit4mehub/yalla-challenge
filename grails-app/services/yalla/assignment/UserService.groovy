package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
public class UserService {

    User createUser(String userName, String userImage,String location,String bio,String gitId ,String norepos) {
        User p = new User()
        p.userName = userName
        p.userImage = userImage
        p.location  = location
        p.bio = bio
        p.gitId = gitId
        p.norepos = norepos
        p.save()
        return p
    }
}
