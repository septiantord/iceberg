package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomPhonTypRepository;
import com.icebergv01.model.UomPhonTyp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomPhonTypService {
	@Autowired
	private UomPhonTypRepository uomPhonTypRepo;
	
	public List<UomPhonTyp> listAll() {
		return uomPhonTypRepo.findAll();
	}

	public void save(UomPhonTyp uomPhonTyp) {
		uomPhonTypRepo.save(uomPhonTyp);
	}

	public UomPhonTyp get(String id) {
		return uomPhonTypRepo.findById(id).get();
	}

	public void delete(String id) {
		uomPhonTypRepo.deleteById(id);
	}
}
