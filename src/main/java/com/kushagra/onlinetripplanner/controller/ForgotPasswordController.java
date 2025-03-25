package com.kushagra.onlinetripplanner.controller;

import com.kushagra.onlinetripplanner.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class ForgotPasswordController {
    private final UserService userService;

    @PostMapping("/forgotpass")
    public String processForgotPassword(
            @RequestParam("email") String email,
            RedirectAttributes redirectAttributes
    ) {
        if (userService.isEmailRegistered(email)) {
            // Store email in session or pass as attribute
            redirectAttributes.addFlashAttribute("email", email);
            return "redirect:/EmailConf.jsp";
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Email not registered.");
            return "redirect:/ForgotPassword.jsp";
        }
    }
}