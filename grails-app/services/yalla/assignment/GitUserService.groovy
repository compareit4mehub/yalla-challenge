package yalla.assignment

import grails.gorm.services.Service

@Service(GitUser)
interface GitUserService {

    GitUser get(Serializable id)

    List<GitUser> list(Map args)

    Long count()

    void delete(Serializable id)

    GitUser save(GitUser gitUser)

}