package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerPhonRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerPhon;

@Service
@Transactional
public class UosBusinessPartnerPhonService {
	@Autowired
	private UosBusinessPartnerPhonRepository uosBusinessPartnerPhonRepo;
	
	public List<UosBusinessPartnerPhon> listAll() {
		return uosBusinessPartnerPhonRepo.findAll();
	}

	public void save(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		uosBusinessPartnerPhonRepo.save(uosBusinessPartnerPhon);
	}

	public UosBusinessPartnerPhon get(String id) {
		return uosBusinessPartnerPhonRepo.findById(id).get();
	}

	public void delete(String id) {
		uosBusinessPartnerPhonRepo.deleteById(id);
	}
}
