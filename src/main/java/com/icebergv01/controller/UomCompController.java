package com.icebergv01.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.resource.ResourceUrlProvider;
import org.springframework.web.util.UriTemplate;

import com.icebergv01.configuration.GlobalConstant;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosCompAddr;
import com.icebergv01.model.UosUif;
import com.icebergv01.service.UomCompService;
import com.icebergv01.service.UomMenuService;
import com.icebergv01.service.UosCompAddrService;

@Controller
public class UomCompController extends GlobalConstant {
	@Autowired
	private UomCompService uomCompService;
	@Autowired
	private UosCompAddrService uosCompAddrService;

	@RequestMapping(value = "/sys-admin/company", method = RequestMethod.GET)
	public ModelAndView viewHomePage(Model model, final HttpServletRequest request) {
//		ModelAndView modelAndView = new ModelAndView();
//		List listNavbar = this.getUomMenuService().getNavbarUomMenu();
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		UosUif uosUif = this.getUosUifService().findByUsername(auth.getName());
//		ModelMap modelMap = new ModelMap();
//		String fullName = uosUif.getFirstName() + " " + uosUif.getLastName();
//		modelMap.addAttribute("fullName", fullName);
//		modelMap.addAttribute("navbars", listNavbar);
//		modelMap.addAttribute("navbarsChild", listNavbar);
//		ModelMap modelMap = this.getDefaultModelMap();
//		modelMap.addAttribute("listUomComp", listUomComp);
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		UomComp uomComp = new UomComp();
		modelMap.addAttribute("uomComp", uomComp);
		List<UomComp> listUomComp = uomCompService.listAll();
		modelMap.addAttribute("listUomComp", listUomComp);
		modelMap.addAttribute("fragmentPath", "/sys-admin/indexcontentcompany");
		modelMap.addAttribute("fragmentInsert", "indexcompany");
		modelAndView.setViewName("sys-admin/company");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}

	@RequestMapping("/sys-admin/company/edit/{id}")
	public ModelAndView showEditCompanyPage(@PathVariable(name = "id") String id, final HttpServletRequest request) {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		
		
//		List listNavbar = this.getUomMenuService().getNavbarUomMenu();
//		UosUif uosUif = this.getUosUifService().findByUsername(auth.getName());
//		String fullName = uosUif.getFirstName() + " " + uosUif.getLastName();
//		modelMap.addAttribute("fullName", fullName);
//		modelMap.addAttribute("navbars", listNavbar);
//		modelMap.addAttribute("navbarsChild", listNavbar);
		if (!match) {
			modelAndView.setViewName("sys-admin/company");
			modelMap.addAttribute("fragmentPath", "/403");
			modelMap.addAttribute("fragmentInsert", "accessForbidden");
			modelAndView.getModelMap().addAllAttributes(modelMap);
			return modelAndView;
		}
//		ModelMap modelMap = this.getDefaultModelMap();
//		modelMap.addAttribute("listUomComp", listUomComp);
		UomComp uomComp = uomCompService.get(id);
		UosCompAddr uosCompAddr = uosCompAddrService.findByUomCompId(id);
		modelMap.addAttribute("uomComp", uomComp);
		modelMap.addAttribute("uosCompAddr", uosCompAddr);
//		List<UomComp> listUomComp = uomCompService.listAll();
//		modelMap.addAttribute("listUomComp", listUomComp);
		modelAndView.setViewName("sys-admin/company");
		modelMap.addAttribute("fragmentPath", "/sys-admin/editcontentcompany");
		modelMap.addAttribute("fragmentInsert", "editcompany");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}
}
