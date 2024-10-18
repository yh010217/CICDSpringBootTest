package com.cicdtest.cicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleController {
    @GetMapping("/")
    public String home(){
        return "Hello, World CICD fourth";
    }
    @GetMapping("hello")
    public String hello(){
        return "hello method added";
    }
}
