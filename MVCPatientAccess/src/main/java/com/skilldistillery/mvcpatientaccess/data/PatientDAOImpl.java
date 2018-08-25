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
	public Patient addPatient(Patient patient) {
//		em.getTransaction().begin();
		em.persist(patient);
		em.flush();
//		em.getTransaction().commit();
		return patient;
	}

	@Override
	public Patient updatePatient(Patient patient) {
//		em.getTransaction().begin();
		Patient updatedPat = em.find(Patient.class, patient.getId());
		System.out.println(updatedPat);
		updatedPat.setDoctor(patient.getDoctor());
		updatedPat.setEmail(patient.getEmail());
		updatedPat.setFirstName(patient.getFirstName());
		updatedPat.setLastName(patient.getLastName());
//		em.getTransaction().commit();

		return updatedPat;
	}

	@Override
	public boolean deletePatient(int id) {
		Patient p = em.find(Patient.class, id);
		em.getTransaction().begin();
		em.remove(p);
		em.getTransaction().commit();

		return (em.find(Patient.class, id) == null);

	}

}
