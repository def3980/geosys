/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.util;

import com.geosys.model.Usuario;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author walter
 */
@ManagedBean(name = "login")
@SessionScoped
public class Login {
    
    
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();
    
    private String usuario = "";
    private String clave = "";
    private Integer tipo;

    public void acceder() {
        try {
            
            javax.persistence.Query q=em.createQuery("SELECT u FROM Usuario u WHERE u.usuario= :usuario and u.clave= :clave");
            q.setParameter("usuario", usuario);
            q.setParameter("clave", clave);
            if (q.getResultList().size()>0) {
                
                Usuario user =(Usuario) q.getResultList().get(0);
                tipo=user.getTipoUsuario();
                HttpServletRequest request = (HttpServletRequest) FacesContext
                        .getCurrentInstance().getExternalContext()
                        .getRequest();
                request.getSession(false).setAttribute("userId",user.getIdusuario());
                request.getSession(false).setAttribute("tipo",tipo);

                FacesContext.getCurrentInstance().getExternalContext()
                        .redirect("geosys/j_spring_security_check?j_username="
                                + getUsuario() + "&j_password="+ getUsuario());

//                FacesContext.getCurrentInstance().getExternalContext().redirect("pages/presentacion.xhtml");

            } else {
                FacesMessage messages = new FacesMessage(
                        FacesMessage.SEVERITY_WARN, "Usuario y/o contraseña incorrectos",
                        "Warning");
                FacesContext.getCurrentInstance().addMessage(null, messages);
            }
        } catch (Exception ex) {

        }
    }

    public String cerrar() {

        FacesContext.getCurrentInstance().getExternalContext()
                .invalidateSession();
        return "/login?faces-redirect=true";
    }

//    getter and setters-------------------------------------------------------------------
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

    
    

}
