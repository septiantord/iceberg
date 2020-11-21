package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomRecipe;

public interface UomRecipeRepository extends JpaRepository<UomRecipe, String>{
	Optional<UomRecipe> findById(String id);
}
