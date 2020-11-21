package com.icebergv01.interfacerepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UosUif;
import com.icebergv01.model.UosUifAddr;
import com.icebergv01.model.UosUifPhon;
import com.icebergv01.model.UosUifPhot;

public interface UosUifPhotRepository extends JpaRepository<UosUifPhot, String>{
	@Query("SELECT u FROM UosUifPhot u WHERE u.uosUifUsername = :uosUifUsername")
    public UosUifPhot findByUosUifUsername(@Param("uosUifUsername") UosUif uosUifUsername);

}
