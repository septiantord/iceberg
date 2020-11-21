package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomBox;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMovementType;

public interface UomMovementTypeRepository extends JpaRepository<UomMovementType, String>{
	Optional<UomMovementType> findById(String id);
}
