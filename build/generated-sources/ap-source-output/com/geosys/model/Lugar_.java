package com.geosys.model;

import com.geosys.model.LugarCuadrante;
import com.geosys.model.TipoLugar;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2014-05-29T05:18:32")
@StaticMetamodel(Lugar.class)
public class Lugar_ { 

    public static volatile ListAttribute<Lugar, LugarCuadrante> lugarCuadranteList;
    public static volatile SingularAttribute<Lugar, TipoLugar> idTipoLugar;
    public static volatile SingularAttribute<Lugar, Integer> idLugar;
    public static volatile SingularAttribute<Lugar, String> nombreLugar;

}