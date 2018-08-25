package com.yc.financial.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.financial.dao.UsersDAO;
import com.yc.financial.service.AddInfoService;
import com.yc.financial.vo.UsersVO;

@Service
public class AddInfoServiceImpl implements AddInfoService {

	@Autowired
	private UsersDAO udao;
	
	@Override
	public List<UsersVO> AddInfo(UsersVO users) {
		return udao.AddInfo(users);
	}

	
	
}
