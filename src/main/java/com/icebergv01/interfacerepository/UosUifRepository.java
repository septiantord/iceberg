package com.icebergv01.interfacerepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UosUif;

public interface UosUifRepository extends JpaRepository<UosUif, String>{
	@Query("SELECT u FROM UosUif u WHERE u.username = :username")
    public UosUif findByUsername(@Param("username") String username);

}
