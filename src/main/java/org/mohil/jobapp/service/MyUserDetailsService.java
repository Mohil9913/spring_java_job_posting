package org.mohil.jobapp.service;

import org.mohil.jobapp.repository.UserRepo;
import org.mohil.jobapp.model.User;
import org.mohil.jobapp.model.UserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepo repo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user =  repo.findByUsername(username);

        if(user == null) {
            System.out.println("User not found 404");
            throw new UsernameNotFoundException("User not found 404");
        }

        return new UserPrincipal(user);
    }
}
