package com.kushagra.onlinetripplanner.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = "com.kushagra.onlinetripplanner.repository")
public class DatabaseConfig {

}