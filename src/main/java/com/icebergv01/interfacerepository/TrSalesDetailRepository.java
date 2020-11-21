package com.icebergv01.interfacerepository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;

public interface TrSalesDetailRepository extends JpaRepository<TrSalesDetail, String>{
	Optional<TrSalesDetail> findById(String id);

	List<TrSalesDetail> findByTrSales(TrSales trSales);
}
