package com.noppakrit.myhomework.controller;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

    String driver = "com.mysql.jdbc.Driver";
    String server = "jdbc:mysql://localhost/fifadb";
    String user = "user";
    String password = "password";

    @RequestMapping("/")
    String index() {
        return "index";
    }

    
    @RequestMapping("/africa")
    String africa(Model model) {
        DriverManagerDataSource source = new DriverManagerDataSource();
        source.setDriverClassName(driver);
        source.setUrl(server);
        source.setUsername(user);
        source.setPassword(password);

        JdbcTemplate template = new JdbcTemplate();
        template.setDataSource(source);
        List<Zone> list;
        list = template.query(
                "select name, description from zone",
                new ZoneRowMapper());

        model.addAttribute("data", list);
        return "africa";
    }
    
    
    
    @RequestMapping("/list")
    String list(Model model) {
        DriverManagerDataSource source = new DriverManagerDataSource();
        source.setDriverClassName(driver);
        source.setUrl(server);
        source.setUsername(user);
        source.setPassword(password);

        JdbcTemplate template = new JdbcTemplate();
        template.setDataSource(source);
        List<Zone> list;
        list = template.query(
                "select name, description from zone",
                new ZoneRowMapper());

        model.addAttribute("data", list);
        return "list";
    }
}

class ZoneRowMapper implements RowMapper {
	public Zone mapRow(ResultSet rs, int row) throws SQLException {
		Zone z = new Zone();
		z.name          = rs.getString("name");
		z.description   = rs.getString("description");
		return z;
	}
}
