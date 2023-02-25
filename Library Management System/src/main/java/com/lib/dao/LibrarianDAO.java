package com.lib.dao;

import com.lib.dto.Librarian;
import com.lib.dto.ValidateLibrarian;

public interface LibrarianDAO {
	String save(Librarian librarian);
	int librarianValidate(ValidateLibrarian validateLib);
	String deleteById(int lid);
	String findById(int lid);

}
