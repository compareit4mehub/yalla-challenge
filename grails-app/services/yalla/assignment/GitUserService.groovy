package yalla.assignment

import grails.gorm.transactions.Transactional

@Transactional
class GitUserService {

    def serviceMethod() {

    }
    def saveUser(login, id, avatar_url, html_url, name, location, bio, public_repos) {
        GitUser gitUser = new GitUser()
        gitUser.login = login
        gitUser.name = name
        gitUser.id = id
        gitUser.avatar_url = avatar_url
        gitUser.html_url = html_url
        gitUser.location = location
        gitUser.bio = bio
        gitUser.public_repos = public_repos
        gitUser.save()
    }

    def findUser(userName) {
        GitUser gitUser = GitUser.findByLogin(userName)
        return gitUser
    }
}
