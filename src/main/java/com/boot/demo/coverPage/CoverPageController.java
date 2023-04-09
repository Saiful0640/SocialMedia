package com.boot.demo.coverPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoverPageController {

    @RequestMapping(value = "coverpage", method = RequestMethod.GET)
    public ModelAndView showCoverPage(){
        return  new ModelAndView("coverPage");
    }
}
