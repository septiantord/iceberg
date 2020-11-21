package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomComp;

public interface UomCompRepository extends JpaRepository<UomComp, String>{
	Optional<UomComp> findById(String id);
}
