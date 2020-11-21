package com.icebergv01.interfacerepository;


import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.UomComp;

public interface TrSalesRepository extends JpaRepository<TrSales, String>, CustomizedTrSalesRepository {
	Optional<TrSales> findById(String id);
	/*@Query("SELECT u FROM UomMenu u WHERE u.id IN (:menuId)")
	public Long countByCreatedDate(@Param("menuId") List <String> menuId);*/
	/*@Query("SELECT COUNT(u) FROM TrSales u WHERE DATE(u.createdDate)=:date")
    public Long countByCreatedDate(@Param("date") Date date);*/
	
	
}
