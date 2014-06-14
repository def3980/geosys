 package com.geosys.util;

import java.io.Serializable;
import java.util.Set;

public class AppUser implements Serializable {
	
   private String firstName;

    private String lastName;

    private String login;

    private String password;

    private Set<String> roles;

    public AppUser() {
    }

   public AppUser(String login,
                   String password, Set<String> roles) {
        this.login = login;    
        this.password = password;
        this.roles = roles;
        assert !roles.isEmpty();
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public Set<String> getRoles() {
        return roles;
    }

}
