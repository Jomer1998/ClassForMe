<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="classforme" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ attribute name="name" required="true" rtexprvalue="true"
	description="Nombre del menú activo: inicio, buscar_profesor, registro_profesores o registro_alumnos"%>

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="<spring:url value="/" htmlEscape="true" />"><span></span></a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#main-navbar">
				<span class="sr-only"><os-p>Toggle navigation</os-p></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse" id="main-navbar">
			<ul class="nav navbar-nav">

				<classforme:menuItem active="${name eq 'inicio'}" url="/"
					title="pagina de inicio">
					<span>Inicio</span>
				</classforme:menuItem>

				<classforme:menuItem active="${name eq 'buscar_profesor'}" url="/profesores/buscar"
					title="buscar profesores">
					<span>Buscar profesores</span>
				</classforme:menuItem>

				<classforme:menuItem active="${name eq 'registro_profesores'}" url="/profesores/new"
					title="registro de profesores">
					<span>Registro de profesores</span>
				</classforme:menuItem>

				<classforme:menuItem active="${name eq 'registro_alumnos'}" url="/alumnos/new"
					title="registro de alumnos">
					<span>Registro de alumnos</span>
				</classforme:menuItem>

			</ul>




			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="!isAuthenticated()">
					<classforme:menuItem active="${name eq 'iniciar_sesion'}" url="/login"
						title="iniciar sesion">
						<span>Iniciar sesión</span>
					</classforme:menuItem>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">	<!-- TODO (A especificar según tipos de usuario) -->
				
					<classforme:menuItem active="${name eq 'editar_perfil'}" url="/edit"
						title="editar perfil">
						<span>Editar perfil</span>
					</classforme:menuItem>
					
					<classforme:menuItem active="${name eq 'cerrar_sesion'}" url="/logout"
						title="cerrar sesion">
						<span>Cerrar sesión</span>
					</classforme:menuItem>
					
				</sec:authorize>
			</ul>
		</div>



	</div>
</nav>