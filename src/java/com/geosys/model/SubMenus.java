/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.geosys.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author walter
 */
@Entity
@Table(name = "sub_menus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SubMenus.findAll", query = "SELECT s FROM SubMenus s"),
    @NamedQuery(name = "SubMenus.findByIdsubmenu", query = "SELECT s FROM SubMenus s WHERE s.idsubmenu = :idsubmenu"),
    @NamedQuery(name = "SubMenus.findByNombreSubmenu", query = "SELECT s FROM SubMenus s WHERE s.nombreSubmenu = :nombreSubmenu"),
    @NamedQuery(name = "SubMenus.findByParentIdsubmenu", query = "SELECT s FROM SubMenus s WHERE s.parentIdsubmenu = :parentIdsubmenu"),
    @NamedQuery(name = "SubMenus.findByTipoUsuario", query = "SELECT s FROM SubMenus s WHERE s.tipoUsuario = :tipoUsuario"),
    @NamedQuery(name = "SubMenus.findByRutaMenu", query = "SELECT s FROM SubMenus s WHERE s.rutaMenu = :rutaMenu")})
public class SubMenus implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idsubmenu")
    private Integer idsubmenu;
    @Column(name = "nombre_submenu")
    private String nombreSubmenu;
    @Basic(optional = false)
    @Column(name = "parent_idsubmenu")
    private int parentIdsubmenu;
    @Column(name = "tipo_usuario")
    private Integer tipoUsuario;
    @Column(name = "ruta_menu")
    private String rutaMenu;

    public SubMenus() {
    }

    public SubMenus(Integer idsubmenu) {
        this.idsubmenu = idsubmenu;
    }

    public SubMenus(Integer idsubmenu, int parentIdsubmenu) {
        this.idsubmenu = idsubmenu;
        this.parentIdsubmenu = parentIdsubmenu;
    }

    public Integer getIdsubmenu() {
        return idsubmenu;
    }

    public void setIdsubmenu(Integer idsubmenu) {
        this.idsubmenu = idsubmenu;
    }

    public String getNombreSubmenu() {
        return nombreSubmenu;
    }

    public void setNombreSubmenu(String nombreSubmenu) {
        this.nombreSubmenu = nombreSubmenu;
    }

    public int getParentIdsubmenu() {
        return parentIdsubmenu;
    }

    public void setParentIdsubmenu(int parentIdsubmenu) {
        this.parentIdsubmenu = parentIdsubmenu;
    }

    public Integer getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(Integer tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getRutaMenu() {
        return rutaMenu;
    }

    public void setRutaMenu(String rutaMenu) {
        this.rutaMenu = rutaMenu;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idsubmenu != null ? idsubmenu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SubMenus)) {
            return false;
        }
        SubMenus other = (SubMenus) object;
        if ((this.idsubmenu == null && other.idsubmenu != null) || (this.idsubmenu != null && !this.idsubmenu.equals(other.idsubmenu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.SubMenus[ idsubmenu=" + idsubmenu + " ]";
    }
    
}
