package com.lib.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtil {
private JDBCUtil() {}

static {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}
public static Connection physicalConnection() throws IOException, SQLException
{
	FileInputStream fis = new FileInputStream("G:\\EclipseProgarms\\Library Management System\\src\\main\\java\\com\\lib\\properties\\jdbc.property");
	Properties properties = new Properties();
	properties.load(fis);
	String url = properties.getProperty("url");
	String username = properties.getProperty("user");
	String password = properties.getProperty("password");
	Connection con = DriverManager.getConnection(url,username,password);
	return con;
}

}