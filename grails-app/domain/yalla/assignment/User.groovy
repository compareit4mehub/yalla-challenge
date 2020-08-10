package yalla.assignment

class User {

    String userName
    String avatar_image_url
    String location
    String bio
    String gitHubId
    String public_repos

    static constraints = {
        userName nullable: false, blank:false
        avatar_image_url nullable: true
        location nullable: true
        bio nullable: true
        gitHubId nullable: false, blank: false
        public_repos nullable: true
    }

    String toString(){
        userName
    }
}
