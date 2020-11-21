package com.icebergv01.interfacerepository;


import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMaterial;
import com.icebergv01.modelhelper.TrSalesObject;

public interface CustomizedTrSalesRepository{
	/*@Query("SELECT COUNT(u) FROM Tr_
	 * Sales u WHERE DATE(u.createdDate)=:date")*/
    public Long customCounter(@Param("date") String date);
    public List<TrSalesObject> getTrSalesUsingDateParameters(@Param("dateStrFrom") String dateStrFrom, @Param("dateStrTo") String dateStrTo);
    public List<TrSales> getTrSalesNOUsingDateParameters(@Param("dateStrFrom") String dateStrFrom, @Param("dateStrTo") String dateStrTo);
	
	
}
