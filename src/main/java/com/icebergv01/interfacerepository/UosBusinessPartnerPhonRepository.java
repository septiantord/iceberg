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
import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerAddr;
import com.icebergv01.model.UosBusinessPartnerPhon;

public interface UosBusinessPartnerPhonRepository extends JpaRepository<UosBusinessPartnerPhon, String>{
	Optional<UosBusinessPartnerPhon> findById(String id);
	@Query("SELECT u FROM UosBusinessPartnerPhon u WHERE u.uosBusinessPartner in (:uosBusinessPartner)")
    public List<UosBusinessPartnerPhon> findByUosBusinessPartnerIn(@Param("uosBusinessPartner") List<UosBusinessPartner> uosBusinessPartner);
	
}
