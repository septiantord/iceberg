package com.icebergv01.interfacerepository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesBox;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMaterial;
import com.icebergv01.model.UosBusinessPartner;

public interface UosBusinessPartnerRepository extends JpaRepository<UosBusinessPartner, String>{
	Optional<UosBusinessPartner> findById(String id);
	@Query("SELECT u FROM UosBusinessPartner u WHERE u.isActive = :isActive")
    public List<UosBusinessPartner> findByIsActive(@Param("isActive") String isActive);
}
