<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ attribute name="name" required="true" rtexprvalue="true"
              description="Nombre de la propiedad correspondiente como objeto bean" %>
<%@ attribute name="label" required="true" rtexprvalue="true"
              description="La etiqueta aparece en color rojo si la entrada es considerada como inválida después de enviarse" %>
<%@ attribute name="names" required="true" rtexprvalue="true" type="java.util.List"
              description="Nombres en la lista" %>
<%@ attribute name="size" required="true" rtexprvalue="true"
              description="Tamaño del Select" %>

<spring:bind path="${name}">
    <c:set var="cssGroup" value="form-group ${status.error ? 'error' : '' }"/>
    <c:set var="valid" value="${not status.error and not empty status.actualValue}"/>
    <div class="${cssGroup}">
        <label class="col-sm-2 control-label">${label}</label>

        <div class="col-sm-10">
            <form:select class="form-control" path="${name}" items="${names}" size="${size}"/>
            <c:if test="${valid}">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            </c:if>
            <c:if test="${status.error}">
                <span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>
                <span class="help-inline">${status.errorMessage}</span>
            </c:if>
        </div>
    </div>
</spring:bind>