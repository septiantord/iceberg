package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UosCompAddr;
import com.icebergv01.model.UosUif;

public interface UosCompAddrRepository extends JpaRepository<UosCompAddr, String>{
	Optional<UosCompAddr> findById(String id);
	@Query("SELECT u FROM UosCompAddr u WHERE u.UOM_COMP_ID = :uomCompId")
    public UosCompAddr findByUomCompId(@Param("uomCompId") String uomCompId);
}
