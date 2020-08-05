package yalla.assignment

class User {

    String userName
    String avatar_url
    String location
    String bio
    String gitHubId
    String public_repos

    static constraints = {
        userName(nullable: false)
        gitHubId(nullable: false)
        public_repos(nullable: true)
        avatar_url(nullable: true)
        location(nullable: true)
        bio(nullable: true)
        location(nullable: true)
    }
}
