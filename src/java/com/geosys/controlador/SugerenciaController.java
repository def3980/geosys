/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.controlador;

import com.geosys.model.Sugerencias;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author walter
 */
@ManagedBean(name = "sugerenciaController")
@SessionScoped
public class SugerenciaController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();
    EntityTransaction emtrans = em.getTransaction();

    private Sugerencias sugerenciaActual = new Sugerencias();
    private String fecha = new SimpleDateFormat("dd-MM-yyyy").format(new Date());
    private List<Sugerencias> listaSugerencias = new ArrayList<Sugerencias>();
    private Integer userId;
    private Integer tipo;

    @PostConstruct
    public void init() {
        HttpServletRequest request = (HttpServletRequest) FacesContext
                .getCurrentInstance().getExternalContext()
                .getRequest();
        userId = (Integer) request.getSession(false).getAttribute("userId");
        tipo = (Integer) request.getSession(false).getAttribute("tipo");
        cargarSugerencias();

    }

    public void validar() {
        if (sugerenciaActual.getDescripcion().length() < 5) {
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_WARN, "Escriba una sugerencia, minimo 5 caracteres", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        } else {
            guardar();
        }

    }

    public void guardar() {
        emtrans.begin();
        sugerenciaActual.setFecha(fecha);
        sugerenciaActual.setIdUsuario(userId);
        em.persist(sugerenciaActual);
        emtrans.commit();
        sugerenciaActual = new Sugerencias();
        FacesMessage messages = new FacesMessage(
                FacesMessage.SEVERITY_INFO, "Sugerencia guardado con exito", "");
        FacesContext.getCurrentInstance().addMessage(null, messages);
    }

    public void cargarSugerencias() {
        if (tipo == 1) {
            javax.persistence.Query q;
            q = em.createQuery("SELECT s FROM Sugerencias s ORDER BY s.idSugerencias desc");
            if (q.getResultList().size() > 0) {
                listaSugerencias = q.getResultList();
            } else {
                listaSugerencias = null;
            }
        } else {
            javax.persistence.Query q;
            q = em.createQuery("SELECT s FROM Sugerencias s where s.idUsuario= :userId ORDER BY s.idSugerencias desc");
            q.setParameter("userId", userId);
            if (q.getResultList().size() > 0) {
                listaSugerencias = q.getResultList();
            } else {
                listaSugerencias = null;
            }
        }
    }

//    getter and setter
    public EntityManagerFactory getEmf() {
        return emf;
    }

    public void setEmf(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public EntityManager getEm() {
        return em;
    }

    public void setEm(EntityManager em) {
        this.em = em;
    }

    public Sugerencias getSugerenciaActual() {
        return sugerenciaActual;
    }

    public void setSugerenciaActual(Sugerencias sugerenciaActual) {
        this.sugerenciaActual = sugerenciaActual;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public List<Sugerencias> getListaSugerencias() {
        return listaSugerencias;
    }

    public void setListaSugerencias(List<Sugerencias> listaSugerencias) {
        this.listaSugerencias = listaSugerencias;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

}
