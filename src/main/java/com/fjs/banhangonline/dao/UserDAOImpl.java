package com.fjs.banhangonline.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fjs.banhangonline.model.User;


@Repository
public class UserDAOImpl  implements UserDAO{
	
	@Autowired
    private SessionFactory sessionFactory;

	public User addUser(User user) {
		
		String usercode = new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar.getInstance().getTime());
		user.setUsercode(usercode);
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);
        return user;
	}

}