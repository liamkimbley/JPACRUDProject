package com.skilldistillery.mvcpatientaccess.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.mvcpatientaccess.data.PatientDAO;
import com.skilldistillery.patient.entities.Patient;

@Controller
public class PatientController {

	@Autowired
	private PatientDAO dao;
	
	@RequestMapping(path="index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path="getPatient.do", method=RequestMethod.GET)
	public String showPatientInfo(Model model, String pid) {
		if (pid.isEmpty()) {
			return "index";
		}
		else {
			Integer id;
			try {
				id = Integer.parseInt(pid);
			} catch (NumberFormatException e) {
				return "index";
			}
		Patient p = dao.showPatient(id);
		model.addAttribute("patient", p);
		return "patient/show";
		}
	}
	
	@RequestMapping(path="newPatient.do", method=RequestMethod.GET)
	public String addPatient() {
		return "patient/newPatient";
	}
	
	@RequestMapping(path="newPatient.do", method=RequestMethod.POST)
	public String addNewPatient(Model model, Patient patient, RedirectAttributes redir) {
		Patient newPat = dao.addPatient(patient);
		
		redir.addFlashAttribute("patient", newPat);
		return "patient/show";
	}
	
	@RequestMapping(path="updatePatient.do", method=RequestMethod.POST)
	public String updatePatient(Model model, Patient patient) {
		Patient updatedPat = dao.updatePatient(patient);
		model.addAttribute("patient", updatedPat);
		return "patient/show";
	}
	
	@RequestMapping(path="deletePatient.do", method=RequestMethod.POST)
	public String deletePatient(Model model, Patient patient) {
		if(dao.deletePatient(patient.getId())) {
			return "index";
		}
		else {
			model.addAttribute("patient", patient);
			return "patient/show";
		}
	}
	
}
