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
@Table(name = "cuadrante_avenida")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CuadranteAvenida.findAll", query = "SELECT c FROM CuadranteAvenida c"),
    @NamedQuery(name = "CuadranteAvenida.findByIdCuadAve", query = "SELECT c FROM CuadranteAvenida c WHERE c.idCuadAve = :idCuadAve")})
public class CuadranteAvenida implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_cuad_ave")
    private Integer idCuadAve;
    @JoinColumn(name = "id_cuadrante", referencedColumnName = "id_cuadrante")
    @ManyToOne(optional = false)
    private Cuadrante idCuadrante;
    @JoinColumn(name = "id_avenida", referencedColumnName = "id_avenida")
    @ManyToOne(optional = false)
    private Avenida idAvenida;

    public CuadranteAvenida() {
    }

    public CuadranteAvenida(Integer idCuadAve) {
        this.idCuadAve = idCuadAve;
    }

    public Integer getIdCuadAve() {
        return idCuadAve;
    }

    public void setIdCuadAve(Integer idCuadAve) {
        this.idCuadAve = idCuadAve;
    }

    public Cuadrante getIdCuadrante() {
        return idCuadrante;
    }

    public void setIdCuadrante(Cuadrante idCuadrante) {
        this.idCuadrante = idCuadrante;
    }

    public Avenida getIdAvenida() {
        return idAvenida;
    }

    public void setIdAvenida(Avenida idAvenida) {
        this.idAvenida = idAvenida;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCuadAve != null ? idCuadAve.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CuadranteAvenida)) {
            return false;
        }
        CuadranteAvenida other = (CuadranteAvenida) object;
        if ((this.idCuadAve == null && other.idCuadAve != null) || (this.idCuadAve != null && !this.idCuadAve.equals(other.idCuadAve))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.CuadranteAvenida[ idCuadAve=" + idCuadAve + " ]";
    }
    
}
