package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomRecipe;
import com.icebergv01.model.UomUifComp;

public interface UomUifCompRepository extends JpaRepository<UomUifComp, String>{
	Optional<UomUifComp> findById(String id);
}
