<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <title>User Details</title>
    </head>
    <body>
        <div class="col-md-4 col-md-offset-4 align-center">
            <p style = "color: blue"><u><strong>User Details</strong></u></p>
        </div>
        <br/>
        <br/>
        <div class="col-md-11 col-md-offset-1">
            <form>
                <div class="form-group row">
                    <label for="avatar" class="col-sm-2 col-form-label">Avatar image of the account:</label>
                    <div class="col-sm-10">
                        <g:img uri="$user.userImg" id="avatar" class="img-fluid" alt="Avatar Image"  width="150" height="150"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="location" class="col-sm-2 col-form-label">Location:</label>
                        <div class="col-sm-3">
                            <g:textField class="form-control" name="location" disabled="true" value="${user.location}"/>
                        </div>
                </div>
                <div class="form-group row ">
                    <label for="bio" class="col-sm-2 col-form-label">Bio:</label>
                    <div class="col-sm-6">
                        <g:textArea class="form-control" style= "overflow: scroll" name="bio" disabled="true" value="$user.bio" rows="1" />
                    </div>
                </div>
                <div class="form-group row ">
                    <label for="githubId" class="col-sm-2 col-form-label">Github ID:</label>
                    <div class="col-sm-2">
                        <g:textField class="form-control" name="githubId" disabled="true" value="${user.gitHubId}"/>
                    </div>
                </div>
                <div class="form-group row ">
                    <label for="noOfRepos" class="col-sm-2 col-form-label">The number of public repos owned by the account:</label>
                    <div class="col-sm-1">
                        <g:textField class="form-control" name="noOfRepos" disabled="true" value="${user.public_repos}"/>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>