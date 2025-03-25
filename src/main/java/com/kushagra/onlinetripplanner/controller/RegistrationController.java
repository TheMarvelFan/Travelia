package com.kushagra.onlinetripplanner.controller;
import com.kushagra.onlinetripplanner.model.User;
import com.kushagra.onlinetripplanner.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping
    public String registerUser(@RequestBody User user) {
        userRepository.save(user);
        return "Successfully Registered.";
    }
}
