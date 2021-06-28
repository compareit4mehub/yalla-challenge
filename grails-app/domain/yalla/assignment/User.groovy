package yalla.assignment

class User {
    String name;
    String avatar;
    String location;
    Integer github_id;
    String bio;
    Integer numRepos;

    static constraints = {
        name unique:true
        location nullable:true, blank: true
        bio nullable:true, blank: true
    }

    String toString() {
    name
}
}
