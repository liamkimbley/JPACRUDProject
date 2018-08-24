package com.skilldistillery.mvcpatientaccess.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.patient.entities.Patient;

@Transactional
@Component
public class PatientDAOImpl implements PatientDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Patient showPatient(int id) {
		return em.find(Patient.class, id);
	}

	@Override
	public List<Patient> listPatient(int id) {
		return em.createQuery("SELECT p FROM Patient p", Patient.class).getResultList();
	}

	@Override
	public Patient addPatient() {
		return null;
	}

	@Override
	public boolean updatePatient(Patient patient) {
		return false;
	}

	@Override
	public boolean deletePatient(Patient patient) {
		return false;
	}

}
