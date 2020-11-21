package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.interfacerepository.UosCompPhonRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UosCompPhon;

@Service
@Transactional
public class UosCompPhonService {
	@Autowired
	private UosCompPhonRepository uosCompPhonRepository;
	
	public List<UosCompPhon> listAll() {
		return uosCompPhonRepository.findAll();
	}

	public void save(UosCompPhon uosCompPhon) {
		uosCompPhonRepository.save(uosCompPhon);
	}

	public UosCompPhon get(String id) {
		return uosCompPhonRepository.findById(id).get();
	}

	public void delete(String id) {
		uosCompPhonRepository.deleteById(id);
	}
	
	public UosCompPhon findByUomCompId(String uomCompId) {
		return uosCompPhonRepository.findByUomCompId(uomCompId);
	}
}
