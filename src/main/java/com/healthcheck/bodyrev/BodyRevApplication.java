package com.healthcheck.bodyrev;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan
public class BodyRevApplication {

    public static void main(String[] args) {
        SpringApplication.run(BodyRevApplication.class, args);
    }
}
