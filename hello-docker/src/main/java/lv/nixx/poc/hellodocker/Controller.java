package lv.nixx.poc.hellodocker;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    private static final Logger LOG = LoggerFactory.getLogger(Controller.class);

    @Value("${custom.value}")
    private int customValue;

    @Value("${another_custom.value}")
    private String anotherCustomValue;

    @RequestMapping("/hello")
    public String home() {
        LOG.info("Request from client");
        return "Hello Docker World:" + System.currentTimeMillis() + ":" + customValue + ":" + anotherCustomValue;
    }

}