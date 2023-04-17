package com.boot.demo.Login.Service;

import com.boot.demo.Login.LoginModel.Sginup;

public interface LoginService {

    public Sginup saveUserInfo(Sginup sginup);

    public Sginup loginUser(String email, String password);

}
