package com.cszjo.jobhunter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * Created by Han on 2017/3/5.
 * Spring Boot 启动类
 */
@SpringBootApplication
@EnableAsync
public class JobHunterApplication/* extends SpringBootServletInitializer */{

    /*@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(this.getClass());
    }*/

    public static void main (String[] args) {
        SpringApplication.run(JobHunterApplication.class, args);
    }
}
