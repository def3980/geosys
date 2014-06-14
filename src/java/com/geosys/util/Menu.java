/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.util;

import com.geosys.model.SubMenus;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.primefaces.model.menu.DefaultMenuItem;
import org.primefaces.model.menu.DefaultMenuModel;
import org.primefaces.model.menu.DefaultSubMenu;
import org.primefaces.model.menu.MenuModel;

/**
 *
 * @author walter
 */
@ManagedBean(name = "menu")
@SessionScoped
public class Menu {

    private MenuModel model;

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();

    private List<SubMenus> menuPadre = new ArrayList<SubMenus>();
    private List<SubMenus> menuHijos = new ArrayList<SubMenus>();

    @SuppressWarnings("empty-statement")
    public MenuModel menu(Integer tipo) {

        model = new DefaultMenuModel();
        DefaultSubMenu submenu = null;
        DefaultMenuItem item;

        javax.persistence.Query q = em.createQuery("select m from SubMenus m where m.tipoUsuario= :tipo and m.rutaMenu='#'");
        q.setParameter("tipo", tipo);
        menuPadre = q.getResultList();
        for (SubMenus padres : menuPadre) {
            submenu = new DefaultSubMenu(padres.getNombreSubmenu());
            javax.persistence.Query q1 = em.createQuery("select m from SubMenus m where m.parentIdsubmenu= :idPadre and m.rutaMenu <>'#'");
            q1.setParameter("idPadre", padres.getIdsubmenu());
            if (q1.getResultList().size() > 0);
            {
                menuHijos = q1.getResultList();
                for (SubMenus hijos : menuHijos) {
                    item = new DefaultMenuItem(hijos.getNombreSubmenu());
                    item.setOutcome(hijos.getRutaMenu());
                    submenu.addElement(item);
                }
            }
            model.addElement(submenu);
        }
        return model;
    }

    public List<SubMenus> getMenuPadre() {
        return menuPadre;
    }

    public void setMenuPadre(List<SubMenus> menuPadre) {
        this.menuPadre = menuPadre;
    }

    public List<SubMenus> getMenuHijos() {
        return menuHijos;
    }

    public void setMenuHijos(List<SubMenus> menuHijos) {
        this.menuHijos = menuHijos;
    }

}
