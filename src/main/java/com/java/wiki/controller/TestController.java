package com.java.wiki.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

@RestController
public class TestController {

    @Value("${test.hello:Test}")
    private String testHello;

    /**
     * GET,POST,PUT,DELETE
     *
     * /user?id=1
     * /user/1
     * @return
     */
    //http://127.0.0.1:8880/hello
    //@GetMapping
    //@PostMapping
    @GetMapping("/hello")
    public String hello(){
        return "Hello World!" + testHello;
    }

    @PostMapping(value = "/hello/post")
    public String hello(String name){
        return "hello World! Post，" + name;
    }
}
