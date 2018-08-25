package com.skilldistillery.mvcpatientaccess.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.mvcpatientaccess.data.PatientDAO;
import com.skilldistillery.patient.entities.Patient;

@Controller
public class PatientController {

	@Autowired
	private PatientDAO dao;

	@RequestMapping(path = "index.do")
	public String index() {
		return "index";
	}

	@RequestMapping(path = "getPatient.do", method = RequestMethod.GET)
	public String showPatientInfo(Model model, String pid) {
		if (pid.isEmpty()) {
			return "index";
		} else {
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

	@RequestMapping(path = "getPatientByName.do", method = RequestMethod.GET)
	public ModelAndView showPatients(String lastName) {
		ModelAndView mv = new ModelAndView();
		if (lastName.isEmpty()) {
			mv.setViewName("index");
			return mv;
		} else {
			List<Patient> patients = dao.listPatientByName(lastName);
			mv.addObject("patients", patients);
			mv.setViewName("patient/show");
			return mv;
		}
	}

	@RequestMapping(path = "listPatients.do", method = RequestMethod.GET)
	public ModelAndView listPatients() {
		ModelAndView mv = new ModelAndView();
		List<Patient> patients = dao.listAllPatients();
		mv.addObject("patients", patients);
		mv.setViewName("patient/show");
		return mv;

	}

	@RequestMapping(path = "newPatient.do", method = RequestMethod.GET)
	public String addPatient() {
		return "patient/newPatient";
	}

	@RequestMapping(path = "newPatient.do", method = RequestMethod.POST)
	public ModelAndView addNewPatient(Patient patient) {
		ModelAndView mv = new ModelAndView();
		Patient newPat = dao.addPatient(patient);
		mv.addObject("patient", newPat);
		mv.setViewName("patient/show");
		return mv;
	}

	@RequestMapping(path = "updatePatient.do", method = RequestMethod.POST)
	public String updatePatient(Model model, Patient patient) {
		Patient updatedPat = dao.updatePatient(patient);
		model.addAttribute("patient", updatedPat);
		return "patient/show";
	}

	@RequestMapping(path = "deletePatient.do", method = RequestMethod.POST)
	public String deletePatient(Model model, int id) {
		if (dao.deletePatient(id)) {
			return "patient/show";
		} else {
			model.addAttribute("patient", dao.showPatient(id));
			return "patient/show";
		}
	}

}
