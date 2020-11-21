package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrMaterialDocumentDetail;
import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesBox;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;

public interface TrMaterialDocumentDetailRepository extends JpaRepository<TrMaterialDocumentDetail, String>{
	Optional<TrMaterialDocumentDetail> findById(String id);
}
