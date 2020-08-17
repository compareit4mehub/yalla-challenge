<html>
    <head>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Github Search Page</title>
        <asset:stylesheet src="formData.css"/>
    </head>
    <body>
        <div class= "header">
            <h1>
               GitHub Search Page
            </h1>
        </div>
        <div class="svg" role="presentation" id= "gitlogo">
            <div class="grails-logo-container">
                <img src="/assets/github.png" class="grails-logo"/>
            </div>
        </div>
        <div id="content" role="main" style="overflow:scroll">
            <div class="menu">
                <a href="https://github.com/login" target="_blank">Sign In </a>
                <a href= "https://github.com/join?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home" target="_blank">Sign Up </a>
             </div>

            <div class="main">
                <br/>
                <div class="col-sm-11 col-md-offset-1">
                    <g:form class="form-inline" name="form" controller="user" id="form">
                        <label style= "text-align: right; color: black" for="userName" class="col-sm-3 col-form-label">Enter user Name:</label>
                        <div class="form-group mx-sm-3 mb-2">
                            <g:textField class="form-control" name="userName" id ="userName" value="${id}" title = "Enter Github UserName and it is a required field" placeholder="Enter Github UserName" onkeyup ="ValidateButton()" autocomplete="off" required = "true"/>
                        </div>

                        <g:actionSubmit class="btn btn-primary mb-2" id="searchButton" disabled = "true" value="Find Now" action="search"/>
                    </g:form>

                    <br/>
                </div>
                <div class="col-sm-11 col-md-offset-1" id="errorBlock">
                    <span style="color:red; text-align:right"><i class="fa fa-warning"></i> Enter a valid userName</span>
                </div>
            </div>
            <div class="right">
                <h4 style ="color: red">Notes: </h4>
                <ul>
                    <li>The search field is a mandatory field.</li>
                    <li>Enter valid github user Name to view all the information.</li>
                </ul>
            </div>
            <div class="footer">
                <p style="text-align:center">@Copyright 2020</p>
                <a href= "https://github.com" target="_blank"><span style= "position: absolute; bottom: 0; right: 0; width: 100px; text-align:right;">github.com</span></a>
            </div>
        <div>
        <script>
            function ValidateButton(){
                var inputText = document.getElementById("userName").value.trim(),
                    searchButton = document.getElementById("searchButton"),
                    regExpr = /^[a-zA-Z0-9](.*[a-zA-Z0-9])?$/,
                    errorBlock = document.getElementById("errorBlock");

                if(inputText.length != 0){
                    if(!regExpr.test(inputText)){
                        searchButton.disabled =true;
                        errorBlock.style.display = "block";
                    }else{
                        searchButton.removeAttribute('disabled');
                        errorBlock.style.display = "none";
                    }
                }else{
                    searchButton.disabled =true;
                    errorBlock.style.display = "none";
                }
            }
            window.onload = ValidateButton;
        </script>
    </body>
</html>