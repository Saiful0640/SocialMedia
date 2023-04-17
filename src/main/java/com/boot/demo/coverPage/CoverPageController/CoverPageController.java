package com.boot.demo.coverPage.CoverPageController;

import com.boot.demo.Login.Service.LoginService;
import com.boot.demo.Login.Sginup;
import com.boot.demo.coverPage.service.CoverPageIservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class CoverPageController {

    @Autowired
    CoverPageIservice coverPageIservice;

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "coverpage", method = RequestMethod.GET)
    public ModelAndView showCoverPage(){
        return  new ModelAndView("coverPage");
    }


    @PostMapping("/coverpage")
    public String handleImageUpload(@RequestParam("image") MultipartFile file, HttpSession session) {
        String fileName = file.getOriginalFilename();
        long id = (long) session.getAttribute("id");
        try {
            coverPageIservice.saveImage(id, file);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:coverpage";
    }

}
