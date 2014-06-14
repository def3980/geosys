/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.geosys.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author walter
 */
@Entity
@Table(name = "tipo_lugar")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoLugar.findAll", query = "SELECT t FROM TipoLugar t"),
    @NamedQuery(name = "TipoLugar.findByIdTipoLugar", query = "SELECT t FROM TipoLugar t WHERE t.idTipoLugar = :idTipoLugar"),
    @NamedQuery(name = "TipoLugar.findByTipoLugar", query = "SELECT t FROM TipoLugar t WHERE t.tipoLugar = :tipoLugar")})
public class TipoLugar implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_tipo_lugar")
    private Integer idTipoLugar;
    @Basic(optional = false)
    @Column(name = "tipo_lugar")
    private String tipoLugar;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTipoLugar")
    private List<Lugar> lugarList;

    public TipoLugar() {
    }

    public TipoLugar(Integer idTipoLugar) {
        this.idTipoLugar = idTipoLugar;
    }

    public TipoLugar(Integer idTipoLugar, String tipoLugar) {
        this.idTipoLugar = idTipoLugar;
        this.tipoLugar = tipoLugar;
    }

    public Integer getIdTipoLugar() {
        return idTipoLugar;
    }

    public void setIdTipoLugar(Integer idTipoLugar) {
        this.idTipoLugar = idTipoLugar;
    }

    public String getTipoLugar() {
        return tipoLugar;
    }

    public void setTipoLugar(String tipoLugar) {
        this.tipoLugar = tipoLugar;
    }

    @XmlTransient
    public List<Lugar> getLugarList() {
        return lugarList;
    }

    public void setLugarList(List<Lugar> lugarList) {
        this.lugarList = lugarList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTipoLugar != null ? idTipoLugar.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoLugar)) {
            return false;
        }
        TipoLugar other = (TipoLugar) object;
        if ((this.idTipoLugar == null && other.idTipoLugar != null) || (this.idTipoLugar != null && !this.idTipoLugar.equals(other.idTipoLugar))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.TipoLugar[ idTipoLugar=" + idTipoLugar + " ]";
    }
    
}
