package com.icebergv01.interfacerepository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UomUifRole;
import com.icebergv01.model.UosUif;


public interface UomUifRoleRepository extends JpaRepository<UomUifRole, String>{
	Optional<UomUifRole> findById(String id);
	@Query("SELECT u FROM UomUifRole u WHERE u.uosUif = :uosUif")
	public List<UomUifRole> findByUosUif(@Param("uosUif") UosUif uosUif);

}
