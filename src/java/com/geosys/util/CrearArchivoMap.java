/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author walter
 */
@ManagedBean(name = "crearArchivoMap")
@SessionScoped
public class CrearArchivoMap {

    public void cargaArchivo() {
        try {
            File outFile = new File("/home/walter/Escritorio/itasca.map");
            BufferedWriter writer = new BufferedWriter(new FileWriter(outFile));
            writer.write("MAP");writer.newLine();
            writer.write("  NAME ITASCA");writer.newLine();
            writer.write("  STATUS ON");writer.newLine();
            writer.write("  SIZE 700 400");writer.newLine();
            writer.write("  EXTENT 768356.63 9955855.26 790107.69 10004030.80");writer.newLine();
            writer.write("  UNITS METERS");writer.newLine();
            writer.write("  SHAPEPATH \"data\"");writer.newLine();
            writer.write("  IMAGECOLOR 255 255 255");writer.newLine();
            writer.write("  TEMPLATEPATTERN \"itasca\"");writer.newLine();
            writer.newLine();
            writer.write("  IMAGETYPE PNG");writer.newLine();
            writer.newLine();
            writer.write("  SYMBOL");writer.newLine();
            writer.write("    NAME 'circle'");writer.newLine();
            writer.write("    TYPE ELLIPSE");writer.newLine();
            writer.write("    POINTS 1 1 END");writer.newLine();
            writer.write("    FILLED TRUE");writer.newLine();
            writer.write("  END");writer.newLine();
            writer.newLine();
            writer.write("  SYMBOL");writer.newLine();
            writer.write("    NAME 'star'");writer.newLine();
            writer.write("    TYPE VECTOR");writer.newLine();
            writer.write("    FILLED TRUE");writer.newLine();
            writer.write("    POINTS");writer.newLine();
            writer.write("      0 .375");writer.newLine();
            writer.write("      .35 .375");writer.newLine();
            writer.write("      .5 0");writer.newLine();
            writer.write("      .65 .375");writer.newLine();
            writer.write("      1 .375");writer.newLine();
            writer.write("      .75 .625");writer.newLine();
            writer.write("      .875 1");writer.newLine();
            writer.write("      .5 .75");writer.newLine();
            writer.write("      .125 1");writer.newLine();
            writer.write("      .25 .625");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.write("  END ");writer.newLine();
            writer.newLine();
            writer.write("  WEB");writer.newLine();
            writer.write("    HEADER templates/header.html");writer.newLine();
            writer.write("    TEMPLATE \"set in index.html\"");writer.newLine();
            writer.write("    FOOTER templates/footer.html");writer.newLine();
            writer.write("    MINSCALE 1000");writer.newLine();
            writer.write("    MAXSCALE 1550000");writer.newLine();
            writer.newLine();
            writer.write("    IMAGEPATH \" / var / lib / tomcat7 / mapserver / apps / mapserv - demo / ROOT / tmp / \"");writer.newLine();
            writer.write("    IMAGEURL \" / tmp / \"");writer.newLine();
            writer.newLine();
            writer.write("    METADATA");writer.newLine();
            writer.write("      WMS_TITLE \"UMN MapServer Itasca Demo\"");writer.newLine();
            writer.write("      WMS_ABSTRACT \"This is a UMN MapServer application for Itasca County  located in north central Minnesota.\"");writer.newLine();
            writer.write("      WMS_ACCESSCONSTRAINTS \"none\"");writer.newLine();
            writer.newLine();
            writer.write("      WMS_ONLINERESOURCE \"http://localhost.localdomain/mapserver_demos/itasca/index.html\"");writer.newLine();
            writer.newLine();
            writer.write("      WMS_SRS \"EPSG:32717\"");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.write("  END");writer.newLine();
            writer.newLine();
            writer.write("# capa principal-------------------------------------------");writer.newLine();
            writer.write("  LAYER");writer.newLine();
            writer.write("    NAME Quito");writer.newLine();
            writer.write("    TYPE POLYGON");writer.newLine();
            writer.write("    STATUS DEFAULT");writer.newLine();
            writer.write("    DATA Quito");writer.newLine();
            writer.newLine();
            writer.write("    CLASSITEM 'nombre'");writer.newLine();
            writer.write("    CLASS");writer.newLine();
            writer.write("      EXPRESSION 'Itasca'");writer.newLine();
            writer.write("      STYLE");writer.newLine();
            writer.write("        OUTLINECOLOR 128 128 128");writer.newLine();
            writer.write("        COLOR 225 225 185");writer.newLine();
            writer.write("      END");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.write("    CLASS # every other county in the state");writer.newLine();
            writer.write("      EXPRESSION /./ ");writer.newLine();
            writer.write("       STYLE ");writer.newLine();
            writer.write("        OUTLINECOLOR 128 128 128");writer.newLine();
            writer.write("        COLOR 255 255 255");writer.newLine();
            writer.write("      END");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.write("# fin capa principal----------------------------------------");writer.newLine();
            writer.newLine();
            writer.write("  LAYER");writer.newLine();
            writer.write("    NAME C5");writer.newLine();
            writer.write("    TYPE POLYGON");writer.newLine();
            writer.write("    STATUS OFF");writer.newLine();
            writer.write("    DATA C5");writer.newLine();
            writer.newLine();
            writer.write("    CLASS");writer.newLine();
            writer.write("      NAME 'Lakes & Rivers'");writer.newLine();
            writer.write("      TEMPLATE \"templates / lakespy2.html\"");writer.newLine();
            writer.write("      STYLE");writer.newLine();
            writer.write("        OUTLINECOLOR 128 128 128");writer.newLine();
            writer.write("        COLOR 49 117 185");writer.newLine();
            writer.write("      END");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.newLine();
            writer.write("    HEADER \"templates / lakespy2_header.html\"");writer.newLine();
            writer.write("    FOOTER \"templates / lakespy2_footer.html\"");writer.newLine();
            writer.newLine();
            writer.write("    TOLERANCE 3");writer.newLine();
            writer.newLine();
            writer.write("    DUMP TRUE # allow GML export");writer.newLine();
            writer.newLine();
            writer.write("    METADATA");writer.newLine();
            writer.write("      WMS_TITLE \"Lakes and Rivers\"");writer.newLine();
            writer.write("      WMS_ABSTRACT \"DLG lake and river polygons for Itasca County. See http://deli.dnr.state.mn.us/metadata/full/dlglkpy2.html for more information.\"");writer.newLine();
            writer.write("      WMS_SRS \"EPSG:32717\"");writer.newLine();
            writer.write("    END");writer.newLine();
            writer.write("  END # lakes");writer.newLine();
            writer.write("END # Map File");writer.newLine();
            writer.close();
        } catch (IOException e) {
            System.err.println(e);
            System.exit(1);
        }
    }

}
