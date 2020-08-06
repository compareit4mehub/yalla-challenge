package yalla.assignment

import groovy.json.JsonSlurper

class GituserService implements GituserServiceInterface {
    @Override
    def searchUserName(String userName) {
        Gituser user = null
        try{
            def resultMap = getUserFromAPI(userName)
            if(resultMap != null){
                user = new Gituser()
                user.setName(resultMap["login"])
                user.setLocation(resultMap["location"])
                user.setAvatarImage(resultMap["avatar_url"])
                user.setBio(resultMap["bio"])
                user.setPublicRepo(resultMap["public_repos"])
                user.setId(resultMap["id"])
            }else{
                return new Gituser()
            }

        }catch(Exception e){
            e.printStackTrace()
            connection.disconnect()
        }

        return user
    }

    def getUserFromAPI(String userName){
        def connection = null
        def resultMap = null
        try{
            connection = new URL( "https://api.github.com/users/"+userName ).openConnection() as HttpURLConnection
            connection.setRequestProperty( 'Accept', 'application/json' )
            def result = connection.inputStream
            if(result != null){
                result = result.text
            }
            println connection.responseCode + ": " + result
            connection.disconnect()

            def slurper = new JsonSlurper()
            resultMap = slurper.parseText(result)
        }catch(Exception e){
            connection.disconnect()
        }
        return resultMap
    }
}
