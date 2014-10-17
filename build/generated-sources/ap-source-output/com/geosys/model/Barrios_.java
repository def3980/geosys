package com.geosys.model;

import com.geosys.model.CuadranteBarrio;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2014-10-11T15:18:32")
@StaticMetamodel(Barrios.class)
public class Barrios_ { 

    public static volatile SingularAttribute<Barrios, String> nombreBarrio;
    public static volatile ListAttribute<Barrios, CuadranteBarrio> cuadranteBarrioList;
    public static volatile SingularAttribute<Barrios, Integer> idBarrio;

}