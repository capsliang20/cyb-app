package com.app.cyb.cybparent.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @RequestMapping(method = RequestMethod.GET)
    String resultMap(HttpSession httpSession) {
        return "index";
    }

}
