package yalla.assignment

import grails.gorm.services.Service

@Service(GithubUsers)
interface GithubUsersService {

    GithubUsers getById(Serializable id)

    GithubUsers getByUserName(Serializable userName)

    List<GithubUsers> list(Map args)

    Long count()

    void delete(Serializable id)

    GithubUsers save(GithubUsers githubUsers)

}