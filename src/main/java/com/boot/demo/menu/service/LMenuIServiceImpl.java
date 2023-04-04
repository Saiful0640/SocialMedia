package com.boot.demo.menu.service;

import com.boot.demo.menu.dao.ImenuDao;
import com.boot.demo.menu.model.LMenuName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LMenuIServiceImpl implements IlMenuNameService {

    @Autowired
    ImenuDao imenuDao;

    @Override
    public List<LMenuName> getAllLMenu() {
        return imenuDao.getAllLMenu() ;
    }
}
