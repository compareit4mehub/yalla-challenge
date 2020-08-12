<html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Github User Retreiver</title>
    <asset:stylesheet src="formdata.css"/>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Github User Retreiver</h1>
    </section>
</div>
<form id="gituser-form" action="/github/">
    <div>
        <label for="gituser"><b>GitHub Username: </b></label>
        <input type="text" placeholder="Enter Username" name="username" id="gituser" value="${username}" required>
        <button type="submit" class="getuserbtn">Search</button>
    </div>
</form>

<div id="gituser-results">
    <ul>
        <div style="width: 100%; height: 100%; display: block;">
            <img src="${userimg}" id="imgresult"/>
        </div>
    </ul>
    <ul>
        <label><b>Username: </b></label>
        <input type="text" id="userresult" readonly class="readonly-button" value="${username}">
        <label><b>ID: </b></label>
        <input type="text" id="idresult" readonly class="readonly-button" value="${userid}">        
    </ul>
    <ul>
        <label><b>Public Repos: </b></label>
        <input type="text" id="reposresult" readonly class="readonly-button" value="${userrepos}">
        <label><b>Location: </b></label>
        <input type="text" id="locresult" readonly class="readonly-button" value="${userloc}">        
    </ul>
    <ul>
        <label><b>Bio: </b></label>
    </ul>
    <ul>
        <textarea type="text" id="biobox" readonly class="readonly-button">${userbio}</textarea>
    </ul>
</div>

<g:if test="${error}">
<div class="error-box">
    <p>ERROR: ${error}</p>
</div>
</g:if>

</body>
</html>