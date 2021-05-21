<html>
<html>
<head>
    <!--    <meta name="layout" content="main"/>-->
    <title>Github User Retreiver</title>
    <asset:stylesheet src="home.css"/>
</head>
<body>

<div class="jumbotron header-row">
    <h1 class="display-3"><span>Yalla-</span>Chalenge</h1>
    <p class="lead">Github User info Retreiver</p>
    <hr>
    <a class="btn btn-primary btn-lg" id="btn-links" href="/searchUser/" role="button">Search</a>
</div>
<div class="instruction-row jumbotron">
    <h1 id="overview-title">Application Overview</h1>
    <ul>
        <li>Front-end: Html, CSS, and Bootstrap</li>
        <li>Back-end: Grails, Groovy, and Default H2 Database</li>
        <li>Pages: Home and Search</li>
        <li>The main landing page is Homepage ('/' or '/home') which shows the app overview and links to search page</li>
        <li>The search page can be access either through button on homepage or with '\searchUser'</li>
        <li>The search page contains a form with single input(github username) to retreive github user info.</li>
        <li>You can also directly get user info through url ('/searchUser/username')</li>
        <li><em><mark> Defaullt Database is used: ('\h2-console')</mark></em></li>
        <li><em><mark> Default Port is used: 8080</mark></em></li>
        <li><em><mark> Grails latest version is used: 4.0.10</mark></em></li>

    </ul>
    <h1 id="taskOver-title">Task Performed</h1>
    <ul>
        <li>Application's frontend takes input(username) from  the user and sends it to backend</li>
        <li>The Backend check the database if the user with given username exits</li>
        <li>If user found in database, the backend backend sends the results to the frontend</li>
        <li>The frontend display the results accordingly</li>
        <li>If the user is not found in the database, backend calls the github api and stores the output in database</li>
        <li>Then backend sends the same results to the frontend</li>
        <li>The frontend display the results accordingly</li>
    </ul>

</div>

</body>
</html>