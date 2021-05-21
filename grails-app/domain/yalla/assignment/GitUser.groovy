package yalla.assignment

class GitUser {
    String login
    Long id
    String avatar_url
    String html_url
    String name
    String location
    String bio
    Integer public_repos

    static constraints = {
        login nullable: false
        avatar_url nullable: false
        html_url nullable: false
        name nullable: false
        id nullable: false
        location nullable: true
        bio nullable: true
        public_repos nullable: true
    }

    String toString(){
        name
    }
}
