package com.icebergv01.interfacerepository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UomMenu;
import com.icebergv01.model.UomMenuRole;
import com.icebergv01.model.UosUif;

public interface UomMenuRoleRepository extends JpaRepository<UomMenuRole, String>{
	@Query("SELECT u FROM UomMenuRole u WHERE u.uomRole.id IN (:roleIdList)")
	public List findUomMenuRoleByUomRoleIn(@Param("roleIdList") List <String> roleIdList);
}
