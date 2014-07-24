package controller;

import context.ApplicationContextUtils;
import context.BasicInfo;
import model.beans.BlogsBean;
import model.dao.BlogDAO;
import model.dao.BlogDAOImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by edwin on 7/22/14.
 */
@Controller
@RequestMapping({"/blog", "/"})
public class Blog {

    BlogDAO blogDAO = new BlogDAOImpl();

    private static ApplicationContext applicationContext = ApplicationContextUtils.getApplicationContext();

    @RequestMapping(method = RequestMethod.GET)
    public String render (ModelMap model) {

        BasicInfo info = (BasicInfo) applicationContext.getBean("basicInfo");
        model.addAttribute("info", info);

        List<BlogsBean> blogs = blogDAO.all();
        model.addAttribute("blogs", blogs);

        return "blog";
    }

}
