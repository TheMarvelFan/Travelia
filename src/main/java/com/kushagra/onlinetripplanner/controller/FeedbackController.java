package com.kushagra.onlinetripplanner.controller;

import com.kushagra.onlinetripplanner.model.Feedback;
import com.kushagra.onlinetripplanner.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    @PostMapping
    public String submitFeedback(@RequestBody Feedback feedback) {
//        feedbackRepository.save(feedback);
        return "Feedback sent successfully.";
    }
}
