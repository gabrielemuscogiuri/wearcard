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

<div class="col-md-12">
    <h3> <span class="fa fa-hand-spock-o"> </span> Pending Handshakes </h3>
    <hr>
    <g:each in="${cards}" var="card">
        <div class="col-md-3 items-card">
            <div  class="card" style="background:url('../images/avatar/${card.image}');background-size: cover">
                <div class="bottom">
                    <div class="col-md-10">
                        <span class="nome">${card.name} ${card.surname}</span>
                        <br>
                        <span class="ruolo">${card.role}<br> @ ${card.company}</span>
                    </div>
                    <div class="col-md-2 ">
                        <g:link action="addHandshake" params="[card: card.id]" style="position: relative;top: 2em;font-size: 1.5em;">
                            <span class="fa fa-plus" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Accept Handshake"></span>
                        </g:link>
                    </div>
                </div>
            </div>
        </div>
    </g:each>
    <g:if test="${cards.isEmpty()}">
        <p style="text-align: center;margin-top: 5em;font-size: 1.5em;">No Pending Handshakes</p>
    </g:if>

</body>
</html>