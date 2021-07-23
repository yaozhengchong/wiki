package com.java.wiki.controller;

import org.springframework.web.bind.annotation.*;

@RestController
public class TestController {

    /**
     * GET,POST,PUT,DELETE
     *
     * /user?id=1
     * /user/1
     * @return
     */
    //http://127.0.0.1:8880/hello
    @GetMapping
    @PostMapping
    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public String hello(){
        return "hello World!";
    }
}
