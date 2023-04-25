package com.boot.demo.coverPagePost;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoverPagePostController {

    @RequestMapping(method = RequestMethod.GET, value = "coverpagePost")
    public ModelAndView showpost(){

        return new ModelAndView("coverpagePost");
    }
}
