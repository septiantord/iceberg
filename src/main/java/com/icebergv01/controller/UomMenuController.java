package com.icebergv01.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.model.Navbar;
import com.icebergv01.model.UomMenu;
import com.icebergv01.service.UomMenuService;

@Controller
public class UomMenuController {
	@Autowired
	private UomMenuService uomMenuService;
	// handler methods...

	@RequestMapping("/admin/menu")
	public String viewHomePage(Model model) {
		List<UomMenu> listUomMenus = uomMenuService.listAll();
		model.addAttribute("listUomMenus", listUomMenus);
		return "menu";
	}

	@RequestMapping("/admin/navbar")
	public ModelAndView viewHomePageMenu(Model model) {
		System.out.println("viewHomePageMenu");
		ModelMap modelMap = new ModelMap();
//		List listMenu = getMenuByParentId("0", null);
//		List listUomMenuTemp = listMenu;
//		System.out.println("listMenu");
//		UomMenu uomMenu = null;
//		System.out.println("listMenu.size()" + listMenu.size());
//		Navbar navbarPrev = null;
		List listNavbar = new ArrayList();
//		for (int i = 0; i < listMenu.size(); i++) {
//			uomMenu = (UomMenu) listMenu.get(i);
//			Navbar navbar = new Navbar();
//			navbar.setId(uomMenu.getId());
//			navbar.setLabel(uomMenu.getLabel());
//			navbar.setUrlAddr(uomMenu.getUrlAddr());
//			navbar.setParentId(uomMenu.getParentId());
//			navbar.setHasChild(GlobalConstant.FIELD_NOT_ACTIVE);
//			if (navbarPrev == null) {
//				navbar.setIsParent(GlobalConstant.FIELD_ACTIVE);
//				navbar.setStatus(GlobalConstant.FIELD_NOT_ACTIVE);
//			} else {
//				if (navbarPrev.getId().toString().equals(navbar.getParentId().toString())) {
//					navbar.setIsParent(GlobalConstant.FIELD_NOT_ACTIVE);
//				} else {
//					if (!navbar.getParentId().toString().equals(navbarPrev.getParentId().toString())) {
//						navbar.setIsParent(GlobalConstant.FIELD_ACTIVE);
//						navbar.setStatus(GlobalConstant.FIELD_ACTIVE);
//					} else {
//						navbar.setIsParent(GlobalConstant.FIELD_NOT_ACTIVE);
//					}
//				}
//			}
//			for (int j = 0; j < listUomMenuTemp.size(); j++) {
//				UomMenu uomMenuTemp = (UomMenu) listUomMenuTemp.get(j);
//				if (navbar.getId().toString().equals(uomMenuTemp.getParentId().toString())) {
//					navbar.setHasChild(GlobalConstant.FIELD_ACTIVE);
//					break;
//				}
//			}
//			if (navbarPrev != null) {
//				if (navbarPrev.getIsParent() != null) {
//					if (navbarPrev.getIsParent().equals(GlobalConstant.FIELD_ACTIVE)) {
//						if (navbarPrev.getHasChild().equals(GlobalConstant.FIELD_ACTIVE)) {
//							navbar.setStatus(GlobalConstant.MENU_CHILD_FIRST);
//						}
//					} else {
//						if (navbarPrev.getStatus() != null) {
//							if (navbar.getIsParent().toString().equals(GlobalConstant.FIELD_NOT_ACTIVE)) {
//								if (navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_FIRST)
//										|| navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_MIDDLE)) {
//									navbar.setStatus(GlobalConstant.MENU_CHILD_MIDDLE);
//								}
//							}
//						}
//					}
//				}
//			}
//
//			if (navbar.getIsParent().toString().equals(GlobalConstant.FIELD_ACTIVE)) {
//				if (navbarPrev != null) {
//					listNavbar.remove(navbarPrev);
//					navbarPrev.setStatus(GlobalConstant.MENU_CHILD_LAST);
//					listNavbar.add(navbarPrev);
//				}
//			}
//			if (i == listMenu.size() - 1) {
//				if (navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_FIRST)
//						|| navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_MIDDLE)) {
//					navbar.setStatus(GlobalConstant.MENU_LAST);
//				}
//
//			}
//			listNavbar.add(navbar);
//			navbarPrev = navbar;
//		}
		listNavbar = uomMenuService.getNavbarUomMenu();
		for (int i = 0; i < listNavbar.size(); i++) {
			Navbar navbar = (Navbar) listNavbar.get(i);
			System.out.print("id>>" + navbar.getId());
			System.out.print("navbar>>" + navbar.getLabel());
			System.out.print("  isparent>>" + navbar.getIsParent());
			System.out.print("  has child>>" + navbar.getHasChild());
			System.out.println("  prevStatus>>" + navbar.getStatus());
		}
//		modelMap.addAttribute("menuList", listMenu);
		modelMap.addAttribute("navbars", listNavbar);
		modelMap.addAttribute("navbarsChild", listNavbar);
		modelMap.addAttribute("mn", new UomMenu());
		return new ModelAndView("/admin/navbar", modelMap);
	}

	@RequestMapping("/admin/menu/new")
	public String showNewUomMenu(Model model) {
		UomMenu uomMenu = new UomMenu();
		model.addAttribute("uomMenu", uomMenu);
		return "new_uommenu";
	}

//	 @RequestMapping("/save")
//	 public String saveUomMenu(Model model) {
//	     UomMenu uomMenu = new UomMenu();
//	     model.addAttribute("uomMenu", uomMenu);
//	     uomMenuService.save(uomMenu);
//	     return "index";
//	 }
	@PostMapping("/admin/menu/save")
	public String addUser(@Validated UomMenu uomMenu, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "new_uommenu";
		}
		uomMenuService.save(uomMenu);
		List<UomMenu> listUomMenus = uomMenuService.listAll();
		model.addAttribute("listUomMenus", listUomMenus);
		return "redirect:/admin/menu";
	}

	public List getMenuByParentId(String parentId, List listMenu) {
		System.out.println("getMenuByParentId");
		List listMenuParent = uomMenuService.getUomMenuByParentId(parentId);
		if (listMenu == null) {
			listMenu = new ArrayList();
		}
		if (listMenuParent != null) {
			for (int i = 0; i < listMenuParent.size(); i++) {
				UomMenu uomMenu = (UomMenu) listMenuParent.get(i);
				System.out.println(uomMenu.getId());
				listMenu.add(uomMenu);
				parentId = uomMenu.getId();
				getMenuByParentId(parentId, listMenu);
			}

		}
		return listMenu;

	}

	@RequestMapping("/admin/menu/edit/{id}")
	public ModelAndView showEditProductPage(@PathVariable(name = "id") String id) {
		ModelAndView mav = new ModelAndView("edit_uommenu");
		UomMenu uomMenu = uomMenuService.get(id);
		mav.addObject("uomMenu", uomMenu);

		return mav;
	}

	@RequestMapping("/admin/menu/delete/{id}")
	public String deleteProduct(@PathVariable(name = "id") String id) {
		uomMenuService.delete(id);
		return "redirect:/admin/menu";
	}
}
