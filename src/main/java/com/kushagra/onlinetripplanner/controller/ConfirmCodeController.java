package com.kushagra.onlinetripplanner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfirmCodeController {

    @GetMapping("/confirmcode")
    public ModelAndView confirmCode(@RequestParam("code") String code) {
        if ("0000".equals(code)) {
            return new ModelAndView("redirect:/ConfirmPassword.jsp");
        } else {
            ModelAndView mav = new ModelAndView("errorPage");
            mav.addObject("message", "Incorrect confirmation code. Please try again.");
            return mav;
        }
    }
}
