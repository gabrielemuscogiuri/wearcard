<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 20:48
  C'è un BBBUUUUUGGG
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Create Card</title>
</head>

<body>
<g:render template="/layouts/navbar"></g:render>

<div class="col-md-12 card-personale">
    <div class="col-md-12 jumbotron">
        <div class="col-md-4">
            Foto
        </div>
        <div class="col-md-8">
            <div class="col-md-12">
                <span>Gabriele Muscogiuri</span>
                <br>
                <span>Web Designer / Wearcard</span>
                <p>Bio</p>
                <span>email</span>
                <span>number</span>
                <span>city</span>
            </div>
        </div>
    </div>
</div>
<div class="col-md-12">
<g:form action="createCard" enctype="multipart/form-data" >
    <div class="form-group">
        <label for="name">${message(code: 'login.username.label', default: 'Nome')}</label>
        <g:textField class="form-control" name="name" required="required"/>
    </div>
    <div class="form-group">
        <label for='surname'>${message(code: 'login.password.label', default: 'Cognome')}</label>
        <g:textField class="form-control" name="surname" required="required"/>
    </div>

    <div class="form-group">
        <label for='email'>${message(code: 'login.password.label', default: 'Email')}</label>
        <g:field class="form-control" type="email" name="email" required="required"/>
    </div>

    <div class="form-group">
        <label for='phoneNumber'>${message(code: 'login.password.label', default: 'Numero di telefono')}</label>
        <g:textField class="form-control" name="phoneNumber" required="required"/>
    </div>

    <div class="form-group">
        <label for='address'>${message(code: 'login.password.label', default: 'Indirizzo')}</label>
        <g:textField class="form-control" name="address" required="required"/>
    </div>

    <div class="form-group">
        <label for='bio'>${message(code: 'login.password.label', default: 'Biografia')}</label>
        <g:textArea class="form-control" name="bio" required="required"/>
    </div>

    <div class="form-group">
        <label for="image"><g:message code="company.logo.label" default="Foto" />:</label>
        <g:textArea class="form-control" name="image" required="required"/>
    </div>

    <div class="ctaLogin">
        <g:submitButton name="submit" class="btn btn-primary" value="Crea" />
    </div>

</g:form>

</div>
</body>
</html>