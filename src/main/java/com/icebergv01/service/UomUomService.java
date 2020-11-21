package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomUomRepository;
import com.icebergv01.model.UomUom;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomUomService {
	@Autowired
	private UomUomRepository uomUomRepo;
	
	public List<UomUom> listAll() {
		return uomUomRepo.findAll();
	}

	public void save(UomUom uomUom) {
		uomUomRepo.save(uomUom);
	}

	public UomUom get(String id) {
		return uomUomRepo.findById(id).get();
	}

	public void delete(String id) {
		uomUomRepo.deleteById(id);
	}
}
