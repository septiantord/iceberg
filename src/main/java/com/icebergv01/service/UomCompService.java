package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomCompService {
	@Autowired
	private UomCompRepository uomCompRepo;
	
	public List<UomComp> listAll() {
		return uomCompRepo.findAll();
	}

	public void save(UomComp uomComp) {
		uomCompRepo.save(uomComp);
	}

	public UomComp get(String id) {
		return uomCompRepo.findById(id).get();
	}

	public void delete(String id) {
		uomCompRepo.deleteById(id);
	}
}
