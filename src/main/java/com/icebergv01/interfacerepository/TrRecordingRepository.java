package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrRecording;
import com.icebergv01.model.TrRecordingDetail;
import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesBox;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;

public interface TrRecordingRepository extends JpaRepository<TrRecording, String>{
	Optional<TrRecording> findById(String id);
}
