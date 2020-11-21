package com.icebergv01.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.interfacerepository.UomMenuRepository;
import com.icebergv01.model.Navbar;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomMenuService {

	@Autowired
	private UomMenuRepository uomMenuRepo;

	public List<UomMenu> listAll() {
		return uomMenuRepo.findAll();
	}
	public List<UomMenu> findMenuByIdIn(List uomMenuIdList) {
		return uomMenuRepo.findMenuByIdIn(uomMenuIdList);
	}

	public void save(UomMenu uomMenu) {
		uomMenuRepo.save(uomMenu);
	}

	public UomMenu get(String id) {
		return uomMenuRepo.findById(id).get();
	}

	public void delete(String id) {
		uomMenuRepo.deleteById(id);
	}

	public List getUomMenuByParentId(String parentId) {
		return uomMenuRepo.findByParentId(parentId);
	}

	public List getMenuByParentId(String parentId, List listMenu) {
		System.out.println("getMenuByParentId");
		List listMenuParent = this.getUomMenuByParentId(parentId);
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

	public List getNavbarUomMenu() {
		List listMenu = this.getMenuByParentId("0", null);
		List listUomMenuTemp = listMenu;
		System.out.println("listMenu");
		UomMenu uomMenu = null;
		System.out.println("listMenu.size()" + listMenu.size());
		Navbar navbarPrev = null;
		List listNavbar = new ArrayList();
		for (int i = 0; i < listMenu.size(); i++) {
			uomMenu = (UomMenu) listMenu.get(i);
			Navbar navbar = new Navbar();
			navbar.setId(uomMenu.getId());
			navbar.setLabel(uomMenu.getLabel());
			navbar.setUrlAddr(uomMenu.getUrlAddr());
			navbar.setParentId(uomMenu.getParentId());
			navbar.setHasChild(GlobalConstant.FIELD_NOT_ACTIVE);
			if (navbarPrev == null) {
				navbar.setIsParent(GlobalConstant.FIELD_ACTIVE);
				navbar.setStatus(GlobalConstant.FIELD_NOT_ACTIVE);
			} else {
				if (navbarPrev.getId().toString().equals(navbar.getParentId().toString())) {
					navbar.setIsParent(GlobalConstant.FIELD_NOT_ACTIVE);
				} else {
					if (!navbar.getParentId().toString().equals(navbarPrev.getParentId().toString())) {
						navbar.setIsParent(GlobalConstant.FIELD_ACTIVE);
						navbar.setStatus(GlobalConstant.FIELD_ACTIVE);
					} else {
						navbar.setIsParent(GlobalConstant.FIELD_NOT_ACTIVE);
					}
				}
			}
			for (int j = 0; j < listUomMenuTemp.size(); j++) {
				UomMenu uomMenuTemp = (UomMenu) listUomMenuTemp.get(j);
				if (navbar.getId().toString().equals(uomMenuTemp.getParentId().toString())) {
					navbar.setHasChild(GlobalConstant.FIELD_ACTIVE);
					break;
				}
			}
			if (navbarPrev != null) {
				if (navbarPrev.getIsParent() != null) {
					if (navbarPrev.getIsParent().equals(GlobalConstant.FIELD_ACTIVE)) {
						if (navbarPrev.getHasChild().equals(GlobalConstant.FIELD_ACTIVE)) {
							navbar.setStatus(GlobalConstant.MENU_CHILD_FIRST);
						}
					} else {
						if (navbarPrev.getStatus() != null) {
							if (navbar.getIsParent().toString().equals(GlobalConstant.FIELD_NOT_ACTIVE)) {
								if (navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_FIRST)
										|| navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_MIDDLE)) {
									navbar.setStatus(GlobalConstant.MENU_CHILD_MIDDLE);
								}
							}
						}
					}
				}
			}
			if (navbar.getIsParent().toString().equals(GlobalConstant.FIELD_ACTIVE)) {
				if (navbarPrev != null) {
					listNavbar.remove(navbarPrev);
					navbarPrev.setStatus(GlobalConstant.MENU_CHILD_LAST);
					listNavbar.add(navbarPrev);
				}
			}
			if (i == listMenu.size() - 1) {
				if (navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_FIRST)
						|| navbarPrev.getStatus().equals(GlobalConstant.MENU_CHILD_MIDDLE)) {
					navbar.setStatus(GlobalConstant.MENU_LAST);
				}
			}
			listNavbar.add(navbar);
			navbarPrev = navbar;
		}
		return listNavbar;
	}
}
