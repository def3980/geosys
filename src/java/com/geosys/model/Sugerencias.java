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
@Table(name = "sugerencias")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sugerencias.findAll", query = "SELECT s FROM Sugerencias s"),
    @NamedQuery(name = "Sugerencias.findByIdSugerencias", query = "SELECT s FROM Sugerencias s WHERE s.idSugerencias = :idSugerencias"),
    @NamedQuery(name = "Sugerencias.findByDescripcion", query = "SELECT s FROM Sugerencias s WHERE s.descripcion = :descripcion"),
    @NamedQuery(name = "Sugerencias.findByFecha", query = "SELECT s FROM Sugerencias s WHERE s.fecha = :fecha"),
    @NamedQuery(name = "Sugerencias.findByIdUsuario", query = "SELECT s FROM Sugerencias s WHERE s.idUsuario = :idUsuario")})
public class Sugerencias implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_sugerencias")
    private Integer idSugerencias;
    @Basic(optional = false)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @Column(name = "fecha")
    private String fecha;
    @Basic(optional = false)
    @Column(name = "id_usuario")
    private int idUsuario;

    public Sugerencias() {
    }

    public Sugerencias(Integer idSugerencias) {
        this.idSugerencias = idSugerencias;
    }

    public Sugerencias(Integer idSugerencias, String descripcion, String fecha, int idUsuario) {
        this.idSugerencias = idSugerencias;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.idUsuario = idUsuario;
    }

    public Integer getIdSugerencias() {
        return idSugerencias;
    }

    public void setIdSugerencias(Integer idSugerencias) {
        this.idSugerencias = idSugerencias;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSugerencias != null ? idSugerencias.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sugerencias)) {
            return false;
        }
        Sugerencias other = (Sugerencias) object;
        if ((this.idSugerencias == null && other.idSugerencias != null) || (this.idSugerencias != null && !this.idSugerencias.equals(other.idSugerencias))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.geosys.model.Sugerencias[ idSugerencias=" + idSugerencias + " ]";
    }
    
}
