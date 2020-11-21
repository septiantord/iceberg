package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UosCompAddr;
import com.icebergv01.model.UosCompPhon;
import com.icebergv01.model.UosUif;

public interface UosCompPhonRepository extends JpaRepository<UosCompPhon, String>{
	Optional<UosCompPhon> findById(String id);
	@Query("SELECT u FROM UosCompPhon u WHERE u.UOM_COMP_ID = :uomCompId")
    public UosCompPhon findByUomCompId(@Param("uomCompId") String uomCompId);
}
