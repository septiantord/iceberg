package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomRoleRepository;
import com.icebergv01.model.UomRole;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomRoleService {
	@Autowired
	private UomRoleRepository uomRoleRepo;
	
	public List<UomRole> listAll() {
		return uomRoleRepo.findAll();
	}

	public void save(UomRole uomRole) {
		uomRoleRepo.save(uomRole);
	}

	public UomRole get(String id) {
		return uomRoleRepo.findById(id).get();
	}

	public void delete(String id) {
		uomRoleRepo.deleteById(id);
	}
}
