package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerAddrRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerAddr;

@Service
@Transactional
public class UosBusinessPartnerAddrService {
	@Autowired
	private UosBusinessPartnerAddrRepository uosBusinessPartnerAddrRepo;
	
	public List<UosBusinessPartnerAddr> listAll() {
		return uosBusinessPartnerAddrRepo.findAll();
	}

	public void save(UosBusinessPartnerAddr uosBusinessPartnerAddr) {
		uosBusinessPartnerAddrRepo.save(uosBusinessPartnerAddr);
	}

	public UosBusinessPartnerAddr get(String id) {
		return uosBusinessPartnerAddrRepo.findById(id).get();
	}

	public void delete(String id) {
		uosBusinessPartnerAddrRepo.deleteById(id);
	}
}
