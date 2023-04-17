package com.boot.demo.Login.LoginDao;

import com.boot.demo.Login.LoginModel.Sginup;

public interface IDaoImpl {

    public Sginup saveUserInfo(Sginup sginup);
    public Sginup loginUser(String email, String password);
}
