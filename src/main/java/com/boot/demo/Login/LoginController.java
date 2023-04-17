package com.boot.demo.Login;

import com.boot.demo.Login.Service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value ="login" , method = RequestMethod.GET)
    public ModelAndView loginShow(){

        return new ModelAndView("sginUP");
    }

  /*  @RequestMapping(value = "/saveUser" ,method = RequestMethod.POST)
    public ModelAndView saveUser(Sginup sginup){

        Sginup sginup1 = new Sginup();
        sginup1 = loginService.saveUserInfo(sginup);


    }*/

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public ModelAndView saveUser(@Valid Sginup sginup, BindingResult result  ) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("sginUP");

        if (result.hasErrors()) {
            mav.addObject("error", "Signup failed: Invalid input!");
            return mav;
        }

        try {
            Sginup savedSignup = loginService.saveUserInfo(sginup);

            mav.addObject("message", "Signup successful!");
            mav.addObject("signup", savedSignup);
        } catch (Exception e) {
            mav.addObject("error", "Signup failed: " + e.getMessage());
            mav.setViewName("signup-failure");
        }

        return mav;
    }


  /*  @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password) {
        ModelAndView mav = new ModelAndView();

        try {
            Sginup loggedInUser = loginService.loginUser(email, password);
            if(loggedInUser != null) {
                mav.setViewName("login-success");
                mav.addObject("message", "Login successful!");
                mav.addObject("loggedInUser", loggedInUser);
            } else {
                mav.setViewName("login-failure");
                mav.addObject("error", "Invalid email or password.");
            }
        } catch (Exception e) {
            mav.setViewName("login-failure");
            mav.addObject("error", "Login failed: " + e.getMessage());
        }

        return mav;
    }*/

    @RequestMapping(value = "sginIn", method = RequestMethod.POST)
    public ModelAndView loginUser(@RequestParam("email") String email, @RequestParam("password") String password , HttpSession session){

        ModelAndView mav = new ModelAndView();

        try {
            Sginup userInfo = loginService.loginUser(email, password);
            session.setAttribute("name", userInfo.getName());
            session.setAttribute("id", userInfo.getId());
            session.setAttribute("image", userInfo.getImage());
            if (userInfo !=null){
                mav.setViewName("Profile");
                mav.addObject("message","Login SuccessFull");
            }else {
                mav.setViewName("Profile");
                mav.addObject("message","loginFailed");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return mav;
    }

}
