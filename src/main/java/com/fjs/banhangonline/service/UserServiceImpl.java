package com.fjs.banhangonline.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fjs.banhangonline.dao.UserDAO;
import com.fjs.banhangonline.model.User;


@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDao;

	@Transactional
	public User addUser(User user)  {
		return userDao.addUser(user);
	}
}
