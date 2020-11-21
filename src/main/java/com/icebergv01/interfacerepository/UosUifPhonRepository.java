package com.icebergv01.interfacerepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UosUif;
import com.icebergv01.model.UosUifAddr;
import com.icebergv01.model.UosUifPhon;

public interface UosUifPhonRepository extends JpaRepository<UosUifPhon, String>{
	@Query("SELECT u FROM UosUifPhon u WHERE u.uosUif = :uosUif")
    public UosUifPhon findByUosUif(@Param("uosUif") UosUif uosUif);
	
}
