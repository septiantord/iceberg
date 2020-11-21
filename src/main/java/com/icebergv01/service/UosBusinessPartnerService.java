package com.icebergv01.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerAddrRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerPhonRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerAddr;
import com.icebergv01.model.UosBusinessPartnerPhon;
import com.icebergv01.modelhelper.UosBusinessPartnerHelper;

@Service
@Transactional
public class UosBusinessPartnerService extends GlobalConstant{
	@Autowired
	private UosBusinessPartnerRepository uosBusinessPartnerRepo;
	@Autowired
	private UosBusinessPartnerAddrRepository uosBusinessPartnerAddrRepo;
	@Autowired
	private UosBusinessPartnerPhonRepository uosBusinessPartnerPhonRepo;
	
	public List<UosBusinessPartner> listAll() {
		return uosBusinessPartnerRepo.findAll();
	}
	public List<UosBusinessPartnerHelper> listAllUosBusinessPartnerHelper() {
		UosBusinessPartnerHelper uosBusinessPartnerHelper;
		UosBusinessPartner uosBusinessPartner;
		UosBusinessPartnerAddr uosBusinessPartnerAddr;
		UosBusinessPartnerPhon uosBusinessPartnerPhon;
		List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper = new ArrayList<UosBusinessPartnerHelper>();
		List <UosBusinessPartner>listUosBusinessPartner = uosBusinessPartnerRepo.findByIsActive(GlobalConstant.FIELD_ACTIVE);
		System.out.println("listUosBusinessPartner.size():"+listUosBusinessPartner.size());
		List listUosBusinessPartnerAddr = uosBusinessPartnerAddrRepo.findByUosBusinessPartnerIn(listUosBusinessPartner);
		List listUosBusinessPartnerPhon = uosBusinessPartnerPhonRepo.findByUosBusinessPartnerIn(listUosBusinessPartner);
		List <UosBusinessPartnerHelper> listAllUosBusinessPartnerHelper = new ArrayList<UosBusinessPartnerHelper>();
		for (int i = 0; i < listUosBusinessPartner.size(); i++) {
			uosBusinessPartnerHelper= new UosBusinessPartnerHelper();
			uosBusinessPartner = (UosBusinessPartner) listUosBusinessPartner.get(i);
			uosBusinessPartnerHelper.setUosBusinessPartner(uosBusinessPartner);
			for (int j = 0; j < listUosBusinessPartnerAddr.size(); j++) {
				uosBusinessPartnerAddr = (UosBusinessPartnerAddr) listUosBusinessPartnerAddr.get(i);
				if(uosBusinessPartnerAddr.getUosBusinessPartner()!=null) {
					if(uosBusinessPartnerAddr.getUosBusinessPartner().getId().equals(uosBusinessPartner.getId())) {
						uosBusinessPartnerHelper.setUosBusinessPartnerAddr(uosBusinessPartnerAddr);
						break;
					}
				}
			}
			for (int j = 0; j < listUosBusinessPartnerPhon.size(); j++) {
				uosBusinessPartnerPhon = (UosBusinessPartnerPhon) listUosBusinessPartnerPhon.get(i);
				if(uosBusinessPartnerPhon.getUosBusinessPartner()!=null) {
					if(uosBusinessPartnerPhon.getUosBusinessPartner().getId().equals(uosBusinessPartner.getId())) {
						uosBusinessPartnerHelper.setUosBusinessPartnerPhon(uosBusinessPartnerPhon);
						break;
					}
				}
			}
			listUosBusinessPartnerHelper.add(uosBusinessPartnerHelper);
		}
		return listUosBusinessPartnerHelper;
	}
	public void save(UosBusinessPartner uosBusinessPartner) {
		uosBusinessPartnerRepo.save(uosBusinessPartner);
	}

	public UosBusinessPartner get(String id) {
		return uosBusinessPartnerRepo.findById(id).get();
	}

	public void delete(String id) {
		uosBusinessPartnerRepo.deleteById(id);
	}
}
