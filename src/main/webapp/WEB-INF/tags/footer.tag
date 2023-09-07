<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%-- Ubicado al final del documento para que las páginas carguen más rápido --%>
<spring:url value="/webjars/jquery/2.2.4/jquery.min.js" var="jQuery"/>
<script src="${jQuery}"></script>

<%-- El archivo jquery-ui.js es realmente grande, por lo que cargamos solo lo necesario --%>
<spring:url value="/webjars/jquery-ui/1.11.4/jquery-ui.min.js" var="jQueryUiCore"/>
<script src="${jQueryUiCore}"></script>

<%-- Bootstrap --%>
<spring:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
