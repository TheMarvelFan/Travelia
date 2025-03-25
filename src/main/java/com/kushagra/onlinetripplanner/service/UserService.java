package com.kushagra.onlinetripplanner.service;

import com.kushagra.onlinetripplanner.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public boolean isEmailRegistered(String email) {
        return userRepository.countByEmail(email) > 0;
    }
}