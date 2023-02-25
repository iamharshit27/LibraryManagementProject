package com.lib.dao;

import java.sql.ResultSet;

import com.lib.dto.Student;

public interface StudentDAO {
	
	String save(Student student);
    Student findById(int sid);
    String udateById(int sid);
    String deleteById(int sid);
    ResultSet findAll();
}
