package com.icebergv01.configuration;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.PathMatcher;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RestController;

import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UomMenuRole;
import com.icebergv01.model.UomRole;
import com.icebergv01.model.UosUif;
import com.icebergv01.service.UomCompService;
import com.icebergv01.service.UomMenuRoleService;
import com.icebergv01.service.UomMenuService;
import com.icebergv01.service.UosUifService;


public class GlobalConstant implements PathMatcher {
	public static final String FIELD_ACTIVE = "Y";
	public static final String FIELD_NOT_ACTIVE = "N";
	public static final String MENU_CHILD_FIRST = "CF";
	public static final String MENU_CHILD_MIDDLE = "CM";
	public static final String MENU_CHILD_LAST = "CL";
	public static final String MENU_LAST = "LA";
	public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd";
	public static final String DEFAULT_DATE_FORMAT_WITH_TIME = "yyyy-MM-dd HH.mm.ss";

	@Autowired
	private UosUifService uosUifService;
	@Autowired
	private UomMenuService uomMenuService;
	@Autowired
	private UomMenuRoleService uomMenuRoleService;
	private String pathSeparator = "/";
	private boolean trimTokens = false;
	private String fullName;
	private List roleString;
	private List uomRoleList;
	private ModelMap defaultModelMap; 
	public Authentication auth = SecurityContextHolder.getContext().getAuthentication();

	private UUID uuid;
	private Timestamp timestamp;
	Date date = new Date();
	private String idGenerator;
	

	public UUID getUuid() {
		uuid = UUID.randomUUID();
		return uuid;
	}

	public void setUuid(UUID uuid) {
		this.uuid = uuid;
	}

	public Timestamp getTimestamp() {
		timestamp = new Timestamp(System.currentTimeMillis());
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public String getIdGenerator() {
		Date date = new Date();
		date.setTime(this.getTimestamp().getTime());
		String formattedDate = new SimpleDateFormat("yyyyMMdd").format(date);
		idGenerator = formattedDate + "." + this.getUuid().toString();
		return idGenerator;
	}
	public String getCurrentDate() {
		DateFormat dateFormatYMD = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		date.setTime(this.getTimestamp().getTime());
		String dateStr =dateFormatYMD.format(date);
		return dateStr;
	}

	public void setIdGenerator(String idGenerator) {
		this.idGenerator = idGenerator;
	}

	public String getFullName() {
		UosUif uosUif = this.uosUifService.findByUsername(auth.getName());
		fullName = uosUif.getFirstName() + " " + uosUif.getLastName();
		return fullName;
	}

	public List getRoleString() {
		roleString = new ArrayList();
		Set roles = auth.getAuthorities().stream().map(r -> r.getAuthority()).collect(Collectors.toSet());
		Iterator<String> it = roles.iterator();
		while (it.hasNext()) {
			roleString.add(it.next().toString());
		}
		return roleString;
	}
	public List getUomRoleList() {
		UomRole uomRole;
		uomRoleList = new ArrayList();
		Set roles = auth.getAuthorities().stream().map(r -> r.getAuthority()).collect(Collectors.toSet());
		Iterator<String> it = roles.iterator();
		while (it.hasNext()) {
			uomRole= new UomRole();
			uomRole.setId(it.next().toString());
			uomRoleList.add(uomRole);
		}
		return uomRoleList;
	}
	public List getListNavbar() {
		List listNavbar = this.uomMenuService.getNavbarUomMenu();
		return listNavbar;
	}
	public ModelMap getDefaultModelMap(HttpServletRequest request) {
		defaultModelMap = (ModelMap)request.getSession().getAttribute("modelMap");
		if(defaultModelMap == null) {
			String fullName = this.getFullName();
			List roleString = this.getRoleString();
			List listNavbar = this.getListNavbar();
			defaultModelMap = new ModelMap();
			defaultModelMap.addAttribute("fullName", fullName);
			defaultModelMap.addAttribute("navbars", listNavbar);
			defaultModelMap.addAttribute("navbarsChild", listNavbar);
		}
		return defaultModelMap;
	}
	public UosUifService getUosUifService() {
		return this.uosUifService;	
	}
	public UomMenuService getUomMenuService() {
		return this.uomMenuService;
	}

	@Override
	public boolean isPattern(String path) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean match(String pattern, String path) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean matchStart(String pattern, String path) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String extractPathWithinPattern(String pattern, String path) {
		// TODO Auto-generated method stub
		String[] patternParts = StringUtils.tokenizeToStringArray(pattern, this.pathSeparator, this.trimTokens, true);
		String[] pathParts = StringUtils.tokenizeToStringArray(path, this.pathSeparator, this.trimTokens, true);
		StringBuilder builder = new StringBuilder();
		builder.append(this.pathSeparator);
		boolean pathStarted = false;

		for (int segment = 0; segment < patternParts.length; segment++) {
			String patternPart = patternParts[segment];
			if (patternPart.indexOf('{') == -1) {
					builder.append(patternPart);
					builder.append(this.pathSeparator);
					pathStarted = true;
				
			}
		}
		return builder.toString();
	}

	@Override
	public Map<String, String> extractUriTemplateVariables(String pattern, String path) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comparator<String> getPatternComparator(String path) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String combine(String pattern1, String pattern2) {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean uomMenuMatchUomRole(String path) {
		List uomMenuRoleList = uomMenuRoleService.findUomMenuRoleByUomRole(this.getUomRoleList());
		List listUomMenuId	= new ArrayList();
		UomMenuRole uomMenuRole;
		for (int i = 0; i < uomMenuRoleList.size(); i++) {
			uomMenuRole = (UomMenuRole) uomMenuRoleList.get(i);
			listUomMenuId.add(uomMenuRole.getUomMenu().getId());
		}
		List listUomMenu = this.uomMenuService.findMenuByIdIn(listUomMenuId);
		for (int i = 0; i < listUomMenu.size(); i++) {
			UomMenu uomMenu = (UomMenu)listUomMenu.get(i);
			if(uomMenu.getUrlAddr().trim()!="" && !uomMenu.getUrlAddr().trim().equals("/")) {
				if(path.contains(uomMenu.getUrlAddr())) {
					return true;
				}
			}
		}
		return false;
	}
}
