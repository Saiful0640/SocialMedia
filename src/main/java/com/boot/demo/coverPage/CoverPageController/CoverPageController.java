package com.boot.demo.coverPage.CoverPageController;

import com.boot.demo.coverPage.service.CoverPageIservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoverPageController {

    @Autowired
    CoverPageIservice coverPageIservice;

    @RequestMapping(value = "coverpage", method = RequestMethod.GET)
    public ModelAndView showCoverPage(){
        return  new ModelAndView("coverPage");
    }


    @PostMapping("userProfile")
    public String saveImage(@RequestParam("userId") long userId,
                            @RequestParam("imageData") byte[] imageData) {
        coverPageIservice.saveImage(userId, imageData);

        return "redirect:/coverPage";
    }

}
