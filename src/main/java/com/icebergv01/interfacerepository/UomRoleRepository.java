package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.UomRole;


public interface UomRoleRepository extends JpaRepository<UomRole, String>{
	Optional<UomRole> findById(String id);
}
