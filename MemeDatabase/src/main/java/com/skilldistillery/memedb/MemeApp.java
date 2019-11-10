package com.skilldistillery.memedb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.memes")
public class MemeApp {

	public static void main(String[] args) {
		SpringApplication.run(MemeApp.class, args);
	}
}
