package com.icebergv01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icebergv01.model.UosUif;
import com.icebergv01.service.UosUifService;

@Controller
public class UosUifController {
	 @Autowired
	 private UosUifService uosUifService;
	// handler methods...
	 
	 @RequestMapping("/")
	 public String viewHomePage(Model model) {
	     List <UosUif> listUosUifs = uosUifService.listAll();
	     model.addAttribute("listUosUifs", listUosUifs);
	      
	     return "index";
	 }
	 @RequestMapping("/new")
	 public String showNewUosUif(Model model) {
	     UosUif uosUif = new UosUif();
	     model.addAttribute("uosUif", uosUif);
	      
	     return "new_uosuif";
	 }
//	 @RequestMapping("/save")
//	 public String saveUosUif(Model model) {
//	     UosUif uosUif = new UosUif();
//	     model.addAttribute("uosUif", uosUif);
//	     uosUifService.save(uosUif);
//	     return "index";
//	 }
	 @PostMapping("/save")
	    public String addUser(@Validated UosUif uosUif, BindingResult result, Model model) {
	        if (result.hasErrors()) {
	            return "new_uosuif";
	        }
	        uosUifService.save(uosUif);
	        List <UosUif> listUosUifs = uosUifService.listAll();
		    model.addAttribute("listUosUifs", listUosUifs);
	        return "redirect:/index";
	    }
	 
	 @RequestMapping("/edit/{id}")
	 public ModelAndView showEditProductPage(@PathVariable(name = "id") String id) {
	     ModelAndView mav = new ModelAndView("edit_uosuif");
	     UosUif uosUif = uosUifService.get(id);
	     mav.addObject("uosUif", uosUif);
	      
	     return mav;
	 }
	 @RequestMapping("/delete/{id}")
	 public String deleteProduct(@PathVariable(name = "id") String id) {
		 uosUifService.delete(id);
	     return "redirect:/";       
	 }
}
