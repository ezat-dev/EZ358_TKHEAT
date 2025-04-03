package com.tkheat.service;

import java.util.List;

import com.tkheat.domain.Chulgo;
import com.tkheat.domain.Gongjung;
import com.tkheat.domain.Ipgo;
import com.tkheat.domain.Jaego;

public interface ProductService {
	
	List<Ipgo> getIpgoList(Ipgo ipgo);
	
	List<Chulgo> getChulgoList(Chulgo chulgo);
	
	List<Chulgo> getChulgoWaitingList(Chulgo chulgo);
	
	List<Jaego> getJaegoStatusList(Jaego jaego);
	
	List<Jaego> getPJaegoStatusList(Jaego jaego);
	
	List<Gongjung> getIpChulDeleteList(Gongjung gongjung);
	
	List<Gongjung> getWorkStatusList(Gongjung gongjung);

	List<Gongjung> getWorkStatusListGongjungSum(Gongjung gongjung);
	
	
}
