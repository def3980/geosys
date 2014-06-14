/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geosys.util;

/**
 *
 * @author tesis
 */
public class CuadrantesCoordenadas {

    public CuadrantesCoordenadas() {}
    
    public double[] coordenadas(String cuadrante) {
        
        double coordenada[] = new double[2];
        double latitud      = -0.375059218000000;
        double longitud     = -78.5833148500000;
        double errlatitud   = -0.000025663000000;
        double errlongitud  = 0.000035887000;
        double lat          = -0.009060290000000;
        double lon          = -0.0089424920000;
        char l              = cuadrante.charAt(0);
        String num          = "";

        if (cuadrante.length() == 3) {
            num += cuadrante.substring(1, 3);
        } else {
            num += cuadrante.charAt(1);
        }

        int planoy = 0;
        int planox=0;
        planox = Integer.parseInt(num);

        if (l=='A') planoy = 1;
        if (l=='B') planoy = 2;
        if (l=='C') planoy = 3;
        if (l=='D') planoy = 4;
        if (l=='E') planoy = 5;
        if (l=='F') planoy = 6;
        if (l=='G') planoy = 7;
        if (l=='H') planoy = 8;
        if (l=='I') planoy = 9;
        if (l=='J') planoy = 10;
        if (l=='K') planoy = 11;
        if (l=='L') planoy = 12;
        if (l=='M') planoy = 13;
        if (l=='N') planoy = 14;
        if (l=='Ñ') planoy = 15;
        if (l=='O') planoy = 16;

        coordenada[0] = latitud - (lat - errlatitud) * planox;
        coordenada[1] = longitud - (lon - errlongitud) * planoy;

        return coordenada;
    }
    
}