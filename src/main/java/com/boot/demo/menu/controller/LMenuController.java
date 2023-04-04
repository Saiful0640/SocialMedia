package com.boot.demo.menu.controller;

import com.boot.demo.menu.model.LMenuName;
import com.boot.demo.menu.service.IlMenuNameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class LMenuController {

    @Autowired
    IlMenuNameService ilMenuNameService;

    @RequestMapping(value = "sginIn", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody
    List<LMenuName> getAllLMenu(){

        List<LMenuName> lMenus = ilMenuNameService.getAllLMenu();

        return lMenus;
    }
}
