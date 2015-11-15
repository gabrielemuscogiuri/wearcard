<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 15/11/15
  Time: 10:02
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Dashboard</title>
</head>

<body id="dashboard">
<g:render template="/layouts/navbar"></g:render>

<div class="col-md-8">
    <h3>All contacts </h3>
    <hr>
    <g:each in="${cards}" var="card">
        <div class="col-md-4 items-card">
            <div  class="card" style="background:url('../images/avatar/${card.image}');background-size: cover">


                <div class="bottom">
                    <div class="col-md-10">
                        <span class="nome">${card.name} ${card.surname}</span>
                        <br>
                        <span class="ruolo">${card.role}<br> @ ${card.company}</span>
                    </div>
                    <div class="col-md-2 ">
                        <span class="glyphicon glyphicon-option-vertical" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="More info" onclick="slideUpHover('${card.id}');"></span>
                    </div>
                </div>
                <div class="bottom-hover">
                    <span class="nome">${card.name} ${card.surname}</span>
                    <br>
                    <span class="ruolo">${card.company} / ${card.role}</span>
                    <hr>
                    <div class="hover-info">
                        <i class="fa fa-globe"></i>
                        <label>City: </label>
                        <span class="city">${card.address}</span>
                        <br>
                        <i class="fa fa-phone"></i>
                        <label>Number: </label>
                        <span class="number">${card.phoneNumber}</span>
                        <br>
                        <i class="fa fa-envelope-o"></i>
                        <label>Email: </label>
                        <span class="email">${card.email}</span>
                        <br>
                        <i class="fa fa-user"></i>
                        <label>Bio: </label>
                        <span class="bio">${card.bio}</span>
                        <br>
                        <i class="fa fa-linkedin"></i>
                        <label>Linkedin: </label>
                        <span class="linkedin">${card.linkedin}</span>
                    </div>
                </div>
            </div>
        </div>
    </g:each>

</body>
</html>