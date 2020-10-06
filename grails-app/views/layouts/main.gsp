<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Home"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <!-- Fontawesome Icon font -->
    <asset:stylesheet src="font-awesome.min.css"/>



    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light navbar-static-top" role="navigation" id="nav">
    <a class="navbar-brand" href="/#"><asset:image src="logo-01.png" alt="yallacompare Logo"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
        </ul>
    </div>

</nav>

<!-- Main Start -->
<main class="site-content">
<g:layoutBody/>
</main>
<!-- Main End -->

<footer>
    <div class="container container-center">
        <p>Copyright &copy; <a href="https://yallacompare.com/" target="_blank">yallacompare.com </a>  <a href="#nav" class="totop">Go Top</a></p>
    </div>
</footer>
<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
