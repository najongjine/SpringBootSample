package com.jong;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author najon
 * 
 *이곳에@MapperScan(basePackages = "나의 mapper(repository) location을 적어준다")
 *를 적어준다.
 *이걸 적어줘야 DB 쿼리를 실행시키는 인터페이스(Repository)를 스프링이 찾는다   
 *
 */
@SpringBootApplication
@MapperScan(basePackages = "com.jong.mapper")
public class DevProject1Application {

	public static void main(String[] args) {
		SpringApplication.run(DevProject1Application.class, args);
	}

}
