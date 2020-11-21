package com.icebergv01.interfacerepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UosUif;
import com.icebergv01.model.UosUifAddr;
import com.icebergv01.model.UosUifExper;

public interface UosUifExperRepository extends JpaRepository<UosUifExper, String>{
	@Query("SELECT u FROM UosUifExper u WHERE u.uosUifUsername = :uosUifUsername")
    public UosUifExper findByUosUifUsername(@Param("uosUifUsername") String uosUifUsername);

}
