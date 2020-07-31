package ru.careportal.core.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    @GetMapping
    public String adminPage(Model model){
        log.debug("adminPage");
        model.addAttribute("PageTitle", "Страница администратора");
        model.addAttribute("PageBody", "admin.jsp");
        return "baseTemplate";
    }
}

