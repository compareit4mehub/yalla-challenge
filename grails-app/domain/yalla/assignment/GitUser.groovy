package yalla.assignment
// Console moved from dbconsole to h2-console
class GitUser {

    String user_name
    long user_id
    String user_avatar_url
    String user_bio
    String user_location
    int user_pub_repos
    static constraints = {
        user_name nullable: false
        user_id nullable: false
        user_avatar_url nullable: false
        user_bio nullable: true
        user_location nullable: true
        user_pub_repos nullable: false
    }
}
