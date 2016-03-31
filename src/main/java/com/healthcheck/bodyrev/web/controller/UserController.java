package com.healthcheck.bodyrev.web.controller;

import com.healthcheck.bodyrev.domain.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Anong on 16. 3. 31..
 */
@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/mypage/{id}")
	public ModelAndView view(@PathVariable Long id){
		ModelAndView mnv = new ModelAndView("user");
		//mnv.addObject("list", );

		return mnv;
	}
}
