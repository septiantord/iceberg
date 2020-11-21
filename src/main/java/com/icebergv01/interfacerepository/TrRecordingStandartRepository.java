package com.icebergv01.interfacerepository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.icebergv01.model.TrMaterialDocument;
import com.icebergv01.model.TrRecording;
import com.icebergv01.model.TrRecordingStandart;
import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesBox;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomComp;

public interface TrRecordingStandartRepository extends JpaRepository<TrRecordingStandart, String>{
	Optional<TrRecordingStandart> findById(String id);
}
