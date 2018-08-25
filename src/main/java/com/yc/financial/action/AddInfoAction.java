package com.yc.financial.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.yc.financial.service.AddInfoService;
import com.yc.financial.vo.UsersVO;

@Controller
public class AddInfoAction {

	@Resource
	private AddInfoService addinfoService;
	
	public String addinfo( UsersVO users ){
		List<UsersVO> list = addinfoService.AddInfo(users);
		return "index";
	}
}
