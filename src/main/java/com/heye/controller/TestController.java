package com.heye.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author heye
 * @date 2025/2/10 下午10:25
 */
@RestController
public class TestController {

    @GetMapping("/hello")
    private String hello() {
        return "hello";
    }
}
