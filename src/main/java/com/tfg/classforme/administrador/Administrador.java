package com.tfg.classforme.administrador;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.tfg.classforme.user.Usuario;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "administradores")
public class Administrador extends Usuario {

	@Override
	public String toString() {
		return "Administrador [nombre=" + this.getNombre() + ", foto=" + this.getFoto() + ", localidad=" + this.getLocalidad()
				+ ", provincia=" + this.getProvincia() + ", email=" + this.getEmail() + ", descripcion=" + this.getDescripcion() + ", password="
				+ this.getPassword() + "]";
	}
	
	
	
}
