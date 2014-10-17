package com.geosys.model;

import com.geosys.model.Zonas;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2014-10-11T15:18:32")
@StaticMetamodel(Cuadrante.class)
public class Cuadrante_ { 

    public static volatile SingularAttribute<Cuadrante, Zonas> idZona;
    public static volatile SingularAttribute<Cuadrante, Integer> idCuadrante;
    public static volatile SingularAttribute<Cuadrante, String> codigoCuadrante;
    public static volatile SingularAttribute<Cuadrante, BigDecimal> puntoX;
    public static volatile SingularAttribute<Cuadrante, BigDecimal> puntoY;

}