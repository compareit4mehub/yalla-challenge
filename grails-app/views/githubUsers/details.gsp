<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main"/>
  <title>Github Account Information</title>
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
    <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="loadLocalUser">Saved Users</g:link>
  </li>

</content>
<!-- Nav content End -->


<!-- Header Start -->
<header class="header sec-color bg-img2" id="header" >
  <div class="container sec-spacer text-center">
    <h1>Github Account Information</h1>
    <h3>${user.githubName}</h3>
  </div>
</header>
<!-- Header End -->



<!-- Github Account Information Start -->
<section class="sec-spacer">
  <div class="container container-center">
    <h3 class="title text-center">${user.githubName.toUpperCase()} GITHUB ACCOUNT</h3>
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="tc-account-style2">
          <div class="account-desc">
            <p>
              "${user.githubBio}"
            </p>
          </div>
          <div class="account-photo">

            <g:img uri="$user.avatar_url" id="avatar" class="img-fluid" alt="Avatar Image"  width="160" height="160"/>
          </div>
          <div class="account-info">
            <span class="name"><a href="${user.html_url}">${user.userName}</a></span>
            <div class="position">
              <span class="meta">The github ID</span> - <a href="${user.html_url}">${user.githubId}</a>
            </div>
            <div class="position">
              <span class="meta">@</span>  <a href="https://www.google.com/maps/place/${user.location}">${user.location}</a>
            </div>
            <div class="position">
              <span class="meta">${user.public_repos}</span> public repos.
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Github Account Information  End -->

</body>
</html>