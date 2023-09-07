<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="classforme" tagdir="/WEB-INF/tags" %>

<%@ attribute name="menuName" required="true" rtexprvalue="true"
              description="Nombre del menú activo: inicio, buscar_profesor, registro_profesores o registro_alumnos" %>

<classforme:menu name="${menuName}"/>