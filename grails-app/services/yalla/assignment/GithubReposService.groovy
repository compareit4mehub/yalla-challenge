package yalla.assignment

import grails.gorm.services.Service

@Service(GithubRepos)
interface GithubReposService {

    GithubRepos get(Serializable id)

    List<GithubRepos> list(Map args)

    Long count()

    void delete(Serializable id)

    GithubRepos save(GithubRepos githubRepos)

}