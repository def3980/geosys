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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author walter
 */
@Entity
@Table(name = "lugar_cuadrante")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LugarCuadrante.findAll", query = "SELECT l FROM LugarCuadrante l"),
    @NamedQuery(name = "LugarCuadrante.findByIdLugarCua", query = "SELECT l FROM LugarCuadrante l WHERE l.idLugarCua = :idLugarCua")})
public class LugarCuadrante implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_lugar_cua")
    private Integer idLugarCua;
    @JoinColumn(name = "id_lugar", referencedColumnName = "id_lugar")
    @ManyToOne(optional = false)
    private Lugar idLugar;
    @JoinColumn(name = "id_cuadrante", referencedColumnName = "id_cuadrante")
    @ManyToOne(optional = false)
    private Cuadrante idCuadrante;

    public LugarCuadrante() {
    }

    public LugarCuadrante(Integer idLugarCua) {
        this.idLugarCua = idLugarCua;
    }

    public Integer getIdLugarCua() {
        return idLugarCua;
    }

    public void setIdLugarCua(Integer idLugarCua) {
        this.idLugarCua = idLugarCua;
    }

    public Lugar getIdLugar() {
        return idLugar;
    }

    public void setIdLugar(Lugar idLugar) {
        this.idLugar = idLugar;
    }

    public Cuadrante getIdCuadrante() {
        return idCuadrante;
    }

    public void setIdCuadrante(Cuadrante idCuadrante) {
        this.idCuadrante = idCuadrante;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLugarCua != null ? idLugarCua.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LugarCuadrante)) {
            return false;
        }
        LugarCuadrante other = (LugarCuadrante) object;
        if ((this.idLugarCua == null && other.idLugarCua != null) || (this.idLugarCua != null && !this.idLugarCua.equals(other.idLugarCua))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.LugarCuadrante[ idLugarCua=" + idLugarCua + " ]";
    }
    
}
