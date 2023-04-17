package com.boot.demo.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class IDao implements IDaoImpl {

        @Autowired
        private SimpleJdbcCall simpleJdbcCall;

        @Autowired
        private JdbcTemplate jdbcTemplate;



    public Sginup saveUserInfo(Sginup sginup){

        Sginup sginup1 = new Sginup();

        try {

            simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("SaveUser");

            Map<String, Object> inParam = new HashMap<String, Object>();
            inParam.put("name", sginup.getName());
            inParam.put("email", sginup.getEmail());
            inParam.put("password", sginup.getPassword());

            Map<String, Object> result = simpleJdbcCall.execute(inParam);

            sginup1.setName((String) inParam.get("name"));
            sginup1.setEmail((String) inParam.get("email"));
            sginup1.setPassword((String) inParam.get("password"));

            return sginup1;
        }catch (Exception e){

            e.printStackTrace();
            return null;
        }

    }

//    public Sginup loginUser(String email, String password) {
//        Sginup loggedInUser = new Sginup();
//        try {
//            simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("logins");
//
//            Map<String, Object> inParam = new HashMap<String, Object>();
//            inParam.put("email", email);
//            inParam.put("password", password);
//
//            Map<String, Object> outParamMap = simpleJdbcCall.execute(new MapSqlParameterSource().addValues(inParam));
//
//
//            loggedInUser.setName((String) outParamMap.get("oname"));
//            loggedInUser.setId((long) outParamMap.get("oid"));
//
//            return loggedInUser;
//        } catch (Exception e){
//            e.printStackTrace();
//            return null;
//        }
//    }
public Sginup loginUser(String email, String password) {
    Sginup loggedInUser = new Sginup();
    try {
        simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("logins");

        Map<String, Object> inParam = new HashMap<String, Object>();
        inParam.put("email", email);
        inParam.put("password", password);

        SqlParameterSource in = new MapSqlParameterSource(inParam);
        Map<String, Object> outParamMap = simpleJdbcCall.execute(in);

        if (outParamMap != null) {
            loggedInUser.setName((String) outParamMap.get("oname"));
            loggedInUser.setId(Long.parseLong((String) outParamMap.get("oid")));
            loggedInUser.setImage((String) outParamMap.get("oimage"));
        }

        return loggedInUser;
    } catch (Exception e){
        e.printStackTrace();
        return null;
    }
}




}
