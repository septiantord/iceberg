package com.icebergv01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icebergv01.interfacerepository.TrMaterialDocumentDetailRepository;
import com.icebergv01.interfacerepository.TrMaterialDocumentRepository;
import com.icebergv01.interfacerepository.TrRecordingDetailRepository;
import com.icebergv01.interfacerepository.TrRecordingRepository;
import com.icebergv01.interfacerepository.UomCompRepository;
import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrMaterialDocumentDetail;
import com.icebergv01.model.TrRecording;
import com.icebergv01.model.TrRecordingDetail;
import com.icebergv01.model.UomComp;
import com.icebergv01.model.UomMenu;

@Service
@Transactional
public class TrRecordingDetailService {
	@Autowired
	private TrRecordingDetailRepository trRecordingDetailRepo;

	public List<TrRecordingDetail> listAll() {
		return trRecordingDetailRepo.findAll();
	}

	public void save(TrRecordingDetail trRecordingDetail) {
		trRecordingDetailRepo.save(trRecordingDetail);
	}

	public TrRecordingDetail get(String id) {
		return trRecordingDetailRepo.findById(id).get();
	}

	public void delete(String id) {
		trRecordingDetailRepo.deleteById(id);
	}
}
