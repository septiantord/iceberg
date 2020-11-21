package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.TrMaterialDocumentDetailRepository;
import com.icebergv01.interfacerepository.TrMaterialDocumentRepository;
import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrMaterialDocumentDetail;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class TrMaterialDocumentDetailService {
	@Autowired
	private TrMaterialDocumentDetailRepository trMaterialDetailDocumentRepo;

	public List<TrMaterialDocumentDetail> listAll() {
		return trMaterialDetailDocumentRepo.findAll();
	}

	public void save(TrMaterialDocumentDetail trMaterialDocumentDetail) {
		trMaterialDetailDocumentRepo.save(trMaterialDocumentDetail);
	}

	public TrMaterialDocumentDetail get(String id) {
		return trMaterialDetailDocumentRepo.findById(id).get();
	}

	public void delete(String id) {
		trMaterialDetailDocumentRepo.deleteById(id);
	}
}
