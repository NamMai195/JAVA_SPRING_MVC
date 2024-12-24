package edu.poly.lab01.controller;

import edu.poly.lab01.domain.User;
import edu.poly.lab01.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
        private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {

        model.addAttribute("newuser", new User());
        return "admin/user/create";
    }
    @RequestMapping(value = "/admin/user", method = RequestMethod.POST)
    public String createUserPage(Model model,@ModelAttribute("newuser") User user) {
        System.out.println(user.toString());
        return "hello";
    }
}
//@RestController
//public class UserController {
//    private final UserService userService;
//
//    public UserController(UserService userService) {
//        this.userService = userService;
//    }
//
//    @GetMapping("/cc")
//    public String getHomePage() {
//        return this.userService.handleHello();
//    }
//}
