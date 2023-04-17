package com.boot.demo.coverPage.service;

import com.boot.demo.Login.Sginup;
import com.boot.demo.coverPage.dao.CoverPageIDao;
import com.boot.demo.coverPage.dao.SginupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class CoverPageServiceImpl implements CoverPageIservice {

    @Autowired
    CoverPageIDao coverPageIDao;
    @Autowired
    SginupRepository sginupRepository;
    private final String FOLDER_PATH = "C:/Users/CNS/Desktop/SocialMedia/src/main/webapp/resources/file/";


    @Override
    public void saveImage(long id, MultipartFile file) throws Exception {

        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        String filePath = FOLDER_PATH + fileName;
        file.transferTo(new File(filePath));
        Sginup sginup = sginupRepository.findById(id).orElseThrow(() -> new Exception("User not found with id: " + id));
        sginup.setImage(fileName);
        sginupRepository.save(sginup);

    }
}