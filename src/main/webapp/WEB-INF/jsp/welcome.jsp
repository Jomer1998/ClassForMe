<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="classforme" tagdir="/WEB-INF/tags" %>

<classforme:layout pageName="home">

    <h2><fmt:message key="welcome"/></h2>
    <div class="row">
        <div class="col-md-6">
            <spring:url value="/resources/images/home-video.mp4" htmlEscape="true" var="tutorialVideo"/>
            <video width="480" height="270" class="video-responsive" autoplay loop muted>
            	<source src="${tutorialVideo}" type="video/mp4">
            </video>
        </div>
        <div class="col-md-6">
        	<p>Bienvenidos a ClassForMe, una nueva plataforma para facilitar la búsqueda y oferta de clases particulares entre alumnos y profesores atendiendo al nivel educativo, modalidad de clases, zona, rama de conocimiento...</p>
        	<p>Prueba a <a href="<spring:url value="/profesores/buscar" htmlEscape="true" />" title="buscar profesores">buscar profesores</a>. O si lo prefieres, <a href="<spring:url value="/login" htmlEscape="true" />" title="iniciar sesion">inicia sesión</a> o acccede al registro para <a href="<spring:url value="/alumnos/new" htmlEscape="true" />" title="registro de alumnos">alumnos</a> o <a href="<spring:url value="/profesores/new" htmlEscape="true" />" title="registro de profesores">profesores</a>.</p>
        </div>
    </div>
</classforme:layout>