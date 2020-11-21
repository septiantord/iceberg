package com.icebergv01.service;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.TrMaterialDocumentDetailRepository;
import com.icebergv01.interfacerepository.TrMaterialDocumentRepository;
import com.icebergv01.interfacerepository.TrRecordingDetailRepository;
import com.icebergv01.interfacerepository.TrRecordingRepository;
import com.icebergv01.interfacerepository.TrRecordingStandartRepository;
import com.icebergv01.interfacerepository.TrSalesDetailRepository;
import com.icebergv01.interfacerepository.TrSalesRepository;
import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrMaterialDocumentDetail;
import com.icebergv01.model.TrRecording;
import com.icebergv01.model.TrRecordingDetail;
import com.icebergv01.model.TrRecordingStandart;
import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;
import com.icebergv01.modelhelper.TrSalesObject;

@Service
@Transactional
public class TrSalesService {
	@Autowired
	private TrSalesRepository trSalesRepo;
//	private EntityManager em;

	public List<TrSales> listAll() {
		return trSalesRepo.findAll();
	}

	public void save(TrSales trSales) {
		trSalesRepo.save(trSales);
	}
	
	public void saveAndFlush(TrSales trSales) throws InterruptedException {
//		trSales.setDeliveredBy("saveAndFlush");
		trSalesRepo.saveAndFlush(trSales);
		trSalesRepo.flush();
//		trSalesRepo.wait();
	}
	public TrSales getOne(String id) {
		return trSalesRepo.getOne(id);
	}
	public void delete(String id) {
		trSalesRepo.deleteById(id);
	}
	public TrSales findById(String id) {
		return trSalesRepo.findById(id).get();
	}
	public long count() {
		return trSalesRepo.count();
	}
	public Long countTrSales(String date) {
		return trSalesRepo.customCounter(date);
	}
	public List<TrSalesObject> getTrSalesUsingDateParameters(String dateStrFrom, String dateStrTo){
		return trSalesRepo.getTrSalesUsingDateParameters(dateStrFrom, dateStrTo);
	}
	public List<TrSales> getTrSalesNOUsingDateParameters(String dateStrFrom, String dateStrTo){
		return trSalesRepo.getTrSalesNOUsingDateParameters(dateStrFrom, dateStrTo);
	}
	
}
