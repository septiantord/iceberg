package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomBox;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMovementType;
import com.icebergv01.model.UomPhonTyp;

public interface UomPhonTypRepository extends JpaRepository<UomPhonTyp, String>{
	Optional<UomPhonTyp> findById(String id);
}
