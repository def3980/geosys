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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "cuadrante")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cuadrante.findAll", query = "SELECT c FROM Cuadrante c"),
    @NamedQuery(name = "Cuadrante.findByIdCuadrante", query = "SELECT c FROM Cuadrante c WHERE c.idCuadrante = :idCuadrante"),
    @NamedQuery(name = "Cuadrante.findByCodigoCuadrante", query = "SELECT c FROM Cuadrante c WHERE c.codigoCuadrante = :codigoCuadrante")})
public class Cuadrante implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_cuadrante")
    private Integer idCuadrante;
    @Basic(optional = false)
    @Column(name = "codigo_cuadrante")
    private String codigoCuadrante;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCuadrante")
    private List<CuadranteBarrio> cuadranteBarrioList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCuadrante")
    private List<LugarCuadrante> lugarCuadranteList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCuadrante")
    private List<CuadranteAvenida> cuadranteAvenidaList;
    @JoinColumn(name = "id_zona", referencedColumnName = "id_zona")
    @ManyToOne(optional = false)
    private Zonas idZona;

    public Cuadrante() {
    }

    public Cuadrante(Integer idCuadrante) {
        this.idCuadrante = idCuadrante;
    }

    public Cuadrante(Integer idCuadrante, String codigoCuadrante) {
        this.idCuadrante = idCuadrante;
        this.codigoCuadrante = codigoCuadrante;
    }

    public Integer getIdCuadrante() {
        return idCuadrante;
    }

    public void setIdCuadrante(Integer idCuadrante) {
        this.idCuadrante = idCuadrante;
    }

    public String getCodigoCuadrante() {
        return codigoCuadrante;
    }

    public void setCodigoCuadrante(String codigoCuadrante) {
        this.codigoCuadrante = codigoCuadrante;
    }

    @XmlTransient
    public List<CuadranteBarrio> getCuadranteBarrioList() {
        return cuadranteBarrioList;
    }

    public void setCuadranteBarrioList(List<CuadranteBarrio> cuadranteBarrioList) {
        this.cuadranteBarrioList = cuadranteBarrioList;
    }

    @XmlTransient
    public List<LugarCuadrante> getLugarCuadranteList() {
        return lugarCuadranteList;
    }

    public void setLugarCuadranteList(List<LugarCuadrante> lugarCuadranteList) {
        this.lugarCuadranteList = lugarCuadranteList;
    }

    @XmlTransient
    public List<CuadranteAvenida> getCuadranteAvenidaList() {
        return cuadranteAvenidaList;
    }

    public void setCuadranteAvenidaList(List<CuadranteAvenida> cuadranteAvenidaList) {
        this.cuadranteAvenidaList = cuadranteAvenidaList;
    }

    public Zonas getIdZona() {
        return idZona;
    }

    public void setIdZona(Zonas idZona) {
        this.idZona = idZona;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCuadrante != null ? idCuadrante.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cuadrante)) {
            return false;
        }
        Cuadrante other = (Cuadrante) object;
        if ((this.idCuadrante == null && other.idCuadrante != null) || (this.idCuadrante != null && !this.idCuadrante.equals(other.idCuadrante))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.Cuadrante[ idCuadrante=" + idCuadrante + " ]";
    }
    
}
