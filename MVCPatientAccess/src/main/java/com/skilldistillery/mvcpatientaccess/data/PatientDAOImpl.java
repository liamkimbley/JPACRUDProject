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
	public List<Patient> listPatientByName(String lastName) {
		return em.createQuery("SELECT p FROM Patient p WHERE p.lastName = :lastName", Patient.class).setParameter("lastName", lastName)
				.getResultList();
	}

	@Override
	public List<Patient> listAllPatients() {
		return em.createQuery("SELECT p FROM Patient p", Patient.class).getResultList();
	}

	@Override
	public Patient addPatient(Patient patient) {
		em.persist(patient);
		em.flush();
		return patient;
	}

	@Override
	public Patient updatePatient(Patient patient) {
		Patient updatedPat = em.find(Patient.class, patient.getId());
//		System.out.println(updatedPat);
		updatedPat.setDoctor(patient.getDoctor());
		updatedPat.setEmail(patient.getEmail());
		updatedPat.setFirstName(patient.getFirstName());
		updatedPat.setLastName(patient.getLastName());

		return updatedPat;
	}

	@Override
	public boolean deletePatient(int id) {
		Patient p = em.find(Patient.class, id);
		em.remove(p);

		return (em.find(Patient.class, id) == null);

	}

}
