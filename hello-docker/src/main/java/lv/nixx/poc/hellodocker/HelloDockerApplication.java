package lv.nixx.poc.hellodocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HelloDockerApplication {

    // https://spring.io/guides/gs/spring-boot-docker/
    // https://medium.com/holisticon-consultants/dont-build-fat-jars-for-docker-applications-6252a5571248

    public static void main(String[] args) {
        SpringApplication.run(HelloDockerApplication.class, args);
    }

}