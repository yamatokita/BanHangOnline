package com.fjs.banhangonline.model;
// Generated 2018/04/18 12:02:01 by Hibernate Tools 5.2.8.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Contact generated by hbm2java
 */
@Entity
@Table(name = "contact", catalog = "banhangonline")
public class Contact implements java.io.Serializable {

	private Integer id;
	private String username;
	private String email;
	private String subject;
	private String comment;

	public Contact() {
	}

	public Contact(String username, String email, String subject, String comment) {
		this.username = username;
		this.email = email;
		this.subject = subject;
		this.comment = comment;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "username", nullable = false, length = 45)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "email", nullable = false, length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "subject", nullable = false, length = 45)
	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Column(name = "comment", nullable = false)
	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}