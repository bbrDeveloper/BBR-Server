package com.healthcheck.bodyrev.web.controller;

import com.healthcheck.bodyrev.domain.service.FooService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wmjun on 2015. 12. 27..
 */
@Controller
public class FooController {
    @Autowired
    private FooService fooService;

    @RequestMapping("/")
    public String mainPage(Model model){
        return "main";
    }

    @RequestMapping("/money")
    public String getTotalMoneyPage(Model model){
        Long total = fooService.getTotalMoney();
        model.addAttribute("totalMoney",total);

        return "totalMoney";

    }
}
