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
        <h1><i class="fa fa-link"></i> All contacts </h1>
        <hr>
    </div>

    <g:each in="${handshakes}" var="handshake" status="i">
        <div class="col-md-4 items-card">
            <div  class="card" style="background:url('../images/avatar/${handshake.card.image}');background-size: cover">


                <div class="bottom">
                    <div class="col-md-10">
                        <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                        <br>
                        <span class="ruolo">${handshake.card.role}<br> @ ${handshake.card.company}</span>
                    </div>

                    <div class="col-md-2 ">
                        <g:link action="addToFavourites" params="[handshake: handshake.id]"><i class="fa fa-star"></i></g:link><br>
                        <g:link action="deleteHandshake" params="[handshake: handshake.id]"><i class="fa fa-trash"></i></g:link>
                        <span class="glyphicon glyphicon-option-vertical" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="More info" onclick="slideUpHover('${i}');"></span>
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

    <g:if test="${handshakes.isEmpty()}">
        <p style="text-align: center;margin-top: 6em;">No Cards added yet</p>
    </g:if>
    <g:else test="${handshakes.isEmpty()}">
        <div class="col-md-12 text-center">
            <div class="" id="showall">Carica altri contatti</div>
        </div>
    </g:else>
</div>
<div class="col-md-4">

    <div class="col-md-12 preferiti">
        <h3><i class="fa fa-star"></i> Favourites </h3>
        <g:each in="${favouritesHandshakes}" var="handshake" status="i">
            <hr>
            <div class="col-md-12" style="margin-bottom: 0.5em;">
                <div class="col-md-3 foto" style="background:url('../images/avatar/${handshake.card.image}');background-size: cover"></div>
                <div class="col-md-9 user">
                    <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                    <br>
                    <span class="ruolo">${handshake.card.company} / ${handshake.card.role}</span>
                    <br>
                    <a>quick view</a>
                </div>
            </div>
        </g:each>

        <g:if test="${favouritesHandshakes.isEmpty()}">
            <p style="text-align: center;margin-top: 6em;">No favourites added yet</p>
        </g:if>
    </div>


    <div class="col-md-12 nuovi">
        <h3><i class="fa fa-thumbs-o-up"></i> New </h3>
        <g:each in="${lastHandshakes}" var="handshake">
            <hr>
            <div class="col-md-12" style="margin-bottom: 0.5em;">
                <div class="col-md-3 foto" style="background:url('../images/avatar/${handshake.card.image}');background-size: cover"></div>
                <div class="col-md-9 user">
                    <span class="nome">${handshake.card.name} ${handshake.card.surname}</span>
                    <br>
                    <span class="ruolo">${handshake.card.company} / ${handshake.card.role}</span>
                    <br>
                    <a>quick view</a>
                </div>
            </div>
        </g:each>
        <g:if test="${lastHandshakes.isEmpty()}">
            <p style="text-align: center;margin-top: 6em;">No Cards added yet</p>
        </g:if>
    </div>

</div>
<g:link controller="handshake" action="index">
    <button class="fluid-button" data-toggle="tooltip" data-placement="left" title="Lista d'attesa utenti">
            <i class="fa fa-plus" ></i>
    </button>
</g:link>


</body>
</html>