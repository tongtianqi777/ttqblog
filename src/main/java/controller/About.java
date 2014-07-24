package controller;

import context.ApplicationContextUtils;
import context.BasicInfo;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by edwin on 7/23/14.
 */

@Controller
@RequestMapping("/about")
public class About {

    private static ApplicationContext applicationContext = ApplicationContextUtils.getApplicationContext();

    @RequestMapping(method = RequestMethod.GET)
    public String render (ModelMap model) {

        BasicInfo info = (BasicInfo) applicationContext.getBean("basicInfo");
        model.addAttribute("info", info);

        return "about";
    }
}
