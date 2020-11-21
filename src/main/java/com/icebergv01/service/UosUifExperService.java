package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.interfacerepository.UosUifExperRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosUifExper;

@Service
@Transactional
public class UosUifExperService {
	@Autowired
	private UosUifExperRepository uosUifExperRepo;
	
	public List<UosUifExper> listAll() {
		return uosUifExperRepo.findAll();
	}

	public void save(UosUifExper uosUifExper) {
		uosUifExperRepo.save(uosUifExper);
	}

	public UosUifExper get(String id) {
		return uosUifExperRepo.findById(id).get();
	}

	public void delete(String id) {
		uosUifExperRepo.deleteById(id);
	}
}
