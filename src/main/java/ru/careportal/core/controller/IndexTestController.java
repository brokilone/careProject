package ru.careportal.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * IndexTestController
 * created by Ksenya_Ushakova at 14.07.2020
 */
@Controller
public class IndexTestController {

    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("PageTitle", "Home Page");
        return "baseTemplate";
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
    public String login(Model model){
        model.addAttribute("PageTitle", "Login Page");
        return "baseTemplate";
    }
}
