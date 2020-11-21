package com.icebergv01.interfacerepository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMaterial;
import com.icebergv01.model.UosUif;

public interface UomMaterialRepository extends JpaRepository<UomMaterial, String>{
	Optional<UomMaterial> findById(String id);
	@Query("SELECT u FROM UosUif u WHERE u.isProduct = :isProduct AND u.isDelete = :isDelete AND u.isActive = :isActive")
    public List<UomMaterial> findByIsProductAndIsDeleteAndIsActive(@Param("isProduct") String isProduct, @Param("isDelete") String isDelete, @Param("isActive") String isActive);
}
