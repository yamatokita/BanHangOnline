package com.fjs.banhangonline.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fjs.banhangonline.model.Contact;


@Repository
public class ContactDAOImpl  implements ContactDAO{
	
	@Autowired
    private SessionFactory sessionFactory;

	public Contact addContact(Contact contact) {
		sessionFactory.getCurrentSession().saveOrUpdate(contact);
        return contact;
	}

}