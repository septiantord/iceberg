package com.icebergv01.interfacerepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UosUif;
import com.icebergv01.model.UosUifAddr;

public interface UosUifAddrRepository extends JpaRepository<UosUifAddr, String>{
	@Query("SELECT u FROM UosUifAddr u WHERE u.uosUif = :uosUif")
    public UosUifAddr findByUosUif(@Param("uosUif") UosUif uosUif);

}
