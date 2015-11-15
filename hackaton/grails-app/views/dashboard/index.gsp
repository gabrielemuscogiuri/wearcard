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

<body id="dashboard">
<g:render template="/layouts/navbar"></g:render>

<div class="col-md-8">
    <div class="col-md-12">
        <h1>All contacts </h1>
        <hr>
    </div>

    <g:each in="${handshakes}" var="handshake">
        <div class="col-md-4 items-card">
            <div  class="card" style="background:url('../images/avatar/${handshake.card.image}');background-size: cover">


                <div class="bottom">
                    <div class="col-md-10">
                        <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                        <br>
                        <span class="ruolo">${handshake.card.role}<br> @ ${handshake.card.company}</span>
                    </div>
                    <div class="col-md-2 ">
                        <span class="glyphicon glyphicon-option-vertical" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="More info" onclick="slideUpHover('${handshake.card.id}');"></span>
                    </div>
                </div>
                <div class="bottom-hover">
                    <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                    <br>
                    <span class="ruolo">${handshake.card.company} / ${handshake.card.role}</span>
                    <hr>
                    <div class="hover-info">
                        <i class="fa fa-globe"></i>
                        <label>City: </label>
                        <span class="city">${handshake.card.address}</span>
                        <br>
                        <i class="fa fa-phone"></i>
                        <label>Number: </label>
                        <span class="number">${handshake.card.phoneNumber}</span>
                        <br>
                        <i class="fa fa-envelope-o"></i>
                        <label>Email: </label>
                        <span class="email">${handshake.card.email}</span>
                        <br>
                        <i class="fa fa-user"></i>
                        <label>Bio: </label>
                        <span class="bio">${handshake.card.bio}</span>
                        <br>
                        <i class="fa fa-linkedin"></i>
                        <label>Linkedin: </label>
                        <span class="linkedin">${handshake.card.linkedin}</span>
                    </div>
                </div>
            </div>
        </div>
    </g:each>


    <div class="col-md-12 text-center">
        <div class="" id="showall">Carica altri contatti</div>
    </div>

</div>
<div class="col-md-4">

<g:each in="${handshakes}" var="handshake" status="i">
    <g:if test="${handshake.favourite && i < 4}">
        <div class="col-md-12 preferiti">
            <h3>Preferiti </h3>
            <hr>
            <div class="col-md-12 items">
                <div class="col-md-3 foto"></div>
                <div class="col-md-9 user">
                    <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                    <br>
                    <span class="ruolo">${handshake.card.company} / ${handshake.card.role}</span>
                    <br>
                    <a>quick view</a>
                </div>
            </div>
        </div>
    </g:if>
</g:each>

<g:each in="${lastHandshakes}" var="handshake">
    <div class="col-md-12 nuovi">
        <h3>Nuovi </h3>
        <hr>
        <div class="col-md-12 items">
            <div class="col-md-3 foto"></div>
            <div class="col-md-9 user">
                <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                <br>
                <span class="ruolo">${handshake.card.company} / ${handshake.card.role}</span>
                <br>
                <a>quick view</a>
            </div>
        </div>
    </div>
</g:each>
</div>

<button class="fluid-button" data-toggle="tooltip" data-placement="left" title="Lista d'attesa utenti">
    <i class="fa fa-plus" ></i>
</button>


</body>
</html>

