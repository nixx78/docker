package lv.nixx.poc.hellodocker;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HelloDockerApplication {

    private static final Logger LOG = LoggerFactory.getLogger(HelloDockerApplication.class);

    // https://spring.io/guides/gs/spring-boot-docker/
    // https://docs.docker.com/compose/gettingstarted/

    // Setup logger && How to check log files ?!

    @RequestMapping("/hello")
    public String home() {
        LOG.info("Request from client");
        return "Hello Docker World:" + System.currentTimeMillis();
    }

    public static void main(String[] args) {
        SpringApplication.run(HelloDockerApplication.class, args);
    }


}