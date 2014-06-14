/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.geosys.controlador;

import com.geosys.model.CuadranteAvenida;
import com.geosys.util.CuadrantesCoordenadas;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.primefaces.model.map.DefaultMapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.MapModel;
import org.primefaces.model.map.Marker;

/**
 *
 * @author walter
 */
@ManagedBean(name = "cuadranteAvenidaController")
@SessionScoped
public class CuadranteAvenidaController {
    
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();
    
    List<CuadranteAvenida> listCuadranteAvenida = new ArrayList<CuadranteAvenida>();
    CuadranteAvenida cuadranteAvenidaActual = new CuadranteAvenida();
    
    private boolean viewMapa = false;
    private boolean viewMapServer =false;
    private double lat = -0.2081351689;
    private double lon = -78.500241931;
    private MapModel simpleModel;
    private String nombreBuscar="";
    private String rutaURL="http://itasca.tesis:8080/cgi-bin/mapserv?layer=lakespy2&layer=dlgstln2&zoomsize=2&map_web=+TEMPLATE+itasca_basic.html&map=%2Fvar%2Flib%2Ftomcat7%2Fmapserver%2Fapps%2Fmapserv-demo%2FROOT%2Fitasca.map&program=%2Fcgi-bin%2Fmapserv&root=%2Fmapserv-demo&template=itasca_basic.html";
    
    @PostConstruct
    public void Init()
    {
        carga();
    }
    
    public void carga() {
        javax.persistence.Query q = em.createQuery("SELECT c FROM CuadranteAvenida c "
                + "WHERE (UPPER(c.idAvenida.nombreAvenida) like :nombre "
                + "OR UPPER(c.idCuadrante.codigoCuadrante) like :nombre) "
                + "ORDER BY c.idAvenida.nombreAvenida");

        q.setParameter("nombre", "%" + nombreBuscar.toUpperCase() + "%");
        if (q.getResultList().size() > 0) {
            listCuadranteAvenida = q.getResultList();
        } else {
            listCuadranteAvenida = null;
        }
    }

    public void verMapa(CuadranteAvenida c) {
        viewMapa = true;
        transformarCuadrante(c);
    }

    public void cerrarMapa() {
        viewMapa = false;
    }
    public void verMapServer()
    {
        viewMapServer=true;
    }
    public void cerrarMapServer()
    {
        viewMapServer=false;
    }

    public void transformarCuadrante(CuadranteAvenida cuadranteAvenida) {

        simpleModel = new DefaultMapModel();

        CuadrantesCoordenadas cc = new CuadrantesCoordenadas();
        double latLon[] = cc.coordenadas(cuadranteAvenida.getIdCuadrante().getCodigoCuadrante());
        lat = latLon[0];
        lon = latLon[1];

        LatLng coord1 = new LatLng(lat, lon);
        simpleModel.addOverlay(new Marker(coord1, "Avenida: " + cuadranteAvenida.getIdAvenida().getNombreAvenida() + " -- " + cuadranteAvenida.getIdCuadrante().getCodigoCuadrante()));
        cuadranteAvenidaActual = cuadranteAvenida;

    }

//    -----------getters and setters-----------------------------------------
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

    public List<CuadranteAvenida> getListCuadranteAvenida() {
        return listCuadranteAvenida;
    }

    public void setListCuadranteAvenida(List<CuadranteAvenida> listCuadranteAvenida) {
        this.listCuadranteAvenida = listCuadranteAvenida;
    }

    public CuadranteAvenida getCuadranteAvenidaActual() {
        return cuadranteAvenidaActual;
    }

    public void setCuadranteAvenidaActual(CuadranteAvenida cuadranteAvenidaActual) {
        this.cuadranteAvenidaActual = cuadranteAvenidaActual;
    }

   

    public boolean isViewMapa() {
        return viewMapa;
    }

    public void setViewMapa(boolean viewMapa) {
        this.viewMapa = viewMapa;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLon() {
        return lon;
    }

    public void setLon(double lon) {
        this.lon = lon;
    }

    public MapModel getSimpleModel() {
        return simpleModel;
    }

    public void setSimpleModel(MapModel simpleModel) {
        this.simpleModel = simpleModel;
    }

    public String getNombreBuscar() {
        return nombreBuscar;
    }

    public void setNombreBuscar(String nombreBuscar) {
        this.nombreBuscar = nombreBuscar;
    }

    public boolean isViewMapServer() {
        return viewMapServer;
    }

    public void setViewMapServer(boolean viewMapServer) {
        this.viewMapServer = viewMapServer;
    }

    public String getRutaURL() {
        return rutaURL;
    }

    public void setRutaURL(String rutaURL) {
        this.rutaURL = rutaURL;
    }
    
    
}
