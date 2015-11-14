<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 14:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Dashboard</title>
</head>

<body>
<g:render template="/layouts/navbar"></g:render>

<div class="col-md-8">
    <h3>All contacts </h3>
    <hr>
    <div class="col-md-4 card">
        <div class="bottom">
            <div class="col-md-10">
                <span class="nome">Super Trevor</span>
                <br>
                <span class="ruolo">Head of Businesssss <br> @ Google</span>
            </div>
            <div class="col-md-2 ">
                <span class="glyphicon glyphicon-option-vertical" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="More info"></span>
            </div>
        </div>
        <div class="bottom-hover">
            <span class="nome">Super Trevor</span>
            <br>
            <span class="ruolo">Google Inc. / CEO</span>
            <hr>
            <div class="hover-info">
                <i class="fa fa-globe"></i>
                <label>City: </label>
                <span class="city">Torino</span>
                <br>
                <i class="fa fa-phone"></i>
                <label>Number: </label>
                <span class="number">28749821374</span>
                <br>
                <i class="fa fa-envelope-o"></i>
                <label>Email: </label>
                <span class="email">www@fhf.t</span>
                <br>
                <i class="fa fa-user"></i>
                <label>Bio: </label>
                <span class="bio">bio</span>
                <br>
                <i class="fa fa-linkedin"></i>
                <label>Linkedin: </label>
                <span class="linkedin">linkedin</span>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <a class="btn btn-default" id="showall">Mostra tutto</a>
    </div>

</div>
<div class="col-md-4">
    <div class="col-md-12 preferiti">
        <h3>Preferiti </h3>
        <div class="col-md-12">
            <div class="col-md-3 foto"></div>
            <div class="col-md-9 user">
                <span class="nome">Super Trevor</span>
                <br>
                <span class="ruolo">Head of Businesssss / WearApp</span>
                <br>
                <a>quick view</a>
            </div>
        </div>
    </div>
    <div class="col-md-12 nuovi">
        <h3>Nuovi </h3>
        <div class="col-md-12">
            <div class="col-md-3 foto"></div>
            <div class="col-md-9 user">
                <span id="nome">Super Trevor</span>
                <br>
                <span id="ruolo">Head of Businesssss / WearApp</span>
                <br>
                <a>quick view</a>
            </div>
        </div>
    </div>
</div>


</body>
</html>