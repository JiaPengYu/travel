package com.chinasofti.test.controller;

import com.chinasofti.test.entity.Msg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author：Ganlan；
 * @date：2019-04-28；
 */

@Controller
@RequestMapping("/test")
public class Test {

//    name = "username") String username,@RequestParam(name = "password") String password,
//    @RequestParam(name = "email") String email,@RequestParam(name = "name") String name

    @RequestMapping("/queryEmail/")
    @ResponseBody
    public Msg queryPlace(@RequestParam(name = "email") String email){

        System.out.println(email);
        return  new Msg("邮箱");
    }

    @RequestMapping("/queryUsername/")
    @ResponseBody
    public int queryUsername(@RequestParam(name = "username") String username){

        System.out.println(username);
        return  0;
    }

    @RequestMapping("/r/")
    @ResponseBody
    public Msg r(@RequestParam (name = "username") String username,@RequestParam(name = "password") String password,
                            @RequestParam(name = "email") String email,@RequestParam(name = "name") String name){

        System.out.println(username);
        System.out.println(password);
        System.out.println(email);
        System.out.println(name);

        return  new Msg("注册");
    }
}
