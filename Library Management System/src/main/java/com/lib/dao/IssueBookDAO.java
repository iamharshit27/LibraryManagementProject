package com.lib.dao;

import java.sql.ResultSet;

public interface IssueBookDAO {
	
	String issuebook(int sid, int bid, String issuedate, String duedate);
    ResultSet checkdue(int sid);
}
