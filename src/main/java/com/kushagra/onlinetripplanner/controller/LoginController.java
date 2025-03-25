package com.kushagra.onlinetripplanner.controller;

import com.kushagra.onlinetripplanner.model.User;
import com.kushagra.onlinetripplanner.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpSession;
import java.util.Optional;

@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping
    public String login(@RequestParam String user, @RequestParam String password, HttpSession session) {
        Optional<User> foundUser = userRepository.findById(user);
        if (foundUser.isPresent() && password.equals(foundUser.get().getPassword())) {
            session.setAttribute("user1", user);
            return "Redirecting to Add_trip.jsp";
        } else {
            return "Invalid login. Redirecting to login.jsp.";
        }
    }
}
