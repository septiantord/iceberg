package com.icebergv01.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.provider.HibernateUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMaterial;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerAddr;
import com.icebergv01.model.UosBusinessPartnerPhon;
import com.icebergv01.model.UosUif;
import com.icebergv01.modelhelper.DateRange;
import com.icebergv01.modelhelper.TrSalesDetailObject;
import com.icebergv01.modelhelper.TrSalesHelper;
import com.icebergv01.modelhelper.TrSalesObject;
import com.icebergv01.modelhelper.UomMaterialHelper;
import com.icebergv01.modelhelper.UosBusinessPartnerHelper;
import com.icebergv01.service.TrSalesDetailService;
import com.icebergv01.service.TrSalesService;
import com.icebergv01.service.UomCompService;
import com.icebergv01.service.UomMaterialService;
import com.icebergv01.service.UosBusinessPartnerService;

@Controller
public class TrSalesController extends GlobalConstant  {
	@Autowired
	private TrSalesService trSalesService;
	@Autowired
	private UomMaterialService uomMaterialService;
	@Autowired
	private UosBusinessPartnerService uosBusinessPartnerService;
	@Autowired
	private TrSalesDetailService trSalesDetailService;

	
	@RequestMapping(value = "/user/create-sales-order", method = RequestMethod.GET)
	public ModelAndView viewHomePage(Model model, final HttpServletRequest request) {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		TrSalesDetail trSalesDetail;
		UosBusinessPartner uosBusinessPartner = new UosBusinessPartner();
		UosBusinessPartnerPhon uosBusinessPartnerPhon = new UosBusinessPartnerPhon();
		UosBusinessPartnerAddr uosBusinessPartnerAddr = new UosBusinessPartnerAddr();
		UosBusinessPartnerHelper uosBusinessPartnerHelper = new UosBusinessPartnerHelper();
		TrSalesHelper trSalesHelper = new TrSalesHelper();
		List<UomMaterial> listUomMaterial = uomMaterialService.findByIsProductAndIsDeleteAndIsActive(
				GlobalConstant.FIELD_ACTIVE, GlobalConstant.FIELD_NOT_ACTIVE, GlobalConstant.FIELD_ACTIVE);
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		for (int i = 0; i < listUomMaterial.size(); i++) {
			UomMaterial uomMaterial = (UomMaterial) listUomMaterial.get(i);
			trSalesDetail = new TrSalesDetail();
			trSalesDetail.setUomMaterial(uomMaterial);
			listTrSalesDetail.add(trSalesDetail);
		}
		UomMaterial uomMaterial = new UomMaterial();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUomMaterial(listUomMaterial);
//		trSalesHelper.setListUomMaterialHelper(listUomMaterialHelper);
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		trSalesHelper.setUosBusinessPartnerHelper(uosBusinessPartnerHelper);
		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);

//		List<UomComp> listUomComp = uomCompService.listAll();
		modelMap.addAttribute("listUomMaterial", listUomMaterial);
		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		/*
		 * modelMap.addAttribute("listUomMaterialHelper", listUomMaterialHelper);
		 * modelMap.addAttribute("listUosBusinessPartnerHelper",
		 * listUosBusinessPartnerHelper);
		 */
//		modelMap.addAttribute("uomMaterial", uomMaterial);
//		modelMap.addAttribute("uosBusinessPartnerHelper", uosBusinessPartnerHelper);
		modelMap.addAttribute("uosBusinessPartner", uosBusinessPartner);
		modelMap.addAttribute("fragmentPath", "/user/sales/createcontentsales");
		modelMap.addAttribute("fragmentInsert", "createsales");
//		modelMap.addAttribute("fragmentInsert", "indexcompany");
//		modelAndView.setViewName("sys-admin/company");
		modelAndView.setViewName("user/sales/sales-order");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}

	@PostMapping("/user/sales/save")
	public ModelAndView addTrSales(@Validated TrSalesHelper trSalesHelper, BindingResult result,
			HttpServletRequest request) throws InterruptedException {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		trSales.setId(this.getIdGenerator());
		int counter = 0;
		BigDecimal totalPrice = new BigDecimal(0);
		System.out.println("id==" + trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
		List<TrSalesDetail> listTrSalesDetailFromScreen = trSalesHelper.getListTrSalesDetail();
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
//		trSales.setId(this.getIdGenerator());
		for (TrSalesDetail trSalesDetail : listTrSalesDetailFromScreen) {
			if (trSalesDetail.getQty() > 0) {
				if (counter == 0) {
					trSales.setUosBusinessPartnerId(
							trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
					trSales.setCreatedBy(uosUif.getUsername());
					trSales.setUpdatedBy(uosUif.getUsername());
					trSales.setDeliveredBy(trSalesHelper.getTrSales().getDeliveredBy());
					trSales.setDeliveryCost(trSalesHelper.getTrSales().getDeliveryCost());
					totalPrice = totalPrice.add(trSalesHelper.getTrSales().getDeliveryCost());
					trSales.setTotalPrice(trSalesHelper.getTrSales().getTotalPrice());
					trSales.setUpdatedDate(getTimestamp());
					trSales.setCreatedDate(getTimestamp());
					trSales.setPaymentReceivedBy(GlobalConstant.FIELD_ACTIVE);
					trSales.setUosUifUsername(uosUif.getUsername());
					Long long1 = trSalesService.countTrSales(getCurrentDate());
					trSales.setIdentityNo(long1 + 1);
					try {
						trSalesService.saveAndFlush(trSales);

					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
//					trSalesService.wait(10);
					String id = trSales.getId();
//					id="20200803.78ac1bb0-e694-42fb-a08f-0d107fe1e56b";
					trSales = new TrSales();
					trSales = trSalesService.getOne(id);
					counter++;
				}
				trSalesDetail.setId(this.getIdGenerator());
				trSalesDetail.setPrice(trSalesDetail.getUomMaterial().getPrice());
				BigDecimal subTotal = trSalesDetail.getPrice().multiply(new BigDecimal(trSalesDetail.getQty()));
				totalPrice = totalPrice.add(subTotal);
				trSalesDetail.setSubTotalPrice(subTotal);
				trSalesDetail.setTrSales(trSales);
				trSales.addTrSalesDetail(trSalesDetail);
				trSalesDetailService.saveAndFlush(trSalesDetail);
				listTrSalesDetail.add(trSalesDetail);
			}
		}
		if (result.hasErrors()) {
			return modelAndView;
		}
		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		trSales.setTotalPrice(totalPrice);
		trSalesService.saveAndFlush(trSales);
		trSalesHelper.setTrSales(trSales);
		
//		Comment get data tobe print tag html
//		List<TrSalesDetail> listTrSalesDetailFromScreen = trSalesHelper.getListTrSalesDetail();
//		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		StringBuffer sb = new StringBuffer();
		sb.append("<html>");
		sb.append("<head>");
		
//		sb.append("<link rel=\"stylesheet\" "
//				+ "type=\"text/css\""
//				+ "href=\"../../plugins/stylepar.css\" ");
//				+ "th:href=\"@{/plugins/stylepar.css}\">"
		
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<div class=\"ticket\" id=\"ticket\" style=\"font-size:12px; font-family: 'Times New Roman'; width: 155px; max-width: 155px\">");
		sb.append("<p class=\"centered\">");
//		sb.append("<h5>");
		sb.append(trSalesHelper.getTrSales().getCreatedDate());
		sb.append("<br>");
		sb.append(trSalesHelper.getTrSales().getId());
		sb.append("<br>");
		sb.append(trSalesHelper.getTrSales().getIdentityNo());
//		sb.append("</h5>");
		sb.append("<br>");
		sb.append("<center>");
//		sb.append("<h3>");
		sb.append("Bakmi Mampang");
		sb.append("<br>");
		sb.append("Jl. Warung Buncit Raya No.11");
		sb.append("<br>");
		sb.append("0821-1149-5001" + "<br>" + 
				"0818-744-303");
		sb.append("<br>");
//		sb.append("</h3>");
		sb.append("</center>");
		
		if (trSalesHelper.getUosBusinessPartnerHelper().getFirstName() != null) {
			sb.append("Delivery To:");
			sb.append("<br>");
			if (trSalesHelper.getUosBusinessPartnerHelper().getFirstName() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getFirstName());
				sb.append("<br>");
			}
		}
		if (trSalesHelper.getUosBusinessPartnerHelper().getAddress() != null) {
			if (trSalesHelper.getUosBusinessPartnerHelper().getAddress() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getAddress());
				sb.append("<br>");
			}
		}
		if (trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber() != null) {
			if (trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber());
				sb.append("<br>");
			}
		}
		sb.append("</p>");
		
//		sb.append("<table style='font-family: monospace; width: 100%'>");
		sb.append("<table style =\"border-top: 1px solid black; border-collapse: collapse ;font-size:12px; font-family: 'Times New Roman'; width: 155px; max-width: 155px\">");
		sb.append("<thead>");
		sb.append("<tr>");
		sb.append(" <th class=\"quantity\" style= \"width: 40px; max-width: 40px ;\">Q.</th>");
		sb.append("<th class=\"description\" style=\"width: 75px; max-width: 75px ;\">Description</th>");
		sb.append("<th class=\"price\" style= \"width: 40px; max-width: 40px ;\">IDR</th>");
		sb.append("</tr>");
		sb.append("</thead>");
		sb.append("<tbody>");
		for (int i = 0; i < trSalesHelper.getListTrSalesDetail().size(); i++) {
			sb.append("<tr border-top=\"1px\">");
			
			TrSalesDetail trSalesDetail = (TrSalesDetail) trSalesHelper.getListTrSalesDetail().get(i);
			sb.append("<td class=\"quantity\" style=\"border-top: 1px solid black; width: 40px; max-width: 40px\">");
			sb.append(trSalesDetail.getQty());
			sb.append("</td>");
			sb.append("<td class=\"description\" style=\"border-top: 1px solid black; style='width: 75px; max-width: 75px\">");
			sb.append(trSalesDetail.getUomMaterial().getDescription());
			sb.append("</td>");
			sb.append("<td class=\"price\" style=\"border-top: 1px solid black; width: 40px; max-width: 40px\">");
			sb.append("<p align='right'>"); 
			sb.append(trSalesDetail.getSubTotalPrice());
			sb.append("</p>");
			sb.append("</td>");
			trSalesDetail.getQty();
			trSalesDetail.getUomMaterial().getDescription();
			trSalesDetail.getSubTotalPrice();
			sb.append("</tr>");
		}
		sb.append("</tbody>");
		sb.append("</table>");
		sb.append("<br>");
//		sb.append("<hr>");
		sb.append("<p align='right'>"); 
		sb.append("Deliv Cost : ");
		sb.append(trSalesHelper.getTrSales().getDeliveryCost());
		sb.append("</p>");
//		sb.append("<br>");
//		sb.append("<hr>");
//		sb.append("<h3>");
		sb.append("<p align='right'><b>");
		sb.append("TOTAL : ");
		sb.append(trSalesHelper.getTrSales().getTotalPrice());
		sb.append("</b></p>");
//		sb.append("<h3>");
		sb.append("<br>");
		sb.append("<hr>");
		sb.append("<div>");
		sb.append("<body>");
		sb.append("</html>");

		// trSales.setId(this.getIdGenerator());
		// trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		/* trSalesService.saveAndFlush(trSales); */
//		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
//		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		System.out.println(sb.toString());
		modelMap.addAttribute("printTagHTML", sb.toString());
//		end Comment get data tobe print tag html		
		
		
		modelMap.addAttribute("trSales", trSales);
		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		modelMap.addAttribute("fragmentPath", "/user/sales/createcontentsalesinvoice");
		modelMap.addAttribute("fragmentInsert", "salesinvoice");
		modelAndView.setViewName("user/sales/sales-order");
//		uomMenuService.save(uomMenu);
//		List<UomMenu> listUomMenus = uomMenuService.listAll();
//		model.addAttribute("listUomMenus", listUomMenus);
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}

//	@PostMapping("/user/sales/print" )
	@RequestMapping(value = "/user/sales/print", method = RequestMethod.POST, params = { "btnPrintInvoice" })
	public ModelAndView printTrSales(@Validated TrSalesHelper trSalesHelper, BindingResult result,
			HttpServletRequest request) throws InterruptedException {
		System.out.println("printTrSales");
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		/*
		 * UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		 */
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		int counter = 0;
		/*
		 * System.out.println("id==" +
		 * trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
		 */
		List<TrSalesDetail> listTrSalesDetailFromScreen = trSalesHelper.getListTrSalesDetail();
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
//		trSales.setId(this.getIdGenerator());
//		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		/* trSalesService.saveAndFlush(trSales); */
		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		/*
		 * modelMap.addAttribute("fragmentPath",
		 * "/user/sales/createcontentsalesinvoice");
		 * modelMap.addAttribute("fragmentInsert", "salesinvoice");
		 */
		modelAndView.setViewName("user/sales/printcontentsalesinvoice");
//		uomMenuService.save(uomMenu);
//		List<UomMenu> listUomMenus = uomMenuService.listAll();
//		model.addAttribute("listUomMenus", listUomMenus);
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}

	@RequestMapping(value = "/user/report-sales-order", method = RequestMethod.GET)
	public ModelAndView viewReportHomePage(Model model, final HttpServletRequest request) {
//		BELUM DI TEST
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		TrSalesDetail trSalesDetail;
		UosBusinessPartner uosBusinessPartner = new UosBusinessPartner();
		UosBusinessPartnerPhon uosBusinessPartnerPhon = new UosBusinessPartnerPhon();
		UosBusinessPartnerAddr uosBusinessPartnerAddr = new UosBusinessPartnerAddr();
		UosBusinessPartnerHelper uosBusinessPartnerHelper = new UosBusinessPartnerHelper();
		TrSalesHelper trSalesHelper = new TrSalesHelper();
		UomMaterial uomMaterial = new UomMaterial();
		List<UomMaterial> listUomMaterial = uomMaterialService.findByIsProductAndIsDeleteAndIsActive(
				GlobalConstant.FIELD_ACTIVE, GlobalConstant.FIELD_NOT_ACTIVE, GlobalConstant.FIELD_ACTIVE);
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		for (int i = 0; i < listUomMaterial.size(); i++) {
			uomMaterial = (UomMaterial) listUomMaterial.get(i);
			trSalesDetail = new TrSalesDetail();
			trSalesDetail.setUomMaterial(uomMaterial);
			listTrSalesDetail.add(trSalesDetail);
		}
		uomMaterial = new UomMaterial();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		trSalesHelper.setListUomMaterial(listUomMaterial);
//		trSalesHelper.setListUomMaterialHelper(listUomMaterialHelper);
		
		trSalesHelper.setUosBusinessPartnerHelper(uosBusinessPartnerHelper);
		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		DateRange dateRange = new DateRange();
		dateRange.setDateFrom(new Date());
		dateRange.setDateTo(new Date());
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		trSalesHelper.setUomMaterial(uomMaterial);
//		List<UomComp> listUomComp = uomCompService.listAll();
		/*
		 * modelMap.addAttribute("listUomMaterial", listUomMaterial);
		 * modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		 */
		/*
		 * modelMap.addAttribute("listUomMaterialHelper", listUomMaterialHelper);
		 * modelMap.addAttribute("listUosBusinessPartnerHelper",
		 * listUosBusinessPartnerHelper);
		 */
//		modelMap.addAttribute("uomMaterial", uomMaterial);
//		modelMap.addAttribute("uosBusinessPartnerHelper", uosBusinessPartnerHelper);
		modelMap.addAttribute("uosBusinessPartner", uosBusinessPartner);
		modelMap.addAttribute("fragmentPath", "/user/sales/reportcontentsales");
		modelMap.addAttribute("fragmentInsert", "reportsales");
//		modelMap.addAttribute("fragmentInsert", "indexcompany");
//		modelAndView.setViewName("sys-admin/company");
		modelAndView.setViewName("user/sales/sales-order");
//		modelAndView.setViewName("user/sales/reportcontentsales");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}
//	@RequestMapping(value = "/user/report-sales-order", method = RequestMethod.GET)
	@RequestMapping(value = "/user/sales/reportdisplaydata", method = RequestMethod.GET)
	public ModelAndView getTrSales(@Validated TrSalesHelper trSalesHelper, BindingResult result,
			HttpServletRequest request) throws InterruptedException {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		trSales.setId(this.getIdGenerator());
		int counter = 0;
		System.out.println("id==" + trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
		System.out.println("dateFrom==" + trSalesHelper.getDateRange().getDateFrom());
		System.out.println("dateTo==" + trSalesHelper.getDateRange().getDateTo());
		String dateStrFrom = "";
		String dateStrTo = ""; 
		DateFormat dateFormatYMD = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		if(trSalesHelper.getDateRange().getDateFrom()!= null) {
			dateStrFrom =dateFormatYMD.format(trSalesHelper.getDateRange().getDateFrom());
		}
		else {
			dateStrFrom = this.getCurrentDate();
		}
		System.out.println("dateStrFrom==" + dateStrFrom);
		if(trSalesHelper.getDateRange().getDateTo()!= null) {
			dateStrTo =dateFormatYMD.format(trSalesHelper.getDateRange().getDateTo());
			dateStrTo = dateStrTo +" 23:59:59";
		}else {
			dateStrTo = this.getCurrentDate();
			dateStrTo = dateStrTo +" 23:59:59";
//			dateStrTo.concat(" 23:59:59");
		}
		System.out.println("dateTo==" + dateStrTo);
		List <TrSalesObject> listTrSalesFrService = trSalesService.getTrSalesUsingDateParameters(dateStrFrom, dateStrTo);
		System.out.println("listTrSales.size =="+ listTrSalesFrService.size());
//		List <UosBusinessPartnerHelper>listUosBusinessPartnerHelper = trSalesHelper.getListUosBusinessPartnerHelper();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		UosBusinessPartner uosBusinessPartner;
		UosBusinessPartnerHelper uosBusinessPartnerHelper;
		List <TrSalesObject> listTrSales = new ArrayList<TrSalesObject>();
		if(listTrSalesFrService!=null) {
			for (int i = 0; i < listTrSalesFrService.size(); i++) {
				TrSalesObject trSalesObject = listTrSalesFrService.get(i);
				uosBusinessPartner = new UosBusinessPartner();
				uosBusinessPartner.setId(trSalesObject.getUosBusinessPartnerId());
				for (int j = 0; j < listUosBusinessPartnerHelper.size(); j++) {
					uosBusinessPartnerHelper = listUosBusinessPartnerHelper.get(j);
					if(uosBusinessPartnerHelper != null) {
						if(trSalesObject.getUosBusinessPartnerId().equals(uosBusinessPartnerHelper.getUosBusinessPartner().getId())) {
							BeanUtils.copyProperties(uosBusinessPartnerHelper.getUosBusinessPartner(), uosBusinessPartner);
							trSalesObject.setUosBusinessPartner(uosBusinessPartner);
						}
					}
				}
				listTrSales.add(trSalesObject);
			}
		}
		
		trSalesHelper.setListTrSales(listTrSales);
		modelMap.addAttribute("trSales", trSales);
//		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
//		modelMap.addAttribute("fragmentPath", "/user/sales/createcontentsalesinvoice");
//		modelMap.addAttribute("fragmentInsert", "salesinvoice");
		modelMap.addAttribute("fragmentPath", "/user/sales/reportcontentsales");
		modelMap.addAttribute("fragmentInsert", "reportsales");
		modelAndView.setViewName("user/sales/sales-order");
//		uomMenuService.save(uomMenu);
//		List<UomMenu> listUomMenus = uomMenuService.listAll();
//		model.addAttribute("listUomMenus", listUomMenus);
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;

	}

	@RequestMapping(value = "/user/sales/print", method = RequestMethod.POST, params = { "btnPrintSalesOrderDetail" })
	public ModelAndView printTrSalesDetail(@Validated TrSalesHelper trSalesHelper, BindingResult result,
			HttpServletRequest request) throws InterruptedException {

		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		/*
		 * UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		 */
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		int counter = 0;
		/*
		 * System.out.println("id==" +
		 * trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
		 */
		List<TrSalesDetail> listTrSalesDetailFromScreen = trSalesHelper.getListTrSalesDetail();
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		StringBuffer sb = new StringBuffer();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<p class=\"centered\">");
		sb.append(trSalesHelper.getTrSales().getCreatedDate());
		sb.append("<br>");
		sb.append(trSalesHelper.getTrSales().getId());
		sb.append("<br>");
		sb.append(trSalesHelper.getTrSales().getIdentityNo());
		sb.append("<br>");
		sb.append("<center>");
		sb.append("<h2>");
		sb.append("BM");
		sb.append("<br>");
		sb.append("alamat");
		sb.append("<br>");
		sb.append("telpon");
		sb.append("<br>");
		sb.append("</h2>");
		sb.append("</center>");
		
		if (trSalesHelper.getUosBusinessPartnerHelper().getFirstName() != null) {
			if (trSalesHelper.getUosBusinessPartnerHelper().getFirstName() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getFirstName());
				sb.append("<br>");
			}
		}
		if (trSalesHelper.getUosBusinessPartnerHelper().getAddress() != null) {
			if (trSalesHelper.getUosBusinessPartnerHelper().getAddress() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getAddress());
				sb.append("<br>");
			}
		}
		if (trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber() != null) {
			if (trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber() != "") {
				sb.append(trSalesHelper.getUosBusinessPartnerHelper().getPhoneNumber());
				sb.append("<br>");
			}
		}
		sb.append("</p>");
		
		sb.append("<table style='font-family: monospace; width: 100%'>");
		sb.append("<thead>");
		sb.append("<tr>");
		sb.append(" <th class=\"quantity\">Q.</th>");
		sb.append("<th class=\"description\">Description</th>");
		sb.append("<th class=\"price\">IDR</th>");
		sb.append("</tr>");
		sb.append("</thead>");
		sb.append("<tbody>");
		for (int i = 0; i < trSalesHelper.getListTrSalesDetail().size(); i++) {
			sb.append("<tr>");
			
			TrSalesDetail trSalesDetail = (TrSalesDetail) trSalesHelper.getListTrSalesDetail().get(i);
			sb.append("<td class=\"quantity\">");
			sb.append(trSalesDetail.getQty());
			sb.append("</td>");
			sb.append("<td class=\"description\">");
			sb.append(trSalesDetail.getUomMaterial().getDescription());
			sb.append("</td>");
			sb.append("<td class=\"price\">");
			sb.append("<p align='right'>"); 
			sb.append(trSalesDetail.getSubTotalPrice());
			sb.append("</p>");
			sb.append("</td>");
			trSalesDetail.getQty();
			trSalesDetail.getUomMaterial().getDescription();
			trSalesDetail.getSubTotalPrice();
			sb.append("</tr>");
		}
		sb.append("</tbody>");
		sb.append("</table>");
		sb.append("<br>");
		sb.append("<hr>");
		sb.append("Deliv Cost");
		sb.append("<p align='right'>"); 
		sb.append(trSalesHelper.getTrSales().getDeliveryCost());
		sb.append("</p>");
		sb.append("<br>");
		sb.append("<hr>");
		sb.append("TOTAL");
		sb.append("<p align='right'>");
		sb.append(trSalesHelper.getTrSales().getTotalPrice());
		sb.append("</p>");
		sb.append("<br>");
		sb.append("<hr>");
		sb.append("<hr>");
		sb.append("<body>");
		sb.append("</html>");

		// trSales.setId(this.getIdGenerator());
		// trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		/* trSalesService.saveAndFlush(trSales); */
		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		System.out.println(sb.toString());
		modelMap.addAttribute("printTagHTML", sb.toString());
		/*
		 * modelMap.addAttribute("fragmentPath",
		 * "/user/sales/createcontentsalesinvoice");
		 * modelMap.addAttribute("fragmentInsert", "salesinvoice");
		 */
		modelAndView.setViewName("user/sales/printcontentsalesorderdetail");
		// uomMenuService.save(uomMenu);
		// List<UomMenu> listUomMenus = uomMenuService.listAll();
		// model.addAttribute("listUomMenus", listUomMenus);
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}
	/*
	 * public ModelAndView printTrSalesDetail(@Validated TrSalesHelper
	 * trSalesHelper, BindingResult result, HttpServletRequest request) throws
	 * InterruptedException {
	 * 
	 * String path1 = (String)
	 * request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
	 * String bestMatchPattern = (String)
	 * request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE); String
	 * finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
	 * System.out.println("finalPath: " + finalPath); System.out.println("path1: " +
	 * path1); this.auth = SecurityContextHolder.getContext().getAuthentication();
	 * UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
	 * boolean match = this.uomMenuMatchUomRole(finalPath);
	 * System.out.println("match: " + match); ModelMap modelMap = new ModelMap();
	 * ModelAndView modelAndView = new ModelAndView(); modelMap =
	 * this.getDefaultModelMap(request); int counter = 0 ; System.out.println("id=="
	 * + trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
	 * List <TrSalesDetail>listTrSalesDetailFromScreen =
	 * trSalesHelper.getListTrSalesDetail(); List <TrSalesDetail>listTrSalesDetail =
	 * new ArrayList<TrSalesDetail>(); // trSales.setId(this.getIdGenerator()); //
	 * trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
	 * trSalesService.saveAndFlush(trSales);
	 * modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
	 * modelMap.addAttribute("trSalesHelper", trSalesHelper);
	 * modelMap.addAttribute("fragmentPath",
	 * "/user/sales/createcontentsalesinvoice");
	 * modelMap.addAttribute("fragmentInsert", "salesinvoice");
	 * modelAndView.setViewName("user/sales/printcontentsalesorderdetail"); //
	 * uomMenuService.save(uomMenu); // List<UomMenu> listUomMenus =
	 * uomMenuService.listAll(); // model.addAttribute("listUomMenus",
	 * listUomMenus); modelAndView.getModelMap().addAllAttributes(modelMap); return
	 * modelAndView; }
	 */
	@RequestMapping(value = "/user/edit-sales-order", method = RequestMethod.GET)
	public ModelAndView viewHomeEditPage(Model model, final HttpServletRequest request) {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		TrSalesDetail trSalesDetail;
		UosBusinessPartner uosBusinessPartner = new UosBusinessPartner();
		UosBusinessPartnerPhon uosBusinessPartnerPhon = new UosBusinessPartnerPhon();
		UosBusinessPartnerAddr uosBusinessPartnerAddr = new UosBusinessPartnerAddr();
		UosBusinessPartnerHelper uosBusinessPartnerHelper = new UosBusinessPartnerHelper();
		TrSalesHelper trSalesHelper = new TrSalesHelper();
		List<UomMaterial> listUomMaterial = uomMaterialService.findByIsProductAndIsDeleteAndIsActive(
				GlobalConstant.FIELD_ACTIVE, GlobalConstant.FIELD_NOT_ACTIVE, GlobalConstant.FIELD_ACTIVE);
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		for (int i = 0; i < listUomMaterial.size(); i++) {
			UomMaterial uomMaterial = (UomMaterial) listUomMaterial.get(i);
			trSalesDetail = new TrSalesDetail();
			trSalesDetail.setUomMaterial(uomMaterial);
			listTrSalesDetail.add(trSalesDetail);
		}
		UomMaterial uomMaterial = new UomMaterial();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUomMaterial(listUomMaterial);
//		trSalesHelper.setListUomMaterialHelper(listUomMaterialHelper);
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		trSalesHelper.setUosBusinessPartnerHelper(uosBusinessPartnerHelper);
		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);

//		List<UomComp> listUomComp = uomCompService.listAll();
		modelMap.addAttribute("listUomMaterial", listUomMaterial);
		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		/*
		 * modelMap.addAttribute("listUomMaterialHelper", listUomMaterialHelper);
		 * modelMap.addAttribute("listUosBusinessPartnerHelper",
		 * listUosBusinessPartnerHelper);
		 */
//		modelMap.addAttribute("uomMaterial", uomMaterial);
//		modelMap.addAttribute("uosBusinessPartnerHelper", uosBusinessPartnerHelper);
		modelMap.addAttribute("uosBusinessPartner", uosBusinessPartner);
		modelMap.addAttribute("fragmentPath", "/user/sales/createcontentsales");
		modelMap.addAttribute("fragmentInsert", "createsales");
//		modelMap.addAttribute("fragmentInsert", "indexcompany");
//		modelAndView.setViewName("sys-admin/company");
		modelAndView.setViewName("user/sales/sales-order");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}
	@RequestMapping(value = "/user/report-sales-order-detail", method = RequestMethod.GET)
	public ModelAndView viewReportDetailHomePage(Model model, final HttpServletRequest request) {
//		BELUM DI TEST
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		TrSalesDetail trSalesDetail;
		UosBusinessPartner uosBusinessPartner = new UosBusinessPartner();
		UosBusinessPartnerPhon uosBusinessPartnerPhon = new UosBusinessPartnerPhon();
		UosBusinessPartnerAddr uosBusinessPartnerAddr = new UosBusinessPartnerAddr();
		UosBusinessPartnerHelper uosBusinessPartnerHelper = new UosBusinessPartnerHelper();
		TrSalesHelper trSalesHelper = new TrSalesHelper();
		UomMaterial uomMaterial = new UomMaterial();
		List<UomMaterial> listUomMaterial = uomMaterialService.findByIsProductAndIsDeleteAndIsActive(
				GlobalConstant.FIELD_ACTIVE, GlobalConstant.FIELD_NOT_ACTIVE, GlobalConstant.FIELD_ACTIVE);
		List<TrSalesDetail> listTrSalesDetail = new ArrayList<TrSalesDetail>();
		for (int i = 0; i < listUomMaterial.size(); i++) {
			uomMaterial = (UomMaterial) listUomMaterial.get(i);
			trSalesDetail = new TrSalesDetail();
			trSalesDetail.setUomMaterial(uomMaterial);
			listTrSalesDetail.add(trSalesDetail);
		}
		uomMaterial = new UomMaterial();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		trSalesHelper.setListUomMaterial(listUomMaterial);
//		trSalesHelper.setListUomMaterialHelper(listUomMaterialHelper);
		
		trSalesHelper.setUosBusinessPartnerHelper(uosBusinessPartnerHelper);
		trSalesHelper.setListTrSalesDetail(listTrSalesDetail);
		DateRange dateRange = new DateRange();
		dateRange.setDateFrom(new Date());
		dateRange.setDateTo(new Date());
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
		trSalesHelper.setUomMaterial(uomMaterial);
//		List<UomComp> listUomComp = uomCompService.listAll();
		/*
		 * modelMap.addAttribute("listUomMaterial", listUomMaterial);
		 * modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		 */
		/*
		 * modelMap.addAttribute("listUomMaterialHelper", listUomMaterialHelper);
		 * modelMap.addAttribute("listUosBusinessPartnerHelper",
		 * listUosBusinessPartnerHelper);
		 */
//		modelMap.addAttribute("uomMaterial", uomMaterial);
//		modelMap.addAttribute("uosBusinessPartnerHelper", uosBusinessPartnerHelper);
		modelMap.addAttribute("uosBusinessPartner", uosBusinessPartner);
		modelMap.addAttribute("fragmentPath", "/user/sales/reportcontentsalesdetail");
		modelMap.addAttribute("fragmentInsert", "reportsalesdetail");
//		modelMap.addAttribute("fragmentInsert", "indexcompany");
//		modelAndView.setViewName("sys-admin/company");
		modelAndView.setViewName("user/sales/sales-order");
//		modelAndView.setViewName("user/sales/reportcontentsales");
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;
	}
	@RequestMapping(value = "/user/sales/reportdisplaydatadetail", method = RequestMethod.GET)
	public ModelAndView getTrSalesDetail(@Validated TrSalesHelper trSalesHelper, BindingResult result,
			HttpServletRequest request) throws InterruptedException {
		String path1 = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		String finalPath = this.extractPathWithinPattern(bestMatchPattern, path1);
		System.out.println("finalPath: " + finalPath);
		System.out.println("path1: " + path1);
		this.auth = SecurityContextHolder.getContext().getAuthentication();
		UosUif uosUif = this.getUosUifService().findByUsername(this.auth.getName());
		boolean match = this.uomMenuMatchUomRole(finalPath);
		System.out.println("match: " + match);
		ModelMap modelMap = new ModelMap();
		ModelAndView modelAndView = new ModelAndView();
		modelMap = this.getDefaultModelMap(request);
		TrSales trSales = new TrSales();
		trSales.setId(this.getIdGenerator());
		int counter = 0;
		System.out.println("id==" + trSalesHelper.getUosBusinessPartnerHelper().getUosBusinessPartnerId());
		System.out.println("dateFrom==" + trSalesHelper.getDateRange().getDateFrom());
		System.out.println("dateTo==" + trSalesHelper.getDateRange().getDateTo());
		String dateStrFrom = "";
		String dateStrTo = ""; 
		DateFormat dateFormatYMD = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		if(trSalesHelper.getDateRange().getDateFrom()!= null) {
			dateStrFrom =dateFormatYMD.format(trSalesHelper.getDateRange().getDateFrom());
		}
		else {
			dateStrFrom = this.getCurrentDate();
		}
		System.out.println("dateStrFrom==" + dateStrFrom);
		if(trSalesHelper.getDateRange().getDateTo()!= null) {
			dateStrTo =dateFormatYMD.format(trSalesHelper.getDateRange().getDateTo());
			dateStrTo = dateStrTo +" 23:59:59";
		}else {
			dateStrTo = this.getCurrentDate();
			dateStrTo = dateStrTo +" 23:59:59";
//			dateStrTo.concat(" 23:59:59");
		}
		System.out.println("dateTo==" + dateStrTo);
		List <TrSales> listTrSalesFrService = trSalesService.getTrSalesNOUsingDateParameters(dateStrFrom, dateStrTo);
		System.out.println("listTrSales.size =="+ listTrSalesFrService.size());
//		List <UosBusinessPartnerHelper>listUosBusinessPartnerHelper = trSalesHelper.getListUosBusinessPartnerHelper();
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = uosBusinessPartnerService
				.listAllUosBusinessPartnerHelper();
		System.out.println(listUosBusinessPartnerHelper.size());
		for (int i = 0; i < listUosBusinessPartnerHelper.size(); i++) {
			UosBusinessPartnerHelper uosBusinessPartnerHelperTemp = (UosBusinessPartnerHelper) listUosBusinessPartnerHelper
					.get(i);
			System.out.println(
					"uosBusinessPartnerHelperTemp:" + uosBusinessPartnerHelperTemp.getUosBusinessPartner().getId());
		}
		trSalesHelper.setListUosBusinessPartnerHelper(listUosBusinessPartnerHelper);
		UosBusinessPartner uosBusinessPartner;
		UosBusinessPartnerHelper uosBusinessPartnerHelper;
		List <TrSalesObject> listTrSales = new ArrayList<TrSalesObject>();
		List <TrSalesDetailObject> listTrSalesDetail = new ArrayList<TrSalesDetailObject>();
		if(listTrSalesFrService!=null) {
			for (int i = 0; i < listTrSalesFrService.size(); i++) {
				TrSales trSalesFrService = listTrSalesFrService.get(i);
				TrSalesObject trSalesObject = new TrSalesObject();
				BeanUtils.copyProperties(trSalesFrService, trSalesObject);
				uosBusinessPartner = new UosBusinessPartner();
				uosBusinessPartner.setId(trSalesObject.getUosBusinessPartnerId());
				List <TrSalesDetail> listTrSalesDetailFrService = trSalesDetailService.getByTrSales(trSalesFrService);
				TrSalesDetail trSalesDetailFrService;
				
				for (int k = 0; k < listUosBusinessPartnerHelper.size(); k++) {
					uosBusinessPartnerHelper = listUosBusinessPartnerHelper.get(k);
					if(uosBusinessPartnerHelper != null) {
						if(trSalesObject.getUosBusinessPartnerId().equals(uosBusinessPartnerHelper.getUosBusinessPartner().getId())) {
							BeanUtils.copyProperties(uosBusinessPartnerHelper.getUosBusinessPartner(), uosBusinessPartner);
							trSalesObject.setUosBusinessPartner(uosBusinessPartner);
						}
					}
				}
				for (int j = 0; j < listTrSalesDetailFrService.size(); j++) {
					trSalesDetailFrService = listTrSalesDetailFrService.get(j);
					TrSalesDetailObject trSalesDetailObject = new TrSalesDetailObject();
					trSalesDetailObject.setUosBusinessPartner(uosBusinessPartner);
					BeanUtils.copyProperties(trSalesDetailFrService, trSalesDetailObject);
					listTrSalesDetail.add(trSalesDetailObject);
				}
				
				listTrSales.add(trSalesObject);
			}
		}
		
		trSalesHelper.setListTrSales(listTrSales);
		trSalesHelper.setListTrSalesDetailObject(listTrSalesDetail);
		modelMap.addAttribute("trSales", trSales);
//		modelMap.addAttribute("listTrSalesDetail", listTrSalesDetail);
		modelMap.addAttribute("trSalesHelper", trSalesHelper);
//		modelMap.addAttribute("fragmentPath", "/user/sales/createcontentsalesinvoice");
//		modelMap.addAttribute("fragmentInsert", "salesinvoice");
		modelMap.addAttribute("fragmentPath", "/user/sales/reportcontentsalesdetail");
		modelMap.addAttribute("fragmentInsert", "reportsalesdetail");
		modelAndView.setViewName("user/sales/sales-order");
//		uomMenuService.save(uomMenu);
//		List<UomMenu> listUomMenus = uomMenuService.listAll();
//		model.addAttribute("listUomMenus", listUomMenus);
		modelAndView.getModelMap().addAllAttributes(modelMap);
		return modelAndView;

	}
}
