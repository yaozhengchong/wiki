package com.java.wiki.controller;

import com.java.wiki.resp.CommonResp;
import com.java.wiki.resp.PageResp;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Resource
    private com.java.wiki.service.CategoryService categoryService;

    @GetMapping("/list")
    public CommonResp list(@Valid com.java.wiki.req.CategoryQueryReq req) {
        CommonResp<PageResp<com.java.wiki.resp.CategoryQueryResp>> resp = new CommonResp<>();
        PageResp<com.java.wiki.resp.CategoryQueryResp> list = categoryService.list(req);
        resp.setContent(list);
        return resp;
    }

    @PostMapping("/save")
    public CommonResp save(@Valid @RequestBody com.java.wiki.req.CategorySaveReq req) {
        CommonResp resp = new CommonResp<>();
        categoryService.save(req);
        return resp;
    }

    @DeleteMapping("/delete/{id}")
    public CommonResp delete(@PathVariable Long id) {
        CommonResp resp = new CommonResp<>();
        categoryService.delete(id);
        return resp;
    }
}
