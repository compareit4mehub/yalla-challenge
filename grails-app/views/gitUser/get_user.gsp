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

<div class="container">
    <form id="gituser-form" action="/github/">
        <div class="row">
            <div class="col-25">
                <label for="gituser"><b>GitHub Username: </b></label>
            </div>
            <div class="col-75">
                <div class="col-75">
                    <input type="text" placeholder="Enter Username" name="username" id="gituser" value="${username}" required>
                </div>
                <div class="col-25">
                    <input type="submit" class="getuserbtn" value="Search"/>
                </div>
            </div>
        </div>
    </form>
    <g:if test="${error}">
        <div class="row">
            <div class="col-25">
            </div>
            <div class="col-75">
                <div class="error-box">
                    <p>ERROR: ${error}</p>
                </div>
            </div>
        </div>
    </g:if>
    <div class="row">
        <div class="col-25">
        </div>
        <div class="col-75">
            <div style="width: 100%; height: 100%; display: block;">
                <g:if test="${userimg}">
                    <img src="${userimg}" id="imgresult" class="user-image"/>
                </g:if>
                <g:else>
                    <div class="empty-image user-image">
                    </div>
                </g:else>
        </div>
    </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label><b>ID:</b></label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" readonly value="${userid}">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label><b>Public Repos:</b></label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" readonly value="${userrepos}">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label><b>Location:</b></label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" readonly value="${userloc}">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label><b>Bio:</b></label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="subject" style="height:200px" readonly>${userbio}</textarea>
      </div>
    </div>
</div>

</body>
</html>