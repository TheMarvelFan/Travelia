package com.kushagra.onlinetripplanner.repository;

import com.kushagra.onlinetripplanner.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    long countByEmail(String email);
}