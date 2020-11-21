package com.icebergv01.interfacerepositoryimpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;


import com.icebergv01.interfacerepository.TrSalesRepository;
import com.fasterxml.jackson.databind.MapperFeature;
import com.icebergv01.interfacerepository.CustomizedTrSalesRepository;
import com.icebergv01.model.TrSales;
import com.icebergv01.modelhelper.TrSalesObject;

public class CustomizedTrSalesRepositoryImpl implements CustomizedTrSalesRepository{
	@Autowired
	@Lazy
	private TrSalesRepository trSalesRepository;
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Long customCounter(String date) {
		// TODO Auto-generated method stub
		Query query = em.createNativeQuery("SELECT * FROM Tr_Sales u WHERE DATE(u.created_Date) like ?", TrSales.class);
		Query query1 = em.createNativeQuery("SELECT count(id) FROM Tr_Sales u WHERE DATE(u.created_Date) like ?");
		query.setParameter(1, date + "%");
		query1.setParameter(1, date + "%");
		List<TrSales> list = query.getResultList();
		List list1 = query1.getResultList();
		/*em.q@Query("SELECT COUNT(u) FROM TrSales u WHERE DATE(u.createdDate)= ?")*/
		
		return Long.valueOf(list.size());
	}

	@Override
	public List<TrSalesObject> getTrSalesUsingDateParameters(String dateStrFrom, String dateStrTo) {
		// TODO Auto-generated method stub
		Query query = em.createNativeQuery("SELECT * FROM tr_sales u WHERE u.CREATED_DATE >= ? and u.CREATED_DATE <= ?", TrSales.class);
//		"SELECT * FROM Tr_Sales u WHERE DATE(u.created_Date) like ?"
		query.setParameter(1, dateStrFrom + "%");
		query.setParameter(2, dateStrTo + "%");
		List<TrSales> list = query.getResultList();
		List <TrSalesObject> listTrSalesObject = new ArrayList<TrSalesObject>();
		TrSalesObject trSalesObject;
		TrSales trSales;
		for(int i = 0; i < list.size(); i++) {
			trSales = list.get(i);
			trSalesObject = new TrSalesObject();
			BeanUtils.copyProperties(trSales, trSalesObject);
			listTrSalesObject.add(trSalesObject);
		}
		return listTrSalesObject;
	}

	@Override
	public List<TrSales> getTrSalesNOUsingDateParameters(String dateStrFrom, String dateStrTo) {
		// TODO Auto-generated method stub
		Query query = em.createNativeQuery("SELECT * FROM tr_sales u WHERE u.CREATED_DATE >= ? and u.CREATED_DATE <= ?", TrSales.class);
//		"SELECT * FROM Tr_Sales u WHERE DATE(u.created_Date) like ?"
		query.setParameter(1, dateStrFrom + "%");
		query.setParameter(2, dateStrTo + "%");
		List<TrSales> list = query.getResultList();
		return list;
	}

}
