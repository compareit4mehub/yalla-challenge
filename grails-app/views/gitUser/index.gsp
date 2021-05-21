<html>
<html>
<head>
    <!--    <meta name="layout" content="main"/>-->
    <title>Github User Retreiver</title>
    <asset:stylesheet src="gitUser.css"/>
</head>
<body>

<div class="jumbotron search-box">
    <h1 class="display-4">Retreive GitHub User Info.</h1>
    <form class="inp" id="gituser-form" action="/searchUser/">
        <div class="input-box">
            <div class="search">
                <asset:image src="search.svg"/>
                <!-- <img id="search-icon" src="http://www.myiconfinder.com/uploads/iconsets/48-48-8ead764cf64f40c8c3ea18f079ef95ef-search.png" alt="search icon"/> -->
            </div>
            <input type="text" placeholder="Enter GitHub Username" name="username" id="gituser" value="${userlogin}"
                   required/>
        </div>
        <button type="submit" id="btn-links" class="getuserbtn btn-lg">Search</button>
    </form>
</div>

<g:if test="${message}">
    <div class="container error-container">
        <div class="error-box">
            <h3>Error</h3>
            <p>${message}</p>
        </div>
    </div>
</g:if>

<g:if test="${userid}">
    <div class="result">
        <h1 class="display-4"><span>${username}</span> GitHub Account Info.</h1>
        <fieldset>
            <legend><img src="${userimg}" class="account_img" alt="...">
            </legend>
            <h5 id="result_login">${userlogin}</h5>
            <p id="result_bio">${userbio}</p>
            <div class="user-info">
                <p>GitHub ID: <span id="info-values">${userid}</span> </p>
                <p>Public Repos: <span id="info-values">${userrepos}</span></p>
                <p>Location: <span id="info-values">${userloc}</span></p>
            </div>
            <div class="btn_row">
                <a class="btn btn-primary btn-lg" id="btn-links" href="${userProfileUrl}" target="_blank" role="button">Visit Profile</a>
            </div>
        </fieldset>
    </div>
</g:if>

</body>
</html>