<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%--
ClassForMe :: Proyecto de TFG desarrollado con Spring Boot
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <spring:url value="/resources/images/favicon.png" var="favicon"/>
    <link rel="shortcut icon" type="image/x-icon" href="${favicon}">

    <title>ClassForMe :: Proyecto de TFG desarrollado con Spring Boot</title>

    <%-- CSS generado a partir de LESS --%>
    <spring:url value="/resources/css/classforme.css" var="classformeCss"/>
    <link href="${classformeCss}" rel="stylesheet" type="text/css"/>


    <%-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Solo se utiliza datepicker -->
    <spring:url value="/webjars/jquery-ui/1.13.2/jquery-ui.min.css" var="jQueryUiCss"/>
    <link href="${jQueryUiCss}" rel="stylesheet" type="text/css"/>
    <spring:url value="/webjars/jquery-ui/1.13.2/jquery-ui.theme.min.css" var="jQueryUiThemeCss"/>
    <link href="${jQueryUiThemeCss}" rel="stylesheet" type="text/css"/>
</head>