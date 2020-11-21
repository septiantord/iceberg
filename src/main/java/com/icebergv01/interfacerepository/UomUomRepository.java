package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomRecipe;
import com.icebergv01.model.UomUifComp;
import com.icebergv01.model.UomUom;

public interface UomUomRepository extends JpaRepository<UomUom, String>{
	Optional<UomUom> findById(String id);
}
