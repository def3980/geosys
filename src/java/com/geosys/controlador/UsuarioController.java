/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.controlador;

import com.geosys.model.Sugerencias;
import com.geosys.model.Usuario;
import java.util.ArrayList;
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

/**
 *
 * @author walter
 */
@ManagedBean(name = "usuarioController")
@SessionScoped
public class UsuarioController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();
    EntityTransaction emtrans = em.getTransaction();

    private List<Usuario> listaUsuario = new ArrayList<Usuario>();
    private Usuario usuarioActual = new Usuario();
    private String banderaCU = "C";
    private String passwd="";

    @PostConstruct
    public void Init() {
        cargaUsuarios();
    }

    public void cargaUsuarios() {
        javax.persistence.Query q = em.createQuery("select u from Usuario u");
        if (q.getResultList().size() > 0) {
            listaUsuario = q.getResultList();
        } else {
            listaUsuario = null;
        }
    }
    public void nuevo()
    {
        banderaCU="C";
        usuarioActual=new Usuario();
    }
    
    public void editar(Usuario u)
    {
        usuarioActual=u;
        banderaCU="U";
        
    }
    

    public void validar() {
        if ("".equals(usuarioActual.getNombresUsuario()) || usuarioActual.getNombresUsuario() == null) {
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_WARN, "Ingrese nombres y apellidos", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        } else if (usuarioActual.getUsuario().equals("") || usuarioActual.getUsuario() == null) {
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_WARN, "Ingrese un nombre de usuario del sistema ", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        } else if (passwd.equals("")) {
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_WARN, "Ingrese una clave", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        } else {
            guardar();
        }
    }

    public void guardar() {
        if (banderaCU.equals("C")) {
            emtrans.begin();
            usuarioActual.setCiudad("QUITO");
            usuarioActual.setPais("ECUADOR");
            usuarioActual.setClave(passwd);
            usuarioActual.setEmail("ejemplo@ejemplo.com");
            em.persist(usuarioActual);
            emtrans.commit();
            cargaUsuarios();
            usuarioActual = new Usuario();
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_INFO, "Usuario guardado con exito", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        }
        else
        {
            emtrans.begin();
            usuarioActual.setClave(passwd);
            em.merge(usuarioActual);
            emtrans.commit();
            cargaUsuarios();
            FacesMessage messages = new FacesMessage(
                    FacesMessage.SEVERITY_INFO, "Usuario modificado con exito", "");
            FacesContext.getCurrentInstance().addMessage(null, messages);
        }
    }

//    getters and setters-------------------------------------------------
    public List<Usuario> getListaUsuario() {
        return listaUsuario;
    }

    public void setListaUsuario(List<Usuario> listaUsuario) {
        this.listaUsuario = listaUsuario;
    }

    public Usuario getUsuarioActual() {
        return usuarioActual;
    }

    public void setUsuarioActual(Usuario usuarioActual) {
        this.usuarioActual = usuarioActual;
    }

    public String getBanderaCU() {
        return banderaCU;
    }

    public void setBanderaCU(String banderaCU) {
        this.banderaCU = banderaCU;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    

}
