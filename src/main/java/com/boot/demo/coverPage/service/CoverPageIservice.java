package com.boot.demo.coverPage.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface CoverPageIservice {


        void saveImage(long id, MultipartFile file) throws Exception;
        void saveCoverImage(long id, MultipartFile file) throws Exception;


}
