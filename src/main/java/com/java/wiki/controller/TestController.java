package com.java.wiki.controller;

import com.java.wiki.domain.Test;
import com.java.wiki.service.TestService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class TestController {

    @Value("${test.hello:Test}")
    private String testHello;

    @Resource
    private TestService testService;
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

    @GetMapping("/test/list")
    public List<Test> list(){
        return testService.list();
    }


}
