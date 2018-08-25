package com.yc.financial.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.financial.service.RegistService;
import com.yc.financial.util.MD5Utils;
import com.yc.financial.vo.UsersVO;

@Controller
public class RegistAction {

	private MD5Utils md5;
	
	@Resource
	private RegistService registservice;
	
	@RequestMapping(value="/regist.do",produces = "application/json;charset=utf-8")
	public String regist(String op,UsersVO users,Model model,HttpSession session,HttpServletRequest request){
		if("".equals(op)){
			String upwd = md5.GetMD5Code(request.getParameter("upwd"));
			users.setUpwd(upwd);
			Integer list = registservice.Regist(users);
			return op;
		}
		return op;
		
	}
	
}
