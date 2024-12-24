package edu.poly.lab01.service;

import edu.poly.lab01.domain.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private User user;
    public  String handleHello(){
        return "hello tao la service";
    }
}
