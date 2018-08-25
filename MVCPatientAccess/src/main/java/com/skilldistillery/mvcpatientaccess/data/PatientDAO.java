package com.skilldistillery.mvcpatientaccess.data;

import java.util.List;

import com.skilldistillery.patient.entities.Patient;

public interface PatientDAO {

	public Patient showPatient(int id);
	public List<Patient> listPatient(int id);
	public Patient addPatient(Patient patient);
	public Patient updatePatient(Patient patient);
	public boolean deletePatient(int id);
}
