package com.icebergv01.service;

import java.util.List;

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

@Service
@Transactional
public class TrSalesDetailService {
	@Autowired
	private TrSalesDetailRepository trSalesDetailRepo;

	public List<TrSalesDetail> listAll() {
		return trSalesDetailRepo.findAll();
	}

	public void save(TrSalesDetail trSalesDetail) {
		trSalesDetailRepo.save(trSalesDetail);
	}
	public void saveAndFlush(TrSalesDetail trSalesDetail) {
		trSalesDetailRepo.saveAndFlush(trSalesDetail);
		trSalesDetailRepo.flush();
	}
	public TrSalesDetail get(String id) {
		return trSalesDetailRepo.findById(id).get();
	}
	public List <TrSalesDetail> getByTrSales(TrSales trSales) {
		return trSalesDetailRepo.findByTrSales(trSales);
	}

	public void delete(String id) {
		trSalesDetailRepo.deleteById(id);
	}
}
