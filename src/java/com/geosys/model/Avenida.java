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
@Table(name = "avenida")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Avenida.findAll", query = "SELECT a FROM Avenida a"),
    @NamedQuery(name = "Avenida.findByIdAvenida", query = "SELECT a FROM Avenida a WHERE a.idAvenida = :idAvenida"),
    @NamedQuery(name = "Avenida.findByNombreAvenida", query = "SELECT a FROM Avenida a WHERE a.nombreAvenida = :nombreAvenida")})
public class Avenida implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_avenida")
    private Integer idAvenida;
    @Basic(optional = false)
    @Column(name = "nombre_avenida")
    private String nombreAvenida;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idAvenida")
    private List<CuadranteAvenida> cuadranteAvenidaList;

    public Avenida() {
    }

    public Avenida(Integer idAvenida) {
        this.idAvenida = idAvenida;
    }

    public Avenida(Integer idAvenida, String nombreAvenida) {
        this.idAvenida = idAvenida;
        this.nombreAvenida = nombreAvenida;
    }

    public Integer getIdAvenida() {
        return idAvenida;
    }

    public void setIdAvenida(Integer idAvenida) {
        this.idAvenida = idAvenida;
    }

    public String getNombreAvenida() {
        return nombreAvenida;
    }

    public void setNombreAvenida(String nombreAvenida) {
        this.nombreAvenida = nombreAvenida;
    }

    @XmlTransient
    public List<CuadranteAvenida> getCuadranteAvenidaList() {
        return cuadranteAvenidaList;
    }

    public void setCuadranteAvenidaList(List<CuadranteAvenida> cuadranteAvenidaList) {
        this.cuadranteAvenidaList = cuadranteAvenidaList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idAvenida != null ? idAvenida.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Avenida)) {
            return false;
        }
        Avenida other = (Avenida) object;
        if ((this.idAvenida == null && other.idAvenida != null) || (this.idAvenida != null && !this.idAvenida.equals(other.idAvenida))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.Avenida[ idAvenida=" + idAvenida + " ]";
    }
    
}
