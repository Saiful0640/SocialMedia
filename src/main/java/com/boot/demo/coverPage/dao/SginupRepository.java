package com.boot.demo.coverPage.dao;

import com.boot.demo.Login.LoginModel.Sginup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SginupRepository extends JpaRepository<Sginup, Long> {
}
