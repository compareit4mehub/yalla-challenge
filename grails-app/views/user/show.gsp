<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="application.css"/>

    </head>
    <body >
        <div id="list" class="content scaffold-list container">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="row d-flex justify-content-center mt-10">
                
                <g:if test="${user}"> 
                <div class="card" style="width: 25rem;">
                        <h5 class="card-title align-center">Account Info</h5>
                        <img class="card-img-top" src=${user.avatar} alt="Card image cap">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Github ID: ${user.github_id}</li>
                            <li class="list-group-item">Bio: ${user.bio}</li>
                            <li class="list-group-item">Location: ${user.location}</li>
                            <li class="list-group-item">Repositories: ${user.numRepos}</li>
                        </ul>
                    </div>

                </g:if>
                <g:else>
                    No Data found. 
                </g:else>
            <div/>

            
        <asset:javascript src="jquery-3.3.1.min.js"/>
        <asset:javascript src="bootstrap.bundle.min.js"/>
        <asset:javascript src="application.js"/>
    </body>
</html>
