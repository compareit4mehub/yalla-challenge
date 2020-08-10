package yalla.assignment

/**
 *  Here it is the business model where it gets mapped to the tables using GornEntity.
 *  Here it would have all the access to the CRUD(create, Retrieve, Update and Delete) operations.
 * */

class User {

    String userName
    String userImg
    String location
    String bio
    String gitHubId
    String public_repos

    //getters and setters

    String getUserName() {
        return userName
    }

    void setUserName(String userName) {
        this.userName = userName
    }

    String getUserImg() {
        return userImg
    }

    void setUserImg(String userImg) {
        this.userImg = userImg
    }

    String getLocation() {
        return location
    }

    void setLocation(String location) {
        this.location = location == null ? "" : location
    }

    String getBio() {
        return bio
    }

    void setBio(String bio) {
        this.bio = bio == null ? "" : bio
    }

    String getGitHubId() {
        return gitHubId
    }

    void setGitHubId(String gitHubId) {
        this.gitHubId = gitHubId
    }

    String getPublic_repos() {
        return public_repos
    }

    void setPublic_repos(String public_repos) {
        this.public_repos = public_repos
    }
}
