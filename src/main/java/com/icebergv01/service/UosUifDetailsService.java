package com.icebergv01.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.icebergv01.configuration.GlobalConstant;
import com.icebergv01.interfacerepository.UosUifRepository;
import com.icebergv01.model.UomRole;
import com.icebergv01.model.UomUifRole;
import com.icebergv01.model.UosUif;
@Service("userDetailsService")
public class UosUifDetailsService extends GlobalConstant implements UserDetailsService {

	@Autowired
    private UosUifService uosUifService;
	
	@Autowired
    private UomUifRoleService uomUifRoleService;
	
	private List<GrantedAuthority> getUserAuthority(Set<UomRole> uomRoles) {
        Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
        for (UomRole uomRole : uomRoles) {
            roles.add(new SimpleGrantedAuthority(uomRole.getId()));
        }
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>(roles);
        return grantedAuthorities;
    }
	private UserDetails buildUserForAuthentication(UosUif uosUif, List<GrantedAuthority> authorities) {
		boolean active = false;
		if(uosUif != null) {
			if(uosUif.getIsActive() != null && uosUif.getIsActive().equals(FIELD_ACTIVE)) {
				active = true;
			}
		}
			
        return new org.springframework.security.core.userdetails.User(uosUif.getUsername(), uosUif.getPassword(),
        		active, true, true, true, authorities);
    }
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		UosUif uosUif = uosUifService.findByUsername(username);
		List listUifToRole = uomUifRoleService.listByUosUif(uosUif);
		List uomRolesId = new ArrayList<>();
		for (int i = 0; i < listUifToRole.size(); i++) {
			UomUifRole uomUifRole = (UomUifRole) listUifToRole.get(i);
			uomRolesId.add(uomUifRole.getUomRole().getId());
		}
        List<GrantedAuthority> authorities = getUserAuthority(uosUif.getUomRoles());
        		
        return buildUserForAuthentication(uosUif, authorities);
//		return null;
	}

}
