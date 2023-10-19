package com.tfg.classforme.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.tfg.classforme.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "usuarios")
public class Usuario extends BaseEntity {
	
	@Column(name = "nombre")
	@NotEmpty
	String nombre;
	
	@Column(name = "foto")
	String foto;
	
	@Column(name = "localidad")
	@NotEmpty
	String localidad;
	
	@Column(name = "provincia")
	@NotEmpty
	String provincia;
	
	@Column(name = "email")
	@NotEmpty
	@Email
	String email;
	
	@Column(name = "descripcion")
	String descripcion;
	
	@Column(name = "password")
	@NotEmpty
	String password;
	
	@Column(name = "authority")
	@Size(min = 3, max = 50)
	String authority;
	
}
