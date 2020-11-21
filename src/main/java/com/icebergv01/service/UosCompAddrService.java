package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosCompAddrRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosCompAddr;

@Service
@Transactional
public class UosCompAddrService {
	@Autowired
	private UosCompAddrRepository uosCompAddrRepository;
	
	public List<UosCompAddr> listAll() {
		return uosCompAddrRepository.findAll();
	}

	public void save(UosCompAddr uosCompAddr) {
		uosCompAddrRepository.save(uosCompAddr);
	}

	public UosCompAddr get(String id) {
		return uosCompAddrRepository.findById(id).get();
	}

	public void delete(String id) {
		uosCompAddrRepository.deleteById(id);
	}
	
	public UosCompAddr findByUomCompId(String uomCompId) {
		return uosCompAddrRepository.findByUomCompId(uomCompId);
	}
}
