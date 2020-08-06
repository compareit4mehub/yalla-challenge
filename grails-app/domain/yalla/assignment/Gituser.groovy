package yalla.assignment

class Gituser {

    static constraints = {
    }

    String location
    String bio
    Long id
    Long publicRepo
    String name
    String avatarImage

    String getAvatarImage() {
        return avatarImage
    }

    void setAvatarImage(String avatarImage) {
        this.avatarImage = avatarImage
    }

    String getName() {
        return name
    }

    void setName(String name) {
        this.name = name
    }

    String getLocation() {
        return location
    }

    void setLocation(String location) {
        this.location = location
    }

    String getBio() {
        return bio
    }

    void setBio(String bio) {
        this.bio = bio
    }

    Long getId() {
        return id
    }

    void setId(Long id) {
        this.id = id
    }

    Long getPublicRepo() {
        return publicRepo
    }

    void setPublicRepo(Long publicRepo) {
        this.publicRepo = publicRepo
    }
}
