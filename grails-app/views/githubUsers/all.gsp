<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main"/>
  <title>All Local Accounts</title>
</head>
<body>

<!-- Nav content Start -->
<content tag="nav" class="tc-link-effect2 text-right">
  <li class="dropdown">
    <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="Home" action="index">Home</g:link>
  </li>
  <li class="dropdown">
    <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="index">Search</g:link>
  </li>
  <li class="dropdown">
    <g:link class="tcb-nav-menu tcb-primary active"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="loadLocalUser">Saved Users</g:link>
  </li>

</content>
<!-- Nav content End -->



<!-- Header Start -->
<header class="header sec-color bg-img2" id="header" >
  <div class="container sec-spacer text-center">
    <h1>Github Local Accounts </h1>
    <h3>All saved accounts</h3>
  </div>
</header>
<!-- Header End -->




<!-- Github Accounts End Start -->
<section class="sec-spacer">
  <div class="container">

    <h3 class="title text-center">${totalUsers} GITHUB ACCOUNT<g:if test="${totalUsers > 0}">S</g:if> FOUND</h3>

    <div class="spacer3"></div>

  <div class="row">
<g:each in="${usersList}" var="user" status="i">








    <div class="col-md-3 col-sm-6" style="padding-bottom: 20px;">
      <div class="tc-member-style1 member-light">
        <div class="member-photo">
          <g:img uri="$user.avatar_url"/>
          <div class="member-icons">
            <a href="#" title="tumblr" class="member-icon" style="color: white;">
            <i class="fa fa-user"></i>${user.githubId}
          </a>
          </div>
        </div>
        <div class="member-info">
          <g:link controller="GithubUsers" action="findUser" params="[userName: user.userName]">
            <h3 class="member-name">${user.githubName}</h3>
          </g:link>
          <span class="member-role">${user.type}</span>
        </div>
      </div>
    </div>
  <div class="spacer3"></div>
</g:each>
  </div>
  </div>
</section>
<!-- Github Accounts End -->







</body>
</html>