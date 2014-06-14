package com.geosys.util;
//import SIGEG.Entities.Usuario;
import java.util.HashSet;
import java.util.Set;

public class UserDaoImpl implements UserDao {

    @Override
    public AppUser findUser(String user) {
        AppUser appUser = null;
        Set<String> roles = new HashSet<String>();
        roles.add("ROLE_URLACCESS");

        appUser = new AppUser(user, user, roles);
        System.out.println("---------Inicio AppUser---------------------");
        System.out.println(appUser);
        System.out.println("---------Fin AppUser---------------------");

        return appUser;
    }
}
