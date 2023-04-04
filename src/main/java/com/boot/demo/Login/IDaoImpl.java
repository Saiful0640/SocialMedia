package com.boot.demo.Login;

public interface IDaoImpl {

    public Sginup saveUserInfo(Sginup sginup);
    public Sginup loginUser(String email, String password);
}
