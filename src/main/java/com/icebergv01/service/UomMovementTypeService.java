package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomMovementTypeRepository;
import com.icebergv01.model.UomMovementType;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomMovementTypeService {
	@Autowired
	private UomMovementTypeRepository uomMovementTypeRepo;
	
	public List<UomMovementType> listAll() {
		return uomMovementTypeRepo.findAll();
	}

	public void save(UomMovementType uomMovementType) {
		uomMovementTypeRepo.save(uomMovementType);
	}

	public UomMovementType get(String id) {
		return uomMovementTypeRepo.findById(id).get();
	}

	public void delete(String id) {
		uomMovementTypeRepo.deleteById(id);
	}
}
