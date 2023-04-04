package com.boot.demo.menu.dao;

import com.boot.demo.menu.model.LMenuName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class  DaoMenuImplement implements ImenuDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<LMenuName> getAllLMenu() {
        NamedParameterJdbcTemplate npjt = new NamedParameterJdbcTemplate(jdbcTemplate);

        StringBuilder stringBuilder = new StringBuilder();

        stringBuilder.append(" SELECT * ");
        stringBuilder.append(" FROM leftmenubar ");

        System.out.println(stringBuilder);

        List<Map<String, Object>> rows = npjt.queryForList(stringBuilder.toString(), new HashMap<>());
        List<LMenuName> lMenuNames = new ArrayList<>();

        for(@SuppressWarnings("rawtypes")
        Map row:rows){
            LMenuName lMenuName1 = new LMenuName();

            lMenuName1.setId(String.valueOf(row.get("id")));
            lMenuName1.setL_menu_name(String.valueOf(row.get("l_menu_name")));

            lMenuNames.add(lMenuName1);
        }

        return lMenuNames;
    }
}
