package com.icebergv01.service;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.interfacerepository.UomRoleRepository;
import com.icebergv01.interfacerepository.UomUifRoleRepository;
import com.icebergv01.model.UomRole;
import com.icebergv01.model.UomUifRole;
import com.icebergv01.model.UosUif;

@Service
@Transactional
@Order(1)
public class UomUifRoleService extends GlobalConstant{
    
    @Autowired
    private UomUifRoleRepository uomUifRoleRepository;

	public List<UomUifRole> listAll() {
		return uomUifRoleRepository.findAll();
	}
	public List<UomUifRole> listByUosUif(UosUif uosUif) {
		return uomUifRoleRepository.findByUosUif(uosUif);
	}
	public void save(UomUifRole uomUifRole) {
		uomUifRoleRepository.save(uomUifRole);
	}

	public UomUifRole get(String id) {
		return uomUifRoleRepository.findById(id).get();
	}

	public void delete(String id) {
		uomUifRoleRepository.deleteById(id);
	}
	
	
}
