package com.lib.dao;

import java.sql.ResultSet;

import com.lib.dto.Books;

public interface BookDAO {

	String save(Books book);
    Books findById(int bid);
    String udateById(int bid);
    String deleteById(int bid);
    ResultSet findAll();

}
