package yalla.assignment

class GithubRepos {


    Integer idRepo
    String nameRepo
    String fullnameRepo
    String avatar_url
    String html_url
    String description
    Date created_at
    Date updated_at
    Integer stargazers_count
    Integer watchers_count
    Integer forks_count
    static belongsTo = [owner: GithubUsers]   // owner id
    //static belongsTo = GithubUsers

    static constraints = {
        idRepo nullable: false, blank:false
        nameRepo nullable: false, blank:false
        fullnameRepo nullable: true
        avatar_url nullable: true
        html_url nullable: true
        description nullable: true
        created_at nullable: true
        updated_at nullable: true
        stargazers_count nullable: true
        watchers_count nullable: true
        forks_count nullable: true

    }

    // grails will use a human-friendly name instead of an id
    // in the scaffolding autogenerated pages
    String toString() {
        return nameRepo
    }
}
