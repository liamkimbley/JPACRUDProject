package com.skilldistillery.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.mvcpatientaccess.data.PatientDAO;
import com.skilldistillery.mvcpatientaccess.data.PatientDAOImpl;

class PatientDAOImplTest {
	
	private static PatientDAO dao; 

	@BeforeEach
	void setUp() throws Exception {
		dao = new PatientDAOImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		dao = null;
	}

	@Test
	void test() {
		assertEquals("Sabrina", dao.showPatient(1).getFirstName());
	}

}
