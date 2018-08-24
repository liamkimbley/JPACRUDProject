package com.skilldistillery.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.mvcpatientaccess.data.PatientDAO;
import com.skilldistillery.mvcpatientaccess.data.PatientDAOImpl;

class PatientDAOImplTest {
	
	private static PatientDAO dao; 

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		dao = new PatientDAOImpl();
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		dao = null;
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void test() {
		
		assertEquals("Sabrina", dao.showPatient(1).getFirstName());
	}

}
