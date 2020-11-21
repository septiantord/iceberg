package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.UomRecipeRepository;
import com.icebergv01.model.UomRecipe;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class UomRecipeService {
	@Autowired
	private UomRecipeRepository uomRecipeRepo;
	
	public List<UomRecipe> listAll() {
		return uomRecipeRepo.findAll();
	}

	public void save(UomRecipe uomRecipe) {
		uomRecipeRepo.save(uomRecipe);
	}

	public UomRecipe get(String id) {
		return uomRecipeRepo.findById(id).get();
	}

	public void delete(String id) {
		uomRecipeRepo.deleteById(id);
	}
}
