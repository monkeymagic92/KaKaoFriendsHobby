package com.kkfh.user;

import com.kkfh.core.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController extends CommonUtils {

    @Autowired
    private UserService service;

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String user(Model model) {

        model.addAttribute("list", service.selUser());
        model.addAttribute("test", "Test Message");
        return "/user/test";
    }

    @RequestMapping(value = "/kakaoTest", method = RequestMethod.GET)
    public String kakaoTest() {
        return "/user/kakaoTest";
    }
}
