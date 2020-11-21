package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomBox;
import com.icebergv01.model.UomComp;

public interface UomBoxRepository extends JpaRepository<UomBox, String>{
	Optional<UomBox> findById(String id);
}
