package yalla.assignment

class User {

    String userName
    String avatarUrl
    String location
    String bio
    String gitId
    String publicRepos

//username
    String getUserName() {
        return userName
    }
    void setUserName(String userName) {
        this.userName = userName
    }
//image
    String getAvatarUrl() {
        return avatarUrl
    }
    void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl
    }
//location
    String getLocation() {
        return location
    }
    void setLocation(String location) {
        this.location = location == null ? "" : location
    }
//bio
    String getBio() {
        return bio
    }
    void setBio(String bio) {
        this.bio = bio == null ? "" : bio
    }
//ID
    String getGitId() {
        return gitId
    }
    void setGitId(String gitId) {
        this.gitId = gitId
    }
//public repos
    String getPublicRepos() {
        return publicRepos
    }
    void setPublicRepos(String publicRepos) {
        this.publicRepos = publicRepos
    }
}