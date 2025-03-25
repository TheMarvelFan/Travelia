package com.kushagra.onlinetripplanner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/gethotels")
public class GetHotelsController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping
    public List<String> getHotels(@RequestParam String location) {
        return jdbcTemplate.query("SELECT name FROM " + location, (rs, rowNum) -> rs.getString("name"));
    }
}
