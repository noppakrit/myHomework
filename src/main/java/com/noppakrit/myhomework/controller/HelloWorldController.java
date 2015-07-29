package com.noppakrit.myhomework.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
                "select id, name, description from zone where name = \"Africa\"",
                new ZoneRowMapper());
        model.addAttribute("data2", list);

        List<Country> countries;
        String sql = "select id, name, zone_id, qualified, flag_name from  country where zone_id=" + list.get(0).id;
        countries = template.query(sql, new CountryRowMapper());
        model.addAttribute("data3", countries);

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
                "select id, name, description from zone",
                new ZoneRowMapper());

        model.addAttribute("data", list);
        return "list";
    }

    @RequestMapping("/hibernate")
    @ResponseBody
    List<Zone> readHibernate() {
        Session session = factory.openSession();
        List<Zone> result = new ArrayList<Zone>();
        SQLQuery query = session.createSQLQuery(
                "select id, name, description from zone");
        List<Object[]> records = query.list();
        for (Object[] record : records) {
            Zone z = new Zone();
            z.id = (Integer) record[0];
            z.name = (String) record[1];
            z.description = (String) record[2];
            result.add(z);
        }
        return result;
    }

    SessionFactory factory = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();

}

class ZoneRowMapper implements RowMapper {

    public Zone mapRow(ResultSet rs, int row) throws SQLException {
        Zone z = new Zone();
        z.id = rs.getInt("id");
        z.name = rs.getString("name");
        z.description = rs.getString("description");
        return z;
    }
}

class CountryRowMapper implements RowMapper {

    public Country mapRow(ResultSet rs, int row) throws SQLException {
        Country c = new Country();
        c.id = rs.getInt("id");
        c.name = rs.getString("name");
        c.zone_id = rs.getInt("zone_id");
        c.qualified = rs.getInt("qualified");
        c.flag_name = rs.getString("flag_name");
        return c;
    }
}
