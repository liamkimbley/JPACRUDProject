package com.skilldistillery.mvcpatientaccess.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String showPatientInfo(Model model, Integer pid) {
		Patient p = dao.showPatient(pid);
		model.addAttribute("patient", p);
		return "patient/show";
	}
}
