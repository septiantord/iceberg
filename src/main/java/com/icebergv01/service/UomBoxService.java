package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomBoxRepository;
import com.icebergv01.model.UomBox;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomBoxService {
	@Autowired
	private UomBoxRepository uomBoxRepo;
	
	public List<UomBox> listAll() {
		return uomBoxRepo.findAll();
	}

	public void save(UomBox uomBox) {
		uomBoxRepo.save(uomBox);
	}

	public UomBox get(String id) {
		return uomBoxRepo.findById(id).get();
	}

	public void delete(String id) {
		uomBoxRepo.deleteById(id);
	}
}
