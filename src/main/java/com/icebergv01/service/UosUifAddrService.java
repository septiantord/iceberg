package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosBusinessPartnerRepository;
import com.icebergv01.interfacerepository.UosUifAddrRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosUifAddr;

@Service
@Transactional
public class UosUifAddrService {
	@Autowired
	private UosUifAddrRepository uosUifAddrRepo;
	
	public List<UosUifAddr> listAll() {
		return uosUifAddrRepo.findAll();
	}

	public void save(UosUifAddr uosUifAddr) {
		uosUifAddrRepo.save(uosUifAddr);
	}

	public UosUifAddr get(String id) {
		return uosUifAddrRepo.findById(id).get();
	}

	public void delete(String id) {
		uosUifAddrRepo.deleteById(id);
	}
}
