/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.controlador;

import com.geosys.model.CuadranteBarrio;
import com.geosys.util.CuadrantesCoordenadas;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.EntityManager;
import org.primefaces.model.map.DefaultMapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.MapModel;
import org.primefaces.model.map.Marker;

/**
 *
 * @author walter
 */
@ManagedBean(name = "cuadranteBarrioController")
@SessionScoped
public class CuadranteBarrioController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("geosysPU");
    EntityManager em = emf.createEntityManager();

    List<CuadranteBarrio> listCuadranteBarrio = new ArrayList<CuadranteBarrio>();
    CuadranteBarrio cuadranteBarrioActual = new CuadranteBarrio();
    private boolean viewMapa = false;
    private boolean viewMapServer =false;
    private double lat = -0.2081351689;
    private double lon = -78.500241931;
    private MapModel simpleModel;
    private String nombreBuscar="";
//    private String rutaURL="http://itasca.tesis:8080/cgi-bin/mapserv?layer=lakespy2&layer=dlgstln2&zoomsize=2&map_web=+TEMPLATE+itasca_basic.html&map=%2Fvar%2Flib%2Ftomcat7%2Fmapserver%2Fapps%2Fmapserv-demo%2FROOT%2Fitasca.map&program=%2Fcgi-bin%2Fmapserv&root=%2Fmapserv-demo&template=itasca_basic.html";
    private String rutaURL="http://itasca.tesis:8080/cgi-bin/mapserv?mode=browse&layer=dlgstln2&layer=lakespy2&zoomdir=-1&zoomsize=5&map_web=+TEMPLATE+itasca_basic.html&imgxy=350.0+200.0&imgext=388107.634400+5200287.742790+500896.339020+5313076.447409&map=/var/lib/tomcat7/mapserver/apps/mapserv-demo/ROOT/itasca.map&program=/cgi-bin/mapserv&root=/mapserv-";

    
    @PostConstruct
    public void Init()
    {
        carga();
    }
    
    public void carga() {
        javax.persistence.Query q = em.createQuery("SELECT c FROM CuadranteBarrio c "
                + "WHERE (UPPER(c.idBarrio.nombreBarrio) like :nombre "
                + "OR UPPER(c.idCuadrante.codigoCuadrante) like :nombre) "
                + "ORDER BY c.idBarrio.nombreBarrio");

        q.setParameter("nombre", "%" + nombreBuscar.toUpperCase() + "%");
        if (q.getResultList().size() > 0) {
            listCuadranteBarrio = q.getResultList();
        } else {
            listCuadranteBarrio = null;
        }
    }

    public void verMapa(CuadranteBarrio c) {
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

    public void transformarCuadrante(CuadranteBarrio cuadranteBarrio) {

        simpleModel = new DefaultMapModel();

        CuadrantesCoordenadas cc = new CuadrantesCoordenadas();
        double latLon[] = cc.coordenadas(cuadranteBarrio.getIdCuadrante().getCodigoCuadrante());
        lat = latLon[0];
        lon = latLon[1];

        LatLng coord1 = new LatLng(lat, lon);
        simpleModel.addOverlay(new Marker(coord1, "Barrio: " + cuadranteBarrio.getIdBarrio().getNombreBarrio() + " -- " + cuadranteBarrio.getIdCuadrante().getCodigoCuadrante()));
        cuadranteBarrioActual = cuadranteBarrio;

    }

//    getter and setter----------------------------------------------------------
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

    public List<CuadranteBarrio> getListCuadranteBarrio() {
        return listCuadranteBarrio;
    }

    public void setListCuadranteBarrio(List<CuadranteBarrio> listCuadranteBarrio) {
        this.listCuadranteBarrio = listCuadranteBarrio;
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

    public boolean isViewMapa() {
        return viewMapa;
    }

    public void setViewMapa(boolean viewMapa) {
        this.viewMapa = viewMapa;
    }

    public MapModel getSimpleModel() {
        return simpleModel;
    }

    public void setSimpleModel(MapModel simpleModel) {
        this.simpleModel = simpleModel;
    }

    public CuadranteBarrio getCuadranteBarrioActual() {
        return cuadranteBarrioActual;
    }

    public void setCuadranteBarrioActual(CuadranteBarrio cuadranteBarrioActual) {
        this.cuadranteBarrioActual = cuadranteBarrioActual;
    }

    public String getNombreBuscar() {
        return nombreBuscar;
    }

    public void setNombreBuscar(String nombreBuscar) {
        this.nombreBuscar = nombreBuscar;
    }

    public String getRutaURL() {
        return rutaURL;
    }

    public void setRutaURL(String rutaURL) {
        this.rutaURL = rutaURL;
    }

    public boolean isViewMapServer() {
        return viewMapServer;
    }

    public void setViewMapServer(boolean viewMapServer) {
        this.viewMapServer = viewMapServer;
    }
    

}
