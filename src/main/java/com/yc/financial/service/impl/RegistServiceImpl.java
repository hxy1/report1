package com.yc.financial.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.financial.dao.UsersDAO;
import com.yc.financial.service.RegistService;
import com.yc.financial.vo.UsersVO;

@Service
public class RegistServiceImpl implements RegistService{

	@Autowired
	private UsersDAO udao;
	
	@Override
	public Integer Regist(UsersVO users) {
		return udao.selectByRegist(users);
	}

}
