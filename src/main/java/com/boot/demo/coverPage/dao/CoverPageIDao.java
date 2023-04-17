package com.boot.demo.coverPage.dao;

public interface CoverPageIDao {

    void saveImage(long id, byte[] image);
    byte[] getImage(long id);
}
