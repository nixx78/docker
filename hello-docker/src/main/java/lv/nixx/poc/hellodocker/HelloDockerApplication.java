package lv.nixx.poc.hellodocker;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Arrays;

@SpringBootApplication
public class HelloDockerApplication {

    private static final Logger log = LoggerFactory.getLogger(HelloDockerApplication.class);

    // https://spring.io/guides/gs/spring-boot-docker/
    // https://medium.com/holisticon-consultants/dont-build-fat-jars-for-docker-applications-6252a5571248

    public static void main(String[] args) {
        log.info("Application args {}", Arrays.toString(args));
        SpringApplication.run(HelloDockerApplication.class, args);
    }

}