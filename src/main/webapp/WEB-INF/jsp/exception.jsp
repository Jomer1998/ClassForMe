<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="classforme" tagdir="/WEB-INF/tags" %>

<classforme:layout pageName="error">

    <spring:url value="/resources/images/oops.png" var="failImage"/>
    <img src="${failImage}" width="250" height="250"/>

    <h2>Something happened...</h2>

    <p>${exception.message}</p>

</classforme:layout>