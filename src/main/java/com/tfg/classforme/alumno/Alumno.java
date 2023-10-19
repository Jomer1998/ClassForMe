package com.tfg.classforme.alumno;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.checkerframework.common.value.qual.IntRange;

import com.tfg.classforme.user.NivelEducativo;
import com.tfg.classforme.user.Usuario;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "alumnos")
public class Alumno extends Usuario {
	
	@ManyToOne
	@JoinColumn(name = "nivel_id")
	NivelEducativo nivel;
	
	@IntRange(from = 1, to = 6)
	Integer curso;

	@Override
	public String toString() {
		return "Alumno [nombre=" + this.getNombre() + ", foto=" + this.getFoto() + ", localidad=" + this.getLocalidad()
				+ ", provincia=" + this.getProvincia() + ", email=" + this.getEmail() + ", descripcion=" + this.getDescripcion() + ", password="
				+ this.getPassword() + ", nivel=" + nivel.getName() + ", curso=" + curso + "]";
	}
	
	
	
}
