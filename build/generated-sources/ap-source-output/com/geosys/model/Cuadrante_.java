package com.geosys.model;

import com.geosys.model.CuadranteAvenida;
import com.geosys.model.CuadranteBarrio;
import com.geosys.model.LugarCuadrante;
import com.geosys.model.Zonas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2014-05-29T05:18:32")
@StaticMetamodel(Cuadrante.class)
public class Cuadrante_ { 

    public static volatile ListAttribute<Cuadrante, LugarCuadrante> lugarCuadranteList;
    public static volatile ListAttribute<Cuadrante, CuadranteAvenida> cuadranteAvenidaList;
    public static volatile SingularAttribute<Cuadrante, Zonas> idZona;
    public static volatile SingularAttribute<Cuadrante, Integer> idCuadrante;
    public static volatile SingularAttribute<Cuadrante, String> codigoCuadrante;
    public static volatile ListAttribute<Cuadrante, CuadranteBarrio> cuadranteBarrioList;

}