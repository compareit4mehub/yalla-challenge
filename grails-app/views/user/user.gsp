<html>
    <head>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <asset:javascript src='jquery-3.3.1.min.js'/>
        <title>User Info Page</title>
        <asset:stylesheet src="formData.css"/>
    </head>
    <body>
        <div class="header">
            <h1>
                GitHub User Details Page
            </h1>
        </div>
        <div id="content" role="main" style="overflow:scroll">
            <div class="menu">
                <a href="https://github.com/login" target="_blank">Sign-in to edit user details</a>
                <a href="../index">Back to search Page</a>
            </div>
            <div class="main">
                <br/>
                <h3 style = "background: #0088cc; color:white">User Details
                    <i class="fa fa-minus-circle" aria-hidden="true" id= "minusIcon" onclick= "toggleMainBlock()" title = "click to hide or display information"></i>
                </h3>
                <div class="col-lg-11 col-lg-offset-1" id= "mainBlock">
                    <form>
                        <div class="form-group row">
                            <label for="avatar" class="col-lg-6 col-form-label">User Name:</label>
                            <div class="col-lg-6">
                                <g:textField class="form-control" name="userName" disabled="true" value="${user.userName}"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="avatar" class="col-lg-6 col-form-label">Avatar image of the account:</label>
                            <div class="col-lg-6">
                                <g:img uri="$user.userImg" id="avatar" class="img-fluid" alt="Avatar Image"  width="150" height="150"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="location" class="col-lg-6 col-form-label">Location:</label>
                            <g:if test="${user.location == ""}">
                                <div class="col-lg-6">
                                    <g:textField class="form-control" name="location" disabled="true" style= "color: red" value="Not Available"/>
                                </div>
                            </g:if>
                            <g:else>
                                 <div class="col-lg-6">
                                    <g:textField class="form-control" name="location" disabled="true" value="${user.location}"/>
                                  </div>
                            </g:else>
                        </div>
                        <div class="form-group row">
                            <label for="bio" class="col-lg-6 col-form-label">Bio:</label>
                            <g:if test="${user.bio == ""}">
                                <div class="col-lg-6">
                                    <g:textArea class="form-control" style= "overflow: scroll" name="bio" disabled="true" style= "color:red" value="Not Available" rows="1" />
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-lg-6">
                                    <g:textArea class="form-control" style= "overflow: scroll" name="bio" disabled="true" value="$user.bio" rows="1" />
                                </div>
                            </g:else>
                        </div>
                        <div class="form-group row">
                            <label for="githubId" class="col-lg-6 col-form-label">Github ID:</label>
                            <div class="col-lg-6">
                                <g:textField class="form-control" name="githubId" disabled="true" value="${user.gitHubId}"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="noOfRepos" class="col-lg-6 col-form-label">The number of public repos owned by the account:</label>
                            <div class="col-lg-6">
                                <g:textField class="form-control" name="noOfRepos" disabled="true" value="${user.public_repos}"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="right">
                <h4 style ="color: red">Notes: </h4>
                <ul>
                    <li>In order to edit user information please click on the sign-in to edit user details link.</li>
                    <li>Once the user information is changed clear the browse history and
                        reload the page to view the latest information.</li>
                    <li> In order to make a new search go to search page by clicking on the back to search Page link</li>
                </ul>
            </div>
            <div class="footer">
                <p style="text-align:center">@Copyright 2020</p>
                <a href= "https://github.com" target="_blank"><span style= "position: absolute; bottom: 0; right: 0; width: 100px; text-align:right;">github.com</span></a>
            </div>
            <script>
                function toggleMainBlock() {
                    $("#mainBlock").toggle();
                    $("#minusIcon").toggleClass('fa-minus-circle fa-plus-circle');
                }
            </script>
        </div>
    </body>
</html>