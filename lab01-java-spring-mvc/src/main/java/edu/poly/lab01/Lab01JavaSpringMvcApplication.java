package edu.poly.lab01;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
@SpringBootApplication(exclude =
        org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class Lab01JavaSpringMvcApplication {

    public static void main(String[] args) {
        SpringApplication.run(Lab01JavaSpringMvcApplication.class, args);
    }

}
