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
                        <g:link action="addHandshake" params="[card: card.id]">
                            <span class="glyphicon glyphicon-option-vertical" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Add"></span>
                        </g:link>
                    </div>
                </div>
            </div>
        </div>
    </g:each>

</body>
</html>