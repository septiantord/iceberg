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
import com.icebergv01.interfacerepository.UosUifRepository;
import com.icebergv01.model.UomRole;
import com.icebergv01.model.UomUifRole;
import com.icebergv01.model.UosUif;

@Service
@Transactional
@Order(1)
public class UosUifService extends GlobalConstant{

    @Autowired
	private UosUifRepository uosUifRepository;
    
    @Autowired
    private UomRoleRepository uomRoleRepository;
    
    @Autowired
    private UomUifRoleRepository uomUifRoleRepository;

//    @Autowired
//    private PlatformTransactionManager transactionManager;
    
    @Autowired
    PasswordEncoder bCryptPasswordEncoder;

    @Bean
    PasswordEncoder bCryptPasswordEncoder() 
    {
        return new BCryptPasswordEncoder();
    }
//    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
//    public BCryptPasswordEncoder getBCryptPasswordEncoder() {
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        return bCryptPasswordEncoder;
//    }
//    private TransactionTemplate transactionTemplate;
//    
//    @BeforeEach	
//    void setUp() {
//        transactionTemplate = new TransactionTemplate(transactionManager);
//    }

    @Autowired
    public UosUifService(UosUifRepository uosUifRepository,
    					UomRoleRepository uomRoleRepository,
    					BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.uosUifRepository = uosUifRepository;
        this.uomRoleRepository = uomRoleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
	public List<UosUif> listAll() {
		return uosUifRepository.findAll();
	}

	public void save(UosUif uosUif) {
		uosUifRepository.save(uosUif);
	}

	public UosUif get(String id) {
		return uosUifRepository.findById(id).get();
	}
	public UosUif findByUsername(String username) {
		return uosUifRepository.findByUsername(username);
	}
	public void delete(String id) {
		uosUifRepository.deleteById(id);
	}
	
	public UosUif saveUser(UosUif uosUif)  {
		uosUif.setPassword(bCryptPasswordEncoder.encode(uosUif.getPassword()));
		uosUif.setIsActive(FIELD_ACTIVE);
        UomRole uomRole = uomRoleRepository.findById("ADMIN").orElse(null);
//        UUID uuid = UUID.randomUUID();
        UomUifRole uomUifRole = new UomUifRole();
        uomUifRole.setId(getIdGenerator());
        uomUifRole.setIsActive(GlobalConstant.FIELD_ACTIVE);
        uomUifRole.setUpdatedBy("ADMIN");
        uomUifRole.setCreatedBy("ADMIN");
        uomUifRole.setUpdatedDate(getTimestamp());
        uomUifRole.setCreatedDate(getTimestamp());
        
        if(uomRole == null) {
//        	uosUif.setUomRoles(new HashSet<UomRole>(Arrays.asList(uomRole)));
        	uomRoleRepository.save(uomRole);
        }
        uomUifRole.setUomRole(uomRole);
        UosUif uosUifReturn = uosUifRepository.saveAndFlush(uosUif);
        uosUifRepository.flush();
        uomUifRole.setUosUif(uosUifReturn);
//        uosUifRepository.wait();
        uomUifRoleRepository.save(uomUifRole);
        return uosUifReturn	;
    }
	
}
