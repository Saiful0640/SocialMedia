package com.boot.demo.coverPage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CoverDaoImpl implements CoverPageIDao {

    @Autowired
    private SimpleJdbcCall simpleJdbcCall;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void updateProfileImage(long id, byte[] image) {

        simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("insert_profile_image");

        Map<String, Object> inParams = new HashMap<>();

        inParams.put("p_user_id", id);
        inParams.put("p_image_data", image);

        simpleJdbcCall.execute(inParams);
    }
}
