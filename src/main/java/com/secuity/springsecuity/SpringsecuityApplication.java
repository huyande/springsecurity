package com.secuity.springsecuity;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.secuity.springsecuity.dao")
public class SpringsecuityApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringsecuityApplication.class, args);
	}

}
