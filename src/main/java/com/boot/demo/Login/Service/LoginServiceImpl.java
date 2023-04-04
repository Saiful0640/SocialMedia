package com.boot.demo.Login.Service;

import com.boot.demo.Login.IDao;
import com.boot.demo.Login.Sginup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    IDao iDao;

    @Override
    public Sginup saveUserInfo(Sginup sginup) {

        return iDao.saveUserInfo(sginup);
    }

    @Override
    public Sginup loginUser(String email, String password) {
        return iDao.loginUser(email, password);
    }


}
