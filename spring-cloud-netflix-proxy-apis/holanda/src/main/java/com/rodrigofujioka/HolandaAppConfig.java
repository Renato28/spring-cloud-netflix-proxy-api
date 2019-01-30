package com.rodrigofujioka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class HolandaAppConfig {

    public static void main(String[] args) {
        SpringApplication.run(HolandaAppConfig.class, args);
    }

}

