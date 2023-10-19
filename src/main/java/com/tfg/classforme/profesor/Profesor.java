package com.tfg.classforme.profesor;

import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import com.tfg.classforme.user.NivelEducativo;

import com.tfg.classforme.user.Usuario;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "profesores")
public class Profesor extends Usuario {
	
	@Column(name = "disponibilidad")
	@NotEmpty
	String disponibilidad;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "profesor_niveles", joinColumns = @JoinColumn(name = "profesor_id"), inverseJoinColumns = @JoinColumn(name = "nivel_educativo_id"))
	Set<NivelEducativo> niveles;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "profesor_niveles", joinColumns = @JoinColumn(name = "profesor_id"), inverseJoinColumns = @JoinColumn(name = "rama_conocimiento_id"))
	Set<RamaConocimiento> ramas;
	
	@Column(name = "tarifa")
	@NotEmpty
	String tarifa;
	
	@ManyToOne
	@JoinColumn(name = "modalidad_id")
	ModalidadClase modalidad;

	@Override
	public String toString() {
		return "Profesor [nombre=" + this.getNombre() + ", foto=" + this.getFoto() + ", localidad=" + this.getLocalidad()
				+ ", provincia=" + this.getProvincia() + ", email=" + this.getEmail() + ", descripcion=" + this.getDescripcion() + ", password="
				+ this.getPassword() + ", disponibilidad=" + this.getDisponibilidad() + ", niveles="
				+ niveles.stream().map(n -> n.getName()).collect(Collectors.toList()).toString() + ", ramas="
				+ ramas.stream().map(n -> n.getName()).collect(Collectors.toList()).toString() + ", tarifa=" + tarifa + ", modalidad=" + modalidad.getName() + "]";
	}
	
	
	
}
