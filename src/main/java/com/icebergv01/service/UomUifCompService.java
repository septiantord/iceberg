package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomUifCompRepository;
import com.icebergv01.model.UomUifComp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomUifCompService {
	@Autowired
	private UomUifCompRepository uomUifCompRepo;
	
	public List<UomUifComp> listAll() {
		return uomUifCompRepo.findAll();
	}

	public void save(UomUifComp uomUifComp) {
		uomUifCompRepo.save(uomUifComp);
	}

	public UomUifComp get(String id) {
		return uomUifCompRepo.findById(id).get();
	}

	public void delete(String id) {
		uomUifCompRepo.deleteById(id);
	}
}
