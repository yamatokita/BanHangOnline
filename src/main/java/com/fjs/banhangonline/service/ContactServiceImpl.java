package com.fjs.banhangonline.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.fjs.banhangonline.model.Contact;
import com.fjs.banhangonline.dao.ContactDAO;

@Service
@Transactional
public class ContactServiceImpl implements ContactService{

	@Autowired
	private ContactDAO contactDao;

	@Transactional
	public Contact addContact(Contact contact) {
		return contactDao.addContact(contact);
	}
}
