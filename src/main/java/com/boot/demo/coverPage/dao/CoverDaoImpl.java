package com.boot.demo.coverPage.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.jdbc.core.support.SqlLobValue;
import org.springframework.stereotype.Repository;

@Repository
public class CoverDaoImpl implements CoverPageIDao {



    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void saveImage(long id, byte[] image) {
        String sql = "UPDATE sginup SET uimage = ? WHERE id = ?";
        jdbcTemplate.update(sql, new SqlLobValue(image), id);
    }

    @Override
    public byte[] getImage(long id) {
        return new byte[0];
    }


}
