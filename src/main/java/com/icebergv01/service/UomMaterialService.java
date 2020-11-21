package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomMaterialRepository;
import com.icebergv01.model.UomMaterial;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomMaterialService {
	@Autowired
	private UomMaterialRepository uomMaterialRepo;
	
	public List<UomMaterial> listAll() {
		return uomMaterialRepo.findAll();
	}
	
	public List<UomMaterial> findByIsProductAndIsDeleteAndIsActive(String isProduct, String isDelete, String isActive){
		return uomMaterialRepo.findByIsProductAndIsDeleteAndIsActive(isProduct, isDelete, isActive);
	}
	
	public void save(UomMaterial uomMaterial) {
		uomMaterialRepo.save(uomMaterial);
	}

	public UomMaterial get(String id) {
		return uomMaterialRepo.findById(id).get();
	}

	public void delete(String id) {
		uomMaterialRepo.deleteById(id);
	}
	
}
