package controller;

import context.ApplicationContextUtils;
import context.ImageUploadContext;
import model.beans.BlogsBean;
import model.dao.BlogDAO;
import model.dao.BlogDAOImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;


@Controller
@RequestMapping("/blog")
public class Blog {

    BlogDAO dao = new BlogDAOImpl();

    ApplicationContext context = ApplicationContextUtils.getApplicationContext();


    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String renderCreateBlog (ModelMap model) {
        return "create_article";
    }

    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public String submitBlog (@RequestParam("editor1") String body, ModelMap model) {
        BlogsBean blog = new BlogsBean();
        blog.setTitle("test title");
        blog.setTime(new Timestamp(new Date().getTime()));
        blog.setBody(body);
        dao.save(blog);

        return "create_article";
    }

    @RequestMapping(value = "/imageupload", method = RequestMethod.POST)
    public String uploadImage(@RequestParam("upload") MultipartFile file, HttpServletRequest request, ModelMap model) {

        InputStream inputStream = null;
        OutputStream outputStream = null;
        ImageUploadContext imageUploadContext = (ImageUploadContext) context.getBean("imageUploadUrl");
        ServletContext servletContext = request.getSession().getServletContext();

        //new file name
        String filename = Calendar.getInstance().getTimeInMillis() + file.getOriginalFilename();

        //absolute file path of application
        String dirAbsPath = servletContext.getRealPath("");

        //relative uploaded images dir path
        String dirRelPath = imageUploadContext.getRelativeResourceDir();

        //context path of application
        String contextPath = request.getContextPath();


        System.out.println(servletContext.getRealPath(imageUploadContext.getRelativeResourceDir()));

        System.out.println();

        try {
            inputStream = file.getInputStream();
            File output = new File(dirAbsPath + dirRelPath + filename);
            System.out.println(output.getAbsolutePath());
            output.createNewFile();
            System.out.println(output.getAbsolutePath());
            outputStream = new FileOutputStream(output);

            byte[] buf = new byte[1024];
            int len;

            while((len=inputStream.read(buf))>0){
                outputStream.write(buf,0,len);
            }

            outputStream.close();
            inputStream.close();

        } catch (IOException ex) {
            ex.printStackTrace();

        }

        model.addAttribute("image_url", contextPath + dirRelPath + filename);
        return "upload_success";
    }
}
