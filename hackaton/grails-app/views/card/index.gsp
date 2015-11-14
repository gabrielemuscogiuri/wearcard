<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 20:48
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Card</title>
</head>

<body>

<g:form action="createCard" enctype="multipart/form-data" >

    <p>
        <label for="name" class="label">${message(code: 'login.username.label', default: 'Nome')}</label>
        <g:textField name="name" required="required"/>
    </p>
    <p>
        <label for='surname' class="label">${message(code: 'login.password.label', default: 'Cognome')}</label>
        <g:textField name="surname" required="required"/>
    </p>

    <p>
        <label for='email' class="label">${message(code: 'login.password.label', default: 'Email')}</label>
        <g:field type="email" name="email" required="required"/>
    </p>

    <p>
        <label for='phoneNumber' class="label">${message(code: 'login.password.label', default: 'Numero di telefono')}</label>
        <g:textField name="phoneNumber" required="required"/>
    </p>

    <p>
        <label for='address' class="label">${message(code: 'login.password.label', default: 'Indirizzo')}</label>
        <g:textField name="address" required="required"/>
    </p>

    <p>
        <label for='bio' class="label">${message(code: 'login.password.label', default: 'Biografia')}</label>
        <g:textArea name="bio" required="required"/>
    </p>

    <p>
        <label for="image"><g:message code="company.logo.label" default="Foto" />:</label>
        <g:textArea name="image" required="required"/>
    </p>

    <div class="ctaLogin">
        <g:submitButton name="submit" class="btn-green btn big" value="Crea" />
    </div>

</g:form>

</body>
</html>