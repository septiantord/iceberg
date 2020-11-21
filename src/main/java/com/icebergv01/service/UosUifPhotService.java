package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.interfacerepository.UosUifPhotRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosUifPhot;

@Service
@Transactional
public class UosUifPhotService {
	@Autowired
	private UosUifPhotRepository uosUifPhotRepo;
	
	public List<UosUifPhot> listAll() {
		return uosUifPhotRepo.findAll();
	}

	public void save(UosUifPhot uosUifPhot) {
		uosUifPhotRepo.save(uosUifPhot);
	}

	public UosUifPhot get(String id) {
		return uosUifPhotRepo.findById(id).get();
	}

	public void delete(String id) {
		uosUifPhotRepo.deleteById(id);
	}
}
