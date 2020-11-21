package com.icebergv01.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.h2.engine.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Role;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icebergv01.configuration.GlobalConstant;

import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosUif;
import com.icebergv01.service.UomMenuService;


@Controller
public class LoginController extends GlobalConstant {

//    @Autowired
//    private UosUifService uosUifService;
//    @Autowired
//	private UomMenuService uomMenuService;
//    

    @RequestMapping(value={"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }


    @RequestMapping(value="/registration", method = RequestMethod.GET)
    public ModelAndView registration(){
        ModelAndView modelAndView = new ModelAndView();
        UosUif uosUif = new UosUif();
        modelAndView.addObject("uosUif", uosUif);
        modelAndView.setViewName("registration");
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView createNewUser(@Valid UosUif uosUif, BindingResult bindingResult) throws InterruptedException {
        ModelAndView modelAndView = new ModelAndView();
        UosUif uosUifExists = this.getUosUifService().findByUsername(uosUif.getUsername());
        if (uosUifExists != null) {
            bindingResult
                    .rejectValue("username", "error.user",
                            "There is already a user registered with the user name provided");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("registration");
        } else {
        	this.getUosUifService().saveUser(uosUif);
            modelAndView.addObject("successMessage", "User has been registered successfully");
            modelAndView.addObject("uosUif", new UosUif());
            modelAndView.setViewName("registration");
        }
        return modelAndView;
    }

    @RequestMapping(value="/admin/index", method = RequestMethod.GET)
    public ModelAndView home( HttpServletRequest request ){
    	System.out.println("adminIndex");
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        auth.getAuthorities().clear();
//        Set<String> roles = auth.getAuthorities().stream()
//        	     .map(r -> r.getAuthority()).collect(Collectors.toSet());
//        Iterator<String> it = roles.iterator();
//        while(it.hasNext()){
//           System.out.println(it.next());
//        }
//        roles.clear();
        List listNavbar = this.getUomMenuService().getNavbarUomMenu();
        UosUif uosUif = this.getUosUifService().findByUsername(auth.getName());
        modelAndView.addObject("username", "Welcome " + uosUif.getUsername() + "/" + uosUif.getFirstName()+ " " + uosUif.getLastName() + " (" + uosUif.getEmail() + ")");
        modelAndView.addObject("adminMessage","Content Available Only for Users with Admin Role");
        modelAndView.addObject("navbars", listNavbar);
        modelAndView.addObject("navbarsChild", listNavbar);
        modelAndView.setViewName("admin/index");
        ModelMap modelMap = new ModelMap();
        String fullName = uosUif.getFirstName() + " " + uosUif.getLastName();
        modelMap.addAttribute("fullName", fullName);
        modelMap.addAttribute("navbars", listNavbar);
		modelMap.addAttribute("navbarsChild", listNavbar);
		request.getSession().setAttribute("modelMap",modelMap);
		modelAndView.getModelMap().addAllAttributes(modelMap);		
        return modelAndView;
    }

    @RequestMapping(value="/admin/header", method = RequestMethod.GET)
    public ModelAndView adminHeader(){
    	System.out.println("adminHeader");
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UosUif uosUif = this.getUosUifService().findByUsername(auth.getName());
        modelAndView.addObject("username", "Welcome " + uosUif.getUsername() + "/" + uosUif.getFirstName()+ " " + uosUif.getLastName() + " (" + uosUif.getEmail() + ")");
        modelAndView.addObject("adminMessage"," Application");
        modelAndView.setViewName("admin/header");
        return new ModelAndView("admin/header");
    }
    @InitBinder
    private void dateBinder(WebDataBinder binder) {
        //The date format to parse or output your dates
        SimpleDateFormat dateFormat = new SimpleDateFormat(DEFAULT_DATE_FORMAT);
        //Create a new CustomDateEditor
        CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
        //Register it as custom editor for the Date type
        binder.registerCustomEditor(Date.class, editor);
    }
}