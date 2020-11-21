package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.TrMaterialDocumentRepository;
import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class TrMaterialDocumentService {
	@Autowired
	private TrMaterialDocumentRepository trMaterialDocumentRepo;

	public List<TrMaterialDocument> listAll() {
		return trMaterialDocumentRepo.findAll();
	}

	public void save(TrMaterialDocument trMaterialDocument) {
		trMaterialDocumentRepo.save(trMaterialDocument);
	}

	public TrMaterialDocument get(String id) {
		return trMaterialDocumentRepo.findById(id).get();
	}

	public void delete(String id) {
		trMaterialDocumentRepo.deleteById(id);
	}
}
