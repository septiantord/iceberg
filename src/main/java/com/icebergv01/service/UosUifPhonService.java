package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.interfacerepository.UosUifPhonRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosUifPhon;

@Service
@Transactional
public class UosUifPhonService {
	@Autowired
	private UosUifPhonRepository uosUifPhonRepo;
	
	public List<UosUifPhon> listAll() {
		return uosUifPhonRepo.findAll();
	}

	public void save(UosUifPhon uosUifPhon) {
		uosUifPhonRepo.save(uosUifPhon);
	}

	public UosUifPhon get(String id) {
		return uosUifPhonRepo.findById(id).get();
	}

	public void delete(String id) {
		uosUifPhonRepo.deleteById(id);
	}
}
