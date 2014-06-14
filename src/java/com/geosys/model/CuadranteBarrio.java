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
@Table(name = "cuadrante_barrio")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CuadranteBarrio.findAll", query = "SELECT c FROM CuadranteBarrio c"),
    @NamedQuery(name = "CuadranteBarrio.findByIdCuadraBarrio", query = "SELECT c FROM CuadranteBarrio c WHERE c.idCuadraBarrio = :idCuadraBarrio")})
public class CuadranteBarrio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_cuadra_barrio")
    private Integer idCuadraBarrio;
    @JoinColumn(name = "id_cuadrante", referencedColumnName = "id_cuadrante")
    @ManyToOne(optional = false)
    private Cuadrante idCuadrante;
    @JoinColumn(name = "id_barrio", referencedColumnName = "id_barrio")
    @ManyToOne(optional = false)
    private Barrios idBarrio;

    public CuadranteBarrio() {
    }

    public CuadranteBarrio(Integer idCuadraBarrio) {
        this.idCuadraBarrio = idCuadraBarrio;
    }

    public Integer getIdCuadraBarrio() {
        return idCuadraBarrio;
    }

    public void setIdCuadraBarrio(Integer idCuadraBarrio) {
        this.idCuadraBarrio = idCuadraBarrio;
    }

    public Cuadrante getIdCuadrante() {
        return idCuadrante;
    }

    public void setIdCuadrante(Cuadrante idCuadrante) {
        this.idCuadrante = idCuadrante;
    }

    public Barrios getIdBarrio() {
        return idBarrio;
    }

    public void setIdBarrio(Barrios idBarrio) {
        this.idBarrio = idBarrio;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCuadraBarrio != null ? idCuadraBarrio.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CuadranteBarrio)) {
            return false;
        }
        CuadranteBarrio other = (CuadranteBarrio) object;
        if ((this.idCuadraBarrio == null && other.idCuadraBarrio != null) || (this.idCuadraBarrio != null && !this.idCuadraBarrio.equals(other.idCuadraBarrio))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.CuadranteBarrio[ idCuadraBarrio=" + idCuadraBarrio + " ]";
    }
    
}
