<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 20:48
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Create Card</title>
</head>

<body>
<g:render template="/layouts/navbar"></g:render>
<g:if test="${businessCard}">
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
        <g:link action="deleteCard">Delete</g:link>
</g:if>
<g:else>
    <div class="col-md-12">
    <g:form action="createCard" enctype="multipart/form-data" >
        <div class="form-group">
            <label for="name">${message(code: 'login.username.label', default: 'Name')}</label>
            <g:textField class="form-control" name="name" required="required"/>
        </div>
        <div class="form-group">
            <label for='surname'>${message(code: 'login.password.label', default: 'Surname')}</label>
            <g:textField class="form-control" name="surname" required="required"/>
        </div>

        <div class="form-group">
            <label for='email'>${message(code: 'login.password.label', default: 'Email')}</label>
            <g:field class="form-control" type="email" name="email" required="required"/>
        </div>

        <div class="form-group">
            <label for='company'>${message(code: 'login.password.label', default: 'Company')}</label>
            <g:textField class="form-control" name="company" required="required"/>
        </div>

        <div class="form-group">
            <label for='role'>${message(code: 'login.password.label', default: 'Role')}</label>
            <g:textField class="form-control" name="role" required="required"/>
        </div>

        <div class="form-group">
            <label for='phoneNumber'>${message(code: 'login.password.label', default: 'Phone Number')}</label>
            <g:textField class="form-control" name="phoneNumber" required="required"/>
        </div>

        <div class="form-group">
            <label for='address'>${message(code: 'login.password.label', default: 'Address')}</label>
            <g:textField class="form-control" name="address" required="required"/>
        </div>

        <div class="form-group">
            <label for='bio'>${message(code: 'login.password.label', default: 'Bio')}</label>
            <g:textArea class="form-control" name="bio" required="required"/>
        </div>

        <div class="form-group">
            <label for='linkedin'>${message(code: 'login.password.label', default: 'Linkedin')}</label>
            <g:textField class="form-control" name="linkedin" required="required"/>
        </div>

        <div class="form-group">
            <label for="image"><g:message code="company.logo.label" default="Photo" />:</label>
            <g:textArea class="form-control" name="image" required="required"/>
        </div>

        <div class="ctaLogin">
            <g:submitButton name="submit" class="btn btn-primary" value="Create" />
        </div>

    </g:form>

    </div>
</g:else>
</body>
</html>