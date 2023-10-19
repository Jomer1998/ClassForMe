package com.tfg.classforme.clase;

import java.time.LocalDate;
import java.time.LocalTime;

//import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.checkerframework.common.value.qual.IntRange;
import org.springframework.format.annotation.DateTimeFormat;

import com.tfg.classforme.alumno.Alumno;
import com.tfg.classforme.model.BaseEntity;
import com.tfg.classforme.profesor.Profesor;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "clases")
@Getter
@Setter
public class Clase extends BaseEntity {

	@ManyToOne(optional = false)
	@JoinColumn(name = "alumno_id")
	@NotNull
	private Alumno alumno;
	
	@ManyToOne(optional = false)
	private Profesor profesor;
	
	@Column(name = "fecha")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	LocalDate fecha;
	
	@Column(name = "hora_inicio")
	@DateTimeFormat(pattern = "HH:mm")
	LocalTime horaInicio;
	
	@Column(name = "hora_fin")
	@DateTimeFormat(pattern = "HH:mm")
	LocalTime horaFin;
	
	@Column(name = "asignaturas")
	@NotEmpty
	String asignaturas;
	
	@Column(name = "lugar")
	@NotEmpty
	String lugar;
	
	@Column(name = "comentarios_adicionales")
	@NotEmpty
	String comentariosAdicionales;
	
	@ManyToOne
	@JoinColumn(name = "estado_solicitud_id")
	EstadoSolicitud estadoSolicitud;
	
	@Column(name = "razon_estado")
	String razonEstado;
	
	@Column(name = "valoracion")
	@IntRange(from = 1, to = 10)
	Integer valoracion;
	
	@Override
	public String toString() {
		return "Clase [alumno=" + this.getAlumno().getNombre() + ", profesor=" + this.getProfesor().getNombre() + "fecha=" + this.getFecha()
				+ ", horaInicio=" + this.getHoraInicio() + ", horaFin=" + this.getHoraFin() + ", asignaturas=" + this.getAsignaturas()
				+ ", lugar=" + this.getLugar() + ", comentariosAdicionales=" + this.getComentariosAdicionales() 
				+ ", estadoSolicitud=" + this.getEstadoSolicitud().getName() + ", razonEstado=" + this.getRazonEstado() + ", valoracion=" + this.getValoracion() + "]";
	}
	
}
