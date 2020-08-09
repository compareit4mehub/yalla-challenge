package yalla.assignment

import java.util.concurrent.ConcurrentHashMap

class UserService {

    def serviceMethod() {

    }

    def userCache = new ConcurrentHashMap()

    def save(user){
        userCache.put(user.userName,user)
    }

    def findByUserName(userName){
        userCache.get(userName)
    }
}
