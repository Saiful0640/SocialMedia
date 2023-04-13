package com.boot.demo.coverPage.service;

import com.boot.demo.coverPage.dao.CoverPageIDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CoverPageServiceImpl implements CoverPageIservice  {

    @Autowired
    CoverPageIDao coverPageIDao;

    @Override
    public void saveImage(long userId, byte[] imageData) {

         coverPageIDao.saveImage(userId, imageData);
    }
}
