package com.endos.oilcard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Endos on 2017/09/06.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping(value = "/test")
    @ResponseBody
    public String test(){
        return "test";
    }
}
