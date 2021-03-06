PGDMP                     	    r            geosys    9.3.1    9.3.1 u    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            q           1262    16560    geosys    DATABASE     x   CREATE DATABASE geosys WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_EC.UTF-8' LC_CTYPE = 'es_EC.UTF-8';
    DROP DATABASE geosys;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            r           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            s           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11828    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            t           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    194            �            1259    16561    avenida    TABLE     m   CREATE TABLE avenida (
    id_avenida integer NOT NULL,
    nombre_avenida character varying(50) NOT NULL
);
    DROP TABLE public.avenida;
       public         postgres    false    6            �            1259    16564    avenida_id_avenida_seq    SEQUENCE     x   CREATE SEQUENCE avenida_id_avenida_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.avenida_id_avenida_seq;
       public       postgres    false    170    6            u           0    0    avenida_id_avenida_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE avenida_id_avenida_seq OWNED BY avenida.id_avenida;
            public       postgres    false    171            �            1259    16566    barrios    TABLE     k   CREATE TABLE barrios (
    id_barrio integer NOT NULL,
    nombre_barrio character varying(40) NOT NULL
);
    DROP TABLE public.barrios;
       public         postgres    false    6            �            1259    16569    barrios_id_barrio_seq    SEQUENCE     w   CREATE SEQUENCE barrios_id_barrio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.barrios_id_barrio_seq;
       public       postgres    false    172    6            v           0    0    barrios_id_barrio_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE barrios_id_barrio_seq OWNED BY barrios.id_barrio;
            public       postgres    false    173            �            1259    16571 	   cuadrante    TABLE     �   CREATE TABLE cuadrante (
    id_cuadrante integer NOT NULL,
    codigo_cuadrante character varying(10) NOT NULL,
    id_zona integer NOT NULL,
    punto_x numeric(10,2),
    punto_y numeric(10,2)
);
    DROP TABLE public.cuadrante;
       public         postgres    false    6            �            1259    16574    cuadrante_avenida    TABLE     �   CREATE TABLE cuadrante_avenida (
    id_cuad_ave integer NOT NULL,
    id_cuadrante integer NOT NULL,
    id_avenida integer NOT NULL
);
 %   DROP TABLE public.cuadrante_avenida;
       public         postgres    false    6            �            1259    16577 !   cuadrante_avenida_id_cuad_ave_seq    SEQUENCE     �   CREATE SEQUENCE cuadrante_avenida_id_cuad_ave_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.cuadrante_avenida_id_cuad_ave_seq;
       public       postgres    false    6    175            w           0    0 !   cuadrante_avenida_id_cuad_ave_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE cuadrante_avenida_id_cuad_ave_seq OWNED BY cuadrante_avenida.id_cuad_ave;
            public       postgres    false    176            �            1259    16579    cuadrante_barrio    TABLE     �   CREATE TABLE cuadrante_barrio (
    id_cuadra_barrio integer NOT NULL,
    id_cuadrante integer NOT NULL,
    id_barrio integer NOT NULL
);
 $   DROP TABLE public.cuadrante_barrio;
       public         postgres    false    6            �            1259    16582 %   cuadrante_barrio_id_cuadra_barrio_seq    SEQUENCE     �   CREATE SEQUENCE cuadrante_barrio_id_cuadra_barrio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cuadrante_barrio_id_cuadra_barrio_seq;
       public       postgres    false    6    177            x           0    0 %   cuadrante_barrio_id_cuadra_barrio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE cuadrante_barrio_id_cuadra_barrio_seq OWNED BY cuadrante_barrio.id_cuadra_barrio;
            public       postgres    false    178            �            1259    16584    cuadrante_id_cuadrante_seq    SEQUENCE     |   CREATE SEQUENCE cuadrante_id_cuadrante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cuadrante_id_cuadrante_seq;
       public       postgres    false    6    174            y           0    0    cuadrante_id_cuadrante_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE cuadrante_id_cuadrante_seq OWNED BY cuadrante.id_cuadrante;
            public       postgres    false    179            �            1259    16586    lugar    TABLE     �   CREATE TABLE lugar (
    id_lugar integer NOT NULL,
    nombre_lugar character varying(50) NOT NULL,
    id_tipo_lugar integer NOT NULL
);
    DROP TABLE public.lugar;
       public         postgres    false    6            �            1259    16589    lugar_cuadrante    TABLE     �   CREATE TABLE lugar_cuadrante (
    id_lugar_cua integer NOT NULL,
    id_lugar integer NOT NULL,
    id_cuadrante integer NOT NULL
);
 #   DROP TABLE public.lugar_cuadrante;
       public         postgres    false    6            �            1259    16592     lugar_cuadrante_id_lugar_cua_seq    SEQUENCE     �   CREATE SEQUENCE lugar_cuadrante_id_lugar_cua_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.lugar_cuadrante_id_lugar_cua_seq;
       public       postgres    false    6    181            z           0    0     lugar_cuadrante_id_lugar_cua_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE lugar_cuadrante_id_lugar_cua_seq OWNED BY lugar_cuadrante.id_lugar_cua;
            public       postgres    false    182            �            1259    16594    lugar_id_lugar_seq    SEQUENCE     t   CREATE SEQUENCE lugar_id_lugar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.lugar_id_lugar_seq;
       public       postgres    false    6    180            {           0    0    lugar_id_lugar_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE lugar_id_lugar_seq OWNED BY lugar.id_lugar;
            public       postgres    false    183            �            1259    16596 	   sub_menus    TABLE     �   CREATE TABLE sub_menus (
    idsubmenu integer NOT NULL,
    nombre_submenu character varying(50),
    parent_idsubmenu integer NOT NULL,
    tipo_usuario integer,
    ruta_menu character varying(100)
);
    DROP TABLE public.sub_menus;
       public         postgres    false    6            �            1259    16599    sub_menu_idsubmenu_seq    SEQUENCE     x   CREATE SEQUENCE sub_menu_idsubmenu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sub_menu_idsubmenu_seq;
       public       postgres    false    6    184            |           0    0    sub_menu_idsubmenu_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE sub_menu_idsubmenu_seq OWNED BY sub_menus.idsubmenu;
            public       postgres    false    185            �            1259    16601    sugerencias    TABLE     �   CREATE TABLE sugerencias (
    id_sugerencias integer NOT NULL,
    descripcion character varying(200) NOT NULL,
    fecha character varying(50) NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.sugerencias;
       public         postgres    false    6            �            1259    16604    sugerencias_id_sugerencias_seq    SEQUENCE     �   CREATE SEQUENCE sugerencias_id_sugerencias_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.sugerencias_id_sugerencias_seq;
       public       postgres    false    6    186            }           0    0    sugerencias_id_sugerencias_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE sugerencias_id_sugerencias_seq OWNED BY sugerencias.id_sugerencias;
            public       postgres    false    187            �            1259    16606 
   tipo_lugar    TABLE     o   CREATE TABLE tipo_lugar (
    id_tipo_lugar integer NOT NULL,
    tipo_lugar character varying(50) NOT NULL
);
    DROP TABLE public.tipo_lugar;
       public         postgres    false    6            �            1259    16609    tipo_lugar_id_tipo_lugar_seq    SEQUENCE     ~   CREATE SEQUENCE tipo_lugar_id_tipo_lugar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tipo_lugar_id_tipo_lugar_seq;
       public       postgres    false    6    188            ~           0    0    tipo_lugar_id_tipo_lugar_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE tipo_lugar_id_tipo_lugar_seq OWNED BY tipo_lugar.id_tipo_lugar;
            public       postgres    false    189            �            1259    16611    usuario    TABLE     e  CREATE TABLE usuario (
    usuario character varying(20) NOT NULL,
    nombres_usuario character varying(100) NOT NULL,
    clave character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    ciudad character varying(20) NOT NULL,
    pais character varying(15) NOT NULL,
    tipo_usuario integer NOT NULL,
    idusuario integer NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false    6            �            1259    16614    usuario_idusuario_seq    SEQUENCE     w   CREATE SEQUENCE usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public       postgres    false    190    6                       0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE usuario_idusuario_seq OWNED BY usuario.idusuario;
            public       postgres    false    191            �            1259    16616    zonas    TABLE     e   CREATE TABLE zonas (
    id_zona integer NOT NULL,
    nombre_zona character varying(20) NOT NULL
);
    DROP TABLE public.zonas;
       public         postgres    false    6            �            1259    16619    zonas_id_zona_seq    SEQUENCE     s   CREATE SEQUENCE zonas_id_zona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.zonas_id_zona_seq;
       public       postgres    false    6    192            �           0    0    zonas_id_zona_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE zonas_id_zona_seq OWNED BY zonas.id_zona;
            public       postgres    false    193            �           2604    16621 
   id_avenida    DEFAULT     j   ALTER TABLE ONLY avenida ALTER COLUMN id_avenida SET DEFAULT nextval('avenida_id_avenida_seq'::regclass);
 A   ALTER TABLE public.avenida ALTER COLUMN id_avenida DROP DEFAULT;
       public       postgres    false    171    170            �           2604    16622 	   id_barrio    DEFAULT     h   ALTER TABLE ONLY barrios ALTER COLUMN id_barrio SET DEFAULT nextval('barrios_id_barrio_seq'::regclass);
 @   ALTER TABLE public.barrios ALTER COLUMN id_barrio DROP DEFAULT;
       public       postgres    false    173    172            �           2604    16623    id_cuadrante    DEFAULT     r   ALTER TABLE ONLY cuadrante ALTER COLUMN id_cuadrante SET DEFAULT nextval('cuadrante_id_cuadrante_seq'::regclass);
 E   ALTER TABLE public.cuadrante ALTER COLUMN id_cuadrante DROP DEFAULT;
       public       postgres    false    179    174            �           2604    16624    id_cuad_ave    DEFAULT     �   ALTER TABLE ONLY cuadrante_avenida ALTER COLUMN id_cuad_ave SET DEFAULT nextval('cuadrante_avenida_id_cuad_ave_seq'::regclass);
 L   ALTER TABLE public.cuadrante_avenida ALTER COLUMN id_cuad_ave DROP DEFAULT;
       public       postgres    false    176    175            �           2604    16625    id_cuadra_barrio    DEFAULT     �   ALTER TABLE ONLY cuadrante_barrio ALTER COLUMN id_cuadra_barrio SET DEFAULT nextval('cuadrante_barrio_id_cuadra_barrio_seq'::regclass);
 P   ALTER TABLE public.cuadrante_barrio ALTER COLUMN id_cuadra_barrio DROP DEFAULT;
       public       postgres    false    178    177            �           2604    16626    id_lugar    DEFAULT     b   ALTER TABLE ONLY lugar ALTER COLUMN id_lugar SET DEFAULT nextval('lugar_id_lugar_seq'::regclass);
 =   ALTER TABLE public.lugar ALTER COLUMN id_lugar DROP DEFAULT;
       public       postgres    false    183    180            �           2604    16627    id_lugar_cua    DEFAULT     ~   ALTER TABLE ONLY lugar_cuadrante ALTER COLUMN id_lugar_cua SET DEFAULT nextval('lugar_cuadrante_id_lugar_cua_seq'::regclass);
 K   ALTER TABLE public.lugar_cuadrante ALTER COLUMN id_lugar_cua DROP DEFAULT;
       public       postgres    false    182    181            �           2604    16628 	   idsubmenu    DEFAULT     k   ALTER TABLE ONLY sub_menus ALTER COLUMN idsubmenu SET DEFAULT nextval('sub_menu_idsubmenu_seq'::regclass);
 B   ALTER TABLE public.sub_menus ALTER COLUMN idsubmenu DROP DEFAULT;
       public       postgres    false    185    184            �           2604    16629    id_sugerencias    DEFAULT     z   ALTER TABLE ONLY sugerencias ALTER COLUMN id_sugerencias SET DEFAULT nextval('sugerencias_id_sugerencias_seq'::regclass);
 I   ALTER TABLE public.sugerencias ALTER COLUMN id_sugerencias DROP DEFAULT;
       public       postgres    false    187    186            �           2604    16630    id_tipo_lugar    DEFAULT     v   ALTER TABLE ONLY tipo_lugar ALTER COLUMN id_tipo_lugar SET DEFAULT nextval('tipo_lugar_id_tipo_lugar_seq'::regclass);
 G   ALTER TABLE public.tipo_lugar ALTER COLUMN id_tipo_lugar DROP DEFAULT;
       public       postgres    false    189    188            �           2604    16631 	   idusuario    DEFAULT     h   ALTER TABLE ONLY usuario ALTER COLUMN idusuario SET DEFAULT nextval('usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public       postgres    false    191    190            �           2604    16632    id_zona    DEFAULT     `   ALTER TABLE ONLY zonas ALTER COLUMN id_zona SET DEFAULT nextval('zonas_id_zona_seq'::regclass);
 <   ALTER TABLE public.zonas ALTER COLUMN id_zona DROP DEFAULT;
       public       postgres    false    193    192            U          0    16561    avenida 
   TABLE DATA               6   COPY avenida (id_avenida, nombre_avenida) FROM stdin;
    public       postgres    false    170   �}       �           0    0    avenida_id_avenida_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('avenida_id_avenida_seq', 1, false);
            public       postgres    false    171            W          0    16566    barrios 
   TABLE DATA               4   COPY barrios (id_barrio, nombre_barrio) FROM stdin;
    public       postgres    false    172   r�       �           0    0    barrios_id_barrio_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('barrios_id_barrio_seq', 1, false);
            public       postgres    false    173            Y          0    16571 	   cuadrante 
   TABLE DATA               W   COPY cuadrante (id_cuadrante, codigo_cuadrante, id_zona, punto_x, punto_y) FROM stdin;
    public       postgres    false    174   �       Z          0    16574    cuadrante_avenida 
   TABLE DATA               K   COPY cuadrante_avenida (id_cuad_ave, id_cuadrante, id_avenida) FROM stdin;
    public       postgres    false    175   ��       �           0    0 !   cuadrante_avenida_id_cuad_ave_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('cuadrante_avenida_id_cuad_ave_seq', 1, false);
            public       postgres    false    176            \          0    16579    cuadrante_barrio 
   TABLE DATA               N   COPY cuadrante_barrio (id_cuadra_barrio, id_cuadrante, id_barrio) FROM stdin;
    public       postgres    false    177   �      �           0    0 %   cuadrante_barrio_id_cuadra_barrio_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('cuadrante_barrio_id_cuadra_barrio_seq', 1, false);
            public       postgres    false    178            �           0    0    cuadrante_id_cuadrante_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cuadrante_id_cuadrante_seq', 1, false);
            public       postgres    false    179            _          0    16586    lugar 
   TABLE DATA               ?   COPY lugar (id_lugar, nombre_lugar, id_tipo_lugar) FROM stdin;
    public       postgres    false    180   9      `          0    16589    lugar_cuadrante 
   TABLE DATA               H   COPY lugar_cuadrante (id_lugar_cua, id_lugar, id_cuadrante) FROM stdin;
    public       postgres    false    181   "      �           0    0     lugar_cuadrante_id_lugar_cua_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('lugar_cuadrante_id_lugar_cua_seq', 1, false);
            public       postgres    false    182            �           0    0    lugar_id_lugar_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('lugar_id_lugar_seq', 1, false);
            public       postgres    false    183            �           0    0    sub_menu_idsubmenu_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('sub_menu_idsubmenu_seq', 19, true);
            public       postgres    false    185            c          0    16596 	   sub_menus 
   TABLE DATA               b   COPY sub_menus (idsubmenu, nombre_submenu, parent_idsubmenu, tipo_usuario, ruta_menu) FROM stdin;
    public       postgres    false    184   *"      e          0    16601    sugerencias 
   TABLE DATA               N   COPY sugerencias (id_sugerencias, descripcion, fecha, id_usuario) FROM stdin;
    public       postgres    false    186   &#      �           0    0    sugerencias_id_sugerencias_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('sugerencias_id_sugerencias_seq', 24, true);
            public       postgres    false    187            g          0    16606 
   tipo_lugar 
   TABLE DATA               8   COPY tipo_lugar (id_tipo_lugar, tipo_lugar) FROM stdin;
    public       postgres    false    188   �$      �           0    0    tipo_lugar_id_tipo_lugar_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tipo_lugar_id_tipo_lugar_seq', 1, false);
            public       postgres    false    189            i          0    16611    usuario 
   TABLE DATA               i   COPY usuario (usuario, nombres_usuario, clave, email, ciudad, pais, tipo_usuario, idusuario) FROM stdin;
    public       postgres    false    190   �%      �           0    0    usuario_idusuario_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('usuario_idusuario_seq', 23, true);
            public       postgres    false    191            k          0    16616    zonas 
   TABLE DATA               .   COPY zonas (id_zona, nombre_zona) FROM stdin;
    public       postgres    false    192   �&      �           0    0    zonas_id_zona_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('zonas_id_zona_seq', 1, false);
            public       postgres    false    193            �           2606    16634    avenida_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY avenida
    ADD CONSTRAINT avenida_pkey PRIMARY KEY (id_avenida);
 >   ALTER TABLE ONLY public.avenida DROP CONSTRAINT avenida_pkey;
       public         postgres    false    170    170            �           2606    16636    barrios_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY barrios
    ADD CONSTRAINT barrios_pkey PRIMARY KEY (id_barrio);
 >   ALTER TABLE ONLY public.barrios DROP CONSTRAINT barrios_pkey;
       public         postgres    false    172    172            �           2606    16638    cuadrante_avenida_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY cuadrante_avenida
    ADD CONSTRAINT cuadrante_avenida_pkey PRIMARY KEY (id_cuad_ave);
 R   ALTER TABLE ONLY public.cuadrante_avenida DROP CONSTRAINT cuadrante_avenida_pkey;
       public         postgres    false    175    175            �           2606    16640    cuadrante_barrio_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY cuadrante_barrio
    ADD CONSTRAINT cuadrante_barrio_pkey PRIMARY KEY (id_cuadra_barrio);
 P   ALTER TABLE ONLY public.cuadrante_barrio DROP CONSTRAINT cuadrante_barrio_pkey;
       public         postgres    false    177    177            �           2606    16642    cuadrante_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY cuadrante
    ADD CONSTRAINT cuadrante_pkey PRIMARY KEY (id_cuadrante);
 B   ALTER TABLE ONLY public.cuadrante DROP CONSTRAINT cuadrante_pkey;
       public         postgres    false    174    174            �           2606    16644 	   idusuario 
   CONSTRAINT     O   ALTER TABLE ONLY usuario
    ADD CONSTRAINT idusuario PRIMARY KEY (idusuario);
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT idusuario;
       public         postgres    false    190    190            �           2606    16646    lugar_cuadrante_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY lugar_cuadrante
    ADD CONSTRAINT lugar_cuadrante_pkey PRIMARY KEY (id_lugar_cua);
 N   ALTER TABLE ONLY public.lugar_cuadrante DROP CONSTRAINT lugar_cuadrante_pkey;
       public         postgres    false    181    181            �           2606    16648 
   lugar_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY lugar
    ADD CONSTRAINT lugar_pkey PRIMARY KEY (id_lugar);
 :   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_pkey;
       public         postgres    false    180    180            �           2606    16650    sub_menu_pk 
   CONSTRAINT     S   ALTER TABLE ONLY sub_menus
    ADD CONSTRAINT sub_menu_pk PRIMARY KEY (idsubmenu);
 ?   ALTER TABLE ONLY public.sub_menus DROP CONSTRAINT sub_menu_pk;
       public         postgres    false    184    184            �           2606    16652    sugerencias_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY sugerencias
    ADD CONSTRAINT sugerencias_pkey PRIMARY KEY (id_sugerencias);
 F   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_pkey;
       public         postgres    false    186    186            �           2606    16654    tipo_lugar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY tipo_lugar
    ADD CONSTRAINT tipo_lugar_pkey PRIMARY KEY (id_tipo_lugar);
 D   ALTER TABLE ONLY public.tipo_lugar DROP CONSTRAINT tipo_lugar_pkey;
       public         postgres    false    188    188            �           2606    16656 
   zonas_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY zonas
    ADD CONSTRAINT zonas_pkey PRIMARY KEY (id_zona);
 :   ALTER TABLE ONLY public.zonas DROP CONSTRAINT zonas_pkey;
       public         postgres    false    192    192            �           1259    16657 
   id_avenida    INDEX     G   CREATE INDEX id_avenida ON cuadrante_avenida USING btree (id_avenida);
    DROP INDEX public.id_avenida;
       public         postgres    false    175            �           1259    16658 	   id_barrio    INDEX     D   CREATE INDEX id_barrio ON cuadrante_barrio USING btree (id_barrio);
    DROP INDEX public.id_barrio;
       public         postgres    false    177            �           1259    16659    id_cuadrante    INDEX     K   CREATE INDEX id_cuadrante ON cuadrante_avenida USING btree (id_cuadrante);
     DROP INDEX public.id_cuadrante;
       public         postgres    false    175            �           1259    16660    id_cuadrante1    INDEX     J   CREATE INDEX id_cuadrante1 ON lugar_cuadrante USING btree (id_cuadrante);
 !   DROP INDEX public.id_cuadrante1;
       public         postgres    false    181            �           1259    16661    id_cuadrante2    INDEX     K   CREATE INDEX id_cuadrante2 ON cuadrante_barrio USING btree (id_cuadrante);
 !   DROP INDEX public.id_cuadrante2;
       public         postgres    false    177            �           1259    16662    id_lugar    INDEX     A   CREATE INDEX id_lugar ON lugar_cuadrante USING btree (id_lugar);
    DROP INDEX public.id_lugar;
       public         postgres    false    181            �           1259    16663    id_tipo_lugar    INDEX     A   CREATE INDEX id_tipo_lugar ON lugar USING btree (id_tipo_lugar);
 !   DROP INDEX public.id_tipo_lugar;
       public         postgres    false    180            �           1259    16664 
   id_usuario    INDEX     A   CREATE INDEX id_usuario ON sugerencias USING btree (id_usuario);
    DROP INDEX public.id_usuario;
       public         postgres    false    186            �           1259    16665    id_zona    INDEX     9   CREATE INDEX id_zona ON cuadrante USING btree (id_zona);
    DROP INDEX public.id_zona;
       public         postgres    false    174            �           1259    16666 
   ifk_rel_01    INDEX     G   CREATE INDEX ifk_rel_01 ON cuadrante_avenida USING btree (id_avenida);
    DROP INDEX public.ifk_rel_01;
       public         postgres    false    175            �           1259    16667 
   ifk_rel_02    INDEX     E   CREATE INDEX ifk_rel_02 ON cuadrante_barrio USING btree (id_barrio);
    DROP INDEX public.ifk_rel_02;
       public         postgres    false    177            �           1259    16668 
   ifk_rel_03    INDEX     I   CREATE INDEX ifk_rel_03 ON cuadrante_avenida USING btree (id_cuadrante);
    DROP INDEX public.ifk_rel_03;
       public         postgres    false    175            �           1259    16669 
   ifk_rel_04    INDEX     H   CREATE INDEX ifk_rel_04 ON cuadrante_barrio USING btree (id_cuadrante);
    DROP INDEX public.ifk_rel_04;
       public         postgres    false    177            �           1259    16670 
   ifk_rel_05    INDEX     G   CREATE INDEX ifk_rel_05 ON lugar_cuadrante USING btree (id_cuadrante);
    DROP INDEX public.ifk_rel_05;
       public         postgres    false    181            �           1259    16671 
   ifk_rel_06    INDEX     C   CREATE INDEX ifk_rel_06 ON lugar_cuadrante USING btree (id_lugar);
    DROP INDEX public.ifk_rel_06;
       public         postgres    false    181            �           1259    16672 
   ifk_rel_07    INDEX     >   CREATE INDEX ifk_rel_07 ON lugar USING btree (id_tipo_lugar);
    DROP INDEX public.ifk_rel_07;
       public         postgres    false    180            �           1259    16673 
   ifk_rel_08    INDEX     <   CREATE INDEX ifk_rel_08 ON cuadrante USING btree (id_zona);
    DROP INDEX public.ifk_rel_08;
       public         postgres    false    174            �           2606    16674 !   cuadrante_avenida_id_avenida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cuadrante_avenida
    ADD CONSTRAINT cuadrante_avenida_id_avenida_fkey FOREIGN KEY (id_avenida) REFERENCES avenida(id_avenida);
 ]   ALTER TABLE ONLY public.cuadrante_avenida DROP CONSTRAINT cuadrante_avenida_id_avenida_fkey;
       public       postgres    false    175    170    1978            �           2606    16679 #   cuadrante_avenida_id_cuadrante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cuadrante_avenida
    ADD CONSTRAINT cuadrante_avenida_id_cuadrante_fkey FOREIGN KEY (id_cuadrante) REFERENCES cuadrante(id_cuadrante);
 _   ALTER TABLE ONLY public.cuadrante_avenida DROP CONSTRAINT cuadrante_avenida_id_cuadrante_fkey;
       public       postgres    false    1982    174    175            �           2606    16684    cuadrante_barrio_id_barrio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cuadrante_barrio
    ADD CONSTRAINT cuadrante_barrio_id_barrio_fkey FOREIGN KEY (id_barrio) REFERENCES barrios(id_barrio);
 Z   ALTER TABLE ONLY public.cuadrante_barrio DROP CONSTRAINT cuadrante_barrio_id_barrio_fkey;
       public       postgres    false    1980    177    172            �           2606    16689 "   cuadrante_barrio_id_cuadrante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cuadrante_barrio
    ADD CONSTRAINT cuadrante_barrio_id_cuadrante_fkey FOREIGN KEY (id_cuadrante) REFERENCES cuadrante(id_cuadrante);
 ]   ALTER TABLE ONLY public.cuadrante_barrio DROP CONSTRAINT cuadrante_barrio_id_cuadrante_fkey;
       public       postgres    false    174    1982    177            �           2606    16694    cuadrante_id_zona_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY cuadrante
    ADD CONSTRAINT cuadrante_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES zonas(id_zona);
 J   ALTER TABLE ONLY public.cuadrante DROP CONSTRAINT cuadrante_id_zona_fkey;
       public       postgres    false    2017    174    192            �           2606    16699 !   lugar_cuadrante_id_cuadrante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lugar_cuadrante
    ADD CONSTRAINT lugar_cuadrante_id_cuadrante_fkey FOREIGN KEY (id_cuadrante) REFERENCES cuadrante(id_cuadrante);
 [   ALTER TABLE ONLY public.lugar_cuadrante DROP CONSTRAINT lugar_cuadrante_id_cuadrante_fkey;
       public       postgres    false    174    1982    181            �           2606    16704    lugar_cuadrante_id_lugar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lugar_cuadrante
    ADD CONSTRAINT lugar_cuadrante_id_lugar_fkey FOREIGN KEY (id_lugar) REFERENCES lugar(id_lugar);
 W   ALTER TABLE ONLY public.lugar_cuadrante DROP CONSTRAINT lugar_cuadrante_id_lugar_fkey;
       public       postgres    false    2000    181    180            �           2606    16709    lugar_id_tipo_lugar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lugar
    ADD CONSTRAINT lugar_id_tipo_lugar_fkey FOREIGN KEY (id_tipo_lugar) REFERENCES tipo_lugar(id_tipo_lugar);
 H   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_id_tipo_lugar_fkey;
       public       postgres    false    2013    180    188            U      x�m�M���ޭ۶G����wۤ�,����8ݷw&q�����&v׳ά�7���B!��~�K�az����<������3�߻��m_���n�/���������߱��W�.��ݹ}��c��.�iy<���;�O�~܇��M���܇��݇l�e�����}(v��x�c�����ݥ{�C�;Os7���{�Tgs��v���&�����v<���t�.�|������]{�L����1����2���pkgu'F�<�'Ռ]?����.�_�����a��w���X�O>�z6O�n�Ǌ�}�_���4O�ۤ�>��SO����k������O;��n^n���=��,���u��}�:�j���Y�{��y�q�p�g�@�쳒��>����k�����}~t�σ�}]8��̅v��GQ�s�T�y���}��H�u������4ٜ�ő���"�o�/h����5���M�/4O��/J�����/���j5���/iNו4��K��ye�q�/ݹ�}Y��(i���KzW���Z�C#�x׹t��c_���}�3�þ�(��U��^�Ǫ�W�Y�6՗�>�����������AT{u��u�v_���������	E�aM��v{����_����?�����7<sy�74W���+�}�3���!��g�x�}S�.�⾡��m��%_��x�Bk�H��Y�d�����	o*�p�����=�9�mw*��R��Z��s(�@���uJ����2e�>!x鶁���&�q�t����#�tu���2GN��#��n�_���>sk-�G��o�_p�HA�h9=�\ӜWA���֑�rj�������=~����8���{j9݅�g?�긞��~�C����M`�l]}AK��pi�-�n�����Zb�����M�ti��`��(����Zm��X<H|W�o�Ga��5Z���稸�`���e�kj�]���4Fza,��Y��˙W^|�����Bi��S�6s��ۼK�>!7`:N����V�D�X�}^+1gzV܂9Y�{��1?R�q����=6�~�I���C�!�f�We�O��nzef����8�3�8�<3���	��h��Z�ԾF�q��Ƨq���ؤ�W[M!ݩ)]ҝ?@�
���B��N�@U"Io!�HGn&��Z�:��*����=��K�b'!��8y B��;e7�x����o�/x$T���	�"��
��S��§
9�E���:�ū
n�]�ܫ�9��1���Ji�� 1�]�
�4/�Vp�y��_$�ZVH� ���g��T����]�oC��𑿺����Z�*�KE���VZ�*�T@0�Kƌ�j
4C�zyѢ��Cz_�a-+�p�A�-)�4�;�[X:V��˭4^��4�R�%�nˣ��ᠿ�WXY���&t8RC�%7�O�����O�+IK:,QK:\�ʘ$C���J��̨��W픫 �,٢�c�uC��<By� ��VamG+u\4O�:3�ϽT�g��¡]���i[C��Z\a�E��]�-[�*����+Z�juĚ�Gu���ZC�k����(�y�d:�����������5Z�R����ѩ��ܵ�OAw�ٟ;)�Z;Z�~������n���~���v����}�!���<���绵�#�g����I�[�y���Ծ>Us�����6HQ�P|��2W�Sե�x�u3���t��^ڣ4��I}�ɳAӭa�$:2}!gf�/,͎1���h�)m�h��O��#W�>P���� �k�f���a����zH=�0�M�t$Ⱥq�%ɾuu.J�:k&m���V��q:M�igCw����R��y�R���p�4���G����SW�!g���:�zO�A� My���ov~��:�J/��(����A7}�ݨΡʏ�i��2Jt����?���iћ�;��?O�E�	�^+�������*��A��ˬb�W@�r�^P���W����$~3P)�J�	�>���T�B�����S��E�@�Kx	�Lu���,eB�&�A����_}�`���9ug���ɢ�r�yZ	:�i����L���إoi����=�J�	�|[�;�_�ф�u����>��a�u�M�魧��N�G�|YU��P+l|hɴ'?�P�<�fF���=�Z$Z����c��tQ�����Tg��Ck��P�,���ie��{wѺ|)m���S���i�m����	�']��]��zY��:�����U��]�q����Pv�h�}m������ߒn����$�Mx{��6uC�"��,o�F�����U (^!#5/DT�282U�i�ZU�+�V2ap{;�M��yz<�����k�����)��\\�w�h��f���u^F�&a�f:B��ϟ�"����7�޴���C�K'LU-��F�cP���i��o{{���>�4�ߦA���(&R 3ko��Y��#- þ�"T��O(%�B`�IhdYY�bF��Ti�Y����di�^�u��RR��P)[���,�/�K_���̿к�ʭ�	�s�j�~,t�;
�s�j2ă�͓��*Y�͑��r�+!���^H*砒;�'��ҿ�s/��s��(x˱���+����-�����ў����6�'�)w����E�
�����T�[��̣LÚ��1�_��uн�Ԥ\8));����g��}���萖�<�L��G`���g<�[�y#������}n�Nw�n���`,sjJ���u;���u;	9�]ǐ�h���F^FY�۲r�۲�C4G�+���v��'#v�����H��[�:i���֒[��lͅI�;� k�]k�[��ki쥊I.W�g��~.���ϥ{�j�J�����ܐ$]:/}w��{҃
����	�6+(մD�yֵ����¼Z5%���=:���D}nSO6NnS�`S��@��Qz��/f�=-�܆��\���$O�C�-��kym��wa51��-ʩ)%��������@�б�y�,�I�Wr��B��2�laʏ����.P�S<ӝWՀ��B��$Ss�&g*�B�I��@���i�a��f�Q�~�����\O^m=�0�/�8Sq8�Wm=�8cw8�C��e}�w�k�L3��Tv���ޗ�:��c</����7
���E2)����_�ڕ@���p�j�h0
��]c!@���Ś��K8pG�m�wn�v���4+QR��0�B��1���x(�]����7�Z dR���K8}�n\�z�?s����E���t��ue��,����f�TMe8��<oZ��D?N�4�(С�6S;N�'e^�*C���C���p�w��!���<��wIjM�B��W�:��sk��e(i�ϻ$��*�ʟް,"��"��}�R_u������I�(�i�����f�Ó)^5�02ۓߚ���p� Ԗ�W�"u�*�����|�\}��:�,���J��T���_$kT�v��O�(�&�T!��KF�Vݩ�>[�����Ӏ����s��뽽Y(ɚ�-����nv[!p~��<��2��՜��%m�	\:��B8� ���O�HV����<�[ܥ�=����!p��g�ۯ�zSқ+�XPo^� [���;��奧h���ۄ�.����֏V�
�V��+�7��s{J�O�<0H�E�p�����3��'zA����UY��'��g.�X�,5-Y��;��==t[��*��W��sv̦�?'��B�.O�G0~bjҹ�����Ӣv�B�U0�+x�Kɐ([�2uF����v��o�x��o��w�t'�.��]N���u4�5���ˣQ4a��L7����ˤv*��sQ�ޟ�
V�}�N��;~ jƙ�S�^���S
�m��2�u�V�֛0M�1M���QV�j2������Q��k��$�&�n|��S
�}=�7W�tY�:�}���a�N�%�UC�r�=�
�_�y�A܍=����ЌcҔ��4b���V�~_Т���g�̻�20W��ֿ	�220�})���"�* "%�J�e��5l�ϗse�)�d[) ���@�����3�L�u$��ԓGSR��6�    �Hd�8Z&��?�9����/7�OG���⮁4j:R��e�S㺞�OG��]�R��K/�3���C�C)��x�|)���.Z����4T���^�U)v�vx�����k��}��;�k�E)���z�>�إ��F�N��n�P)�K.�$J���G���9@���x��B��F�Ƅlw�NF�\N�GϕHr�N��i��7*I���Z+px���~@L�Aj�4��q^���iF	� ����B�R�)��L)lӲh5%���&�r)8;�/�E֑l�K�9�!�\R;��4�SQʒ�q�Ai�8dJl����&��!�Y�:�.����cЬ�`����;�# [/�$�W^���bYG����<�p�ޥ�y�3֌@��N&���p�bS�8@�a0��t�J �ǽ�~ң��1��=�k��	o�.s^�x]y�-?�;Ǿ����a�*^ �
�a%(�D�M����*�W�D/.C�A jᩭpN�a�b[	����o�2���'c_	o�^�eq�S2�����9T$`��*��n��UW��s���cǐ$�Y�Y]P�BD�!�P���h����,�J��h����D6ckI���{%D�:�M!�S�Y�p־�J�x��0�5.LW���g?_�Ѿ�*�wf����[e��=�4@g8�K����FX%	��+�>��]%�[wPv��H'!�.��ʓ��i��#;:#�$�_	�Jh������n��^EH�D��𮓥^	c5W��]WP��
5/��
���7����m\	�:�U~A�؁U�樄s��J���v�P���#>��N]��p�W8dtUV�"����JD�zP��'��<�=�JM�B���%���l�鯍9~������M��d]B'�pu1��N2�Ԅ�G�m��'u�����M���Օ��댭�#�A�Y7���z=�Z�I�[A�U�����C����#ȡ�NZ�5R5����
��S��8������ǰ�8}�؃,BC�F�:exi26IS���:���zՄ��䁎S��=P����U��Z!��W<��B�q��8Y|�B4����Ue-Q!L�E��h��lA�P��^S�6_U-H{F������µ�l\�B�_1&sb�=�����a��]|��|].������}J�DQ6�h�l3׭җh�����~����������A���@��rܝ԰�v�e�A,NC�(�.�K.A����v@�K�|SI��u���kj]�@�����I��5��o�9�����p�1�e\If,��=����n'6���fy�Q#A�:+~��jGg^`]gUZ-x#R�v�Y�)1u�+E���Y�6
~��a��WЉd����Z�ȜF���gw[Μ�KBܹ����<�,n�%�40*U��t��ˤ����(鵰S��)�e��)��߼y��$kLl��*��iI���:��Ӳ�"���2)
��y" Sy�(,�Jཪ��+���W�jja��6� yn���k�N���S�`�uѺ���h�B�蜺�{���a��\��	�%�xf�26�}��4�����U�36����pX�d(���(����eX�Le#v�BT��F$݈�Ks�_ɟ欿��梿�F��`9rBCa_�X,GR��n,��bʞ���R�`^͛
x����d5j���Zs���Q��Z�	��FP�|2	�Ӷ��_u��C���~�_��"�m�%Nt9����z���G=Jc�cMyU_U�w����XY���#� i�Up��Q�^�G9��|]�1A��F���h�̓�j�uZۛb�8KE�x�,�T2u����i�uc;x4;Ⱦs���C���M�Ol��D�~�	қ�����m�'�~8�v:/B�}#xr\�[Ű��]j��{y����:aWt�S�K�~�>�K�:�}+��[񗊚��}+��&w,Gϙ;��'G�����Q/��,�ҹ�����R)��<�M����9'{UA�Fx՝\݇Y>8I�!���?=�h��\��6o�dH#�H��F ��h�R��b� �g�����d���K�.�Kz�DEp��xC<d������j�6Dh�E�Ce�o~N³�駅�q��" �+Ѣo�2V	֐�h��!�����1h*E{��΅'a���� ��'����(kS1棞��w#��W�S)SzF��7� ="��a���7dn�̶��<@��8k�FԆP�6�_�m	Bz�?���Q�K�½C�5��4u���f������XC/\�c4�Gn#�Anb�eW4��|����wͪ�����ޤ1�@3dy�;1�}&����XH�_��Ok��H
]ʹ� &O�������*���v|��^�����Z�vS�M�H��5}TQ��-�-t\c^�)��Cr�4��=I{�v�|�:�'��5"��(5�Y����'9AE){Z��G��#e�ɉ!qhȢ��P+別�A?�q';�T����*���vZ�����4�u����~L�f�J=�O�G�ɠH�f.��bMѧShz~��ZP���D0z�3�yFa�ǔߠ�]���YR��T��y�l�t���9�z�|`_��jL/�p�c5��~N�&��O�z��,�%��7��t~.��i�~�gIvu�/I�:w�&B�^%|%U��5�.Fjd��[��3�o,�(g����S*
8._j��ۖ�fR�������`5R:H�����8��((�b{D�Kz�;7O�ڿ �#�|��a|=��α���|��N������G�kg���q��S"1��&�x�V%>(q�����+%�S�$�[��Q��;%ݣ�9�4�=���(j5-ض.(8݃�3\)4N�G[�$�m^�_��}g��-lҽ��ߔ����"��Q1)�����W,_:�y��\}K���0gc�J�y�J�-sj@�*l��o
����9(iMML�7�i)�p�"�����]&��%pl֘�AҺ���II����s��w߄'=#� w��`=I��)� �L���Zx��>���P몿xS�-�A@����y�[8�[�w��X	R�������ț�tr�3@S�B� +�DO�aA6ύuv����j �����o���G�1���:ݴ"���]ҝy �:�2A��9w)$ <�ᭀj�!�H��Y���P�w���p ^��� 0ϣf�CҮ� +k�U1BO��=�cB��ܹmOa�KP����S/�֧� �����y�>q�}�p(&Ly�T���;8#G�1���>j�r@��!%�Ilq�<K
ܽ�82`W��NN��E��Q6��{���آ�����jec��$^h�o�1s�E��ߺ�y��}���O���BpO&��N^lA�O�o�'����O�u���	X�P�0w_�#���v>��f�T�_.@�p6�ءyt�B�����V�O�o��g{�B��(�R���Q&}����$��z��/ώ��u��� �B�q�"J?�_�ǧuʂ,$W��]�y}_�Iː��Hh}5܄��
@��u�������5p��ӺFp�����AI����`��S:���HO����N����H�~mO2�4�- �����h�;N��q^U�`�����Nm~b<9\�RS05����7��~����,����ě�R����6�S�)n[*�O9-���]�x����Nd*�qD����4��*�MU����ʽY��{ ��2gl�Px�ꕧ���-0>i�s3�f�c�\F,�38@sQ��F�:(<0]:�z��t��3��^� �/B�Q�E%�!4������\�PS dR��7�� ��&})�L�y��D��퉨\���\�	H/���e��������8ܛ_ZV�Y��I0jɱ L�	�����<\8B�p������\�
d`��-X23|�K�����e0��ȓ1�4��e1j)�u���M�_�8.��ԗZK��x5$_�e¬y����<���
M�͗�YD�ݫ�=�|��_�w�x�!�z�68�%I+=�)ξ����/-J�    ��or��3����n�?G=i���,�$Ԡ�\!��í���uR2�]� ��g�^�;/��p�J{�T�C_��X�T�g?aG��rKD�� ��}S�$q ��%}�	��~�m1�BnkN��հ���H��XtCrj�?6c��K����������j�ܭ���F	]�$���s��������ǎ/ϒl���d�ӔMR�͸+H6�QAm[S��j���I���BRcrnl�0b��?�Ss���Y�J`L d�?�eg,�nt<䎟,����(�-����\��U�n]��
�k�]�/�;< =N� �G+xH/���J����Ϋ	��.A&c H"�����C�	zo�������/V���4��q�2��[e�3��rYHs[��ܭ eH�� �0�œ|!�!����� c��1$��vu�C��5%]��C ��1�,M�I�����v��ɧ�����+ű���&A;��(�.���m�-�ю� �h@�}�}=� nB �7���\BP���0�a���<��JL#@#��[j�ZS�<Y�A���pg|:'a�K�GH�+S�@K�q��ה6�{,�7ӏ�29�LB�x{Cw���տk���s>|M���� �W )�i�@[��$={�
L��Uk��@.N��t�� -'[��C�U���f�6��*F��4¼0���d윂O+(���ҙRE�B���F���[�0���hJ3#��}ʳݦ����\�0�њ��P���P$��<wXF��Y3R�1JƏ՛s�(%�6\J��&$�!)q��xV7h�8�Q��$I0�Յ������F��a����+MчW4���	�G؞��f[2�2��c�(oO�Y�������qhd�� ]h,<�7�\�Ma�C
�*��F6eP�T���?"��َ!��Q�B��4;������C�eJ�+��u�wk�%�N@�E�y�	ɟ��{B��	�ux��>�@X6�e��xT�% ��+�C���c9{���t��iքI�4����kJ<3D�
7�!�zJ�\��X�.`�t�����' �\��ϝ+u^G	N�w��>�X�kʑ{�` ��F�J��^\1� ��y�{�����S��,��E�J���n(Fl�Ut�E��������XU�7s��X5����BA��������H��$(�vgA-�4���$��͚'7q��%!�f�{����$�s� ������蒲$�;JP#w���}	i���CF/�6��c�
0�t)�W�NH��ua%9�H�>@M��� ln�� Eɹt��#��ҝ�WR%��O�� gI���|v���Đ��;�2�H���쓂��w�i���v����\�ѻX�z�g��tO_^�5K�)+�ӣ�E��D���y��D�<�S�e�:Νo�������2D ���z����,8LI�;�q]����ib�����[l`����gD�`������Y�@���J$��f��
݊���sK_����R�yX{���Vam��t{"���N�������R+�*�yz��:XO+��9��R��JS���Ӱ�bE���Oo���W�։��&�����z�����i�G�\��fc��y=�Rie(f�0�1�Ё����zKI4�%]��h�y��J��aG1~l�D����ެ����孃9E�1%�sl��\ߞTp�J��b�¤B}9[1`x��]�������U���Jkc��i�NO���Jߗ����s��څ�y����!D,��tc�a���,L�?h��B�+�ᑳ�iw�ˢ���/��Od�ޖy5���FV'����h�vY#�T��^c�Xu�n>����d��H�
д��v�l�Z iy9��d%��:�г�o���,��jw��`!��0��J����r�3|t�#�dmT� k$'�v�!��K�"$6[�)���W�����R����<xW��2[�x��cJV�_'��"���m���m�mv�#`k%��� [��fG��4����N�2�ܭ4,Ӻ�n%�a�O @�Jj�7
~撧�um�	��$V�
X�I���h+9s�;L�����	 Q�V��Q������LQYy�3cu��wh�y�+l��T��SQ�C���O�.\hg^b�/C'�}>��8�`piO,Ѹ*�B@�M W�P��*W�+6��|�����/���������O �k۶�}x��)�pӲ��,�m� ��	��`5�$��W"}��t|m�q����]P���3��d��"�����R����	����C�z�Ca�5�ZJKdv��WZ�I�EZ�����sv�W�Y`2�%��{L�Oe� �	)o�a��eL�lb:]#�SW}�����
h(`��iF���K���v�^�'�`Ie���~غ��!O��ݖA�����t�m�I�͋�8 +x�V��J0�̓�����d�ùﾓ	��X�>���p���s9/��m����C<����'f?qHxeW&SE�)g#�HM	�e�Ldu��:���"}_?*<��JOr#d�n�fbZ�ɮ@�LMK��RPӠ���i*��x&~��Y�r.}�%0Ӥ#�j���L���L�j	�X���;a��a��}W�!|�표B��x�W�b�J>m5H�d��I�]�l���d�@ES�&V��7(D�[_¦��)[�e����J%nJLb�Jn��[�پ��+�V8̴��'�X:��=~�Y�0�^i�������&�#,�P�Ö*��}�Ɏ�������jɕ~����k(�Ή��+����*S��k3� �-ֿ������~�[���+�������o��^��;z�d����/�5p�ٍ]�� �Л�A�S�f�/
�t}�4n���G`��P&��,&�"[��}��&��3��L��[��moxx��@l�8��K����ǖ��SS��$���4�O<������i�����`c�YJ)-�ٚ �>�^ۇ9�����Ü0ۆ5�=�m{.�:ωM�t/n�_�τ\�8�n��EJ�6��͟���b�c�{��������d+�p�#�|{���f_S�`��I���܇�D�S�2���t��l�C�����rN8�,(��~�2�Z"8s���Ӻÿ��$����j�«-�zN܏ ��Ǜ�-U�:���[Z���oO��,g�E���U�Ej��~6�0S}:��/��v���2N�}�̻�~���i9��-D�O ��0��$�S�N崜�� �%욞�}%`�<����9�A�G/1uN/���/[|Cޡ��*y����]�SA���Y /-Hz�1ʽl�����k'���X������ލ���<b"����Oߒ�<w��4�z����"�\Z�Ƞ5��Tf>H[�J6�	���7��ԥdX�z�O�܇�"l���������f���K�E��t���gG�t띕*�M�a����l������c���̿U�6J� ?�䯋�
�m��}^��F�xi��T�S�tr�r�R�N�q���t|���d98�+�"!J�t֞�B�6��+d��t �]w�VN�"�ږ��:��:�ت�Y`���C���-��n�/��޲���,��x�)�N�Ӈ�ӮIe���H�jM�A�>��DaH��|Q �x��ԗ�V��NS!�ED�����5h����i�(Õ��bwH�O�J4��Z0g��f����F��J*��b� ٱ;�υ�0�*��h�Xy)d��:~"�p!0B]���/���ڜ;��|m�Q�,�-���~��0T&m[�Z�änM)��Ğ�x���C���=��Z:�J.��!B�dB�-I!&��0a�Hn�A���؂�9�c�D@ �����Կ2�Dz��Ĭ
���{�wc�!�2H��_3Q�-�gd�6���+�~z��w��������T_@ؓ��wJF�:i���k��z�ǧam����Ǔ�2mq�\g0)��#����F�Z��3R壟�p*��
cw��YyA    \J�q���T�����)w����)44�
t77�v��X�,$oԧ7���^�lT|��DM`X:ԼB5l���	�Vn�Z�?�V�R���UٞS���y:�o�����+�S>����)_�K��-J���`�(�o�DQ����:�˝[��a��/�̾�
��l�0H�c:h�6$�b���f��B�{4�U >;:��_(���
�Ⱦ��cF�ӕ�7
�A�(�i��4boh'�,X0��sN��Egȣ�É�bp)�Χ�����&!q�Ii��u �va�Nٝ_�+��}��.�1#�ss�H��p#�@�o�Ke�������')!�?x�%	S�����
�dHM�<*�`�	�Y7I��*9N�bE�$1�i~.��A��\^�Q��V�G2��[e���cy�Z-mP����܏V�3����<�*7��wMg�+�t���?��w|J��Ǧ��6�!Qи�&͎� ����a� KG�D�Ƴ�ޤ�����Wޚ�G��p��7���>e󩑞O��Q��V����\�w������_]��,�LJǚ\��o���e���Z$�Y���I4�$������̀�ݱ��p���h���m1�W�O��Fң�N��C�K��mb ��5�R�F隍���64n�Z��?Re�{oO��,�������"�7i�垎jS�~g,BG]�l�Nx`�w'�����Cuf7a�+|9���4�Q򠨮�[�еq���'E��m�.x��
ث���t�z{�yy&:t��JteN]�F#�V���Ͽ�]�����v�h[�7�&�zW��qV8���G�Fh��i=�{_�ML���L��{I{@�pC&����+�L����[�����+[z� A�M�h��Tݤ�V<~�A�]ZS���\�F��Z�M����הZD7?�����)��.�D� Ԯo \>I�W�����3Y���0n�� 1Xu�|����"��5�m���|�%@���K��+���'�Ԏ)W�ֽ�4(4R�:؞��2��E|U��=Ui�ˆ�&G
�:_�>�M�C���Lۆ�V/�8�`�n����RYS�	��$�m7Q��>�{�O��0ye><��v?�0H�c)@af�Oo.�~#[�tC8g�����O0�U�����h6��z�O�(�q/��]�|L)��=u�c��,Y��}�G����Y8X�I;PR�)���پ��k]n�,�a ߡ"n_̀<����_�m���I'��H�k�
��W�e�B�ؿ+x���͑A�V�������
x�k
8��o��U�V\ٵK19�!���G����oRoX�+B�{�kJy�{�w`�n���`\�v��q�	V ���d�AZ�˅�6��>�ANU�G  ��t��S���T5|�B��Ȁ��y�x�"�އ��Qb7���8R�R
��)�t{Jh��J9�?(���z!�|��w�M��w���֘��͔�[�sS�{��8�L[�sQ̷;�q���f4��]��؂�-�����<�7���<�������#�)�H�m���$|�$����W����+%��_2�������uaד7����#�؟��4��T����>S���Ն
5E��)����\|)�7��iGȱ��{���B%�ڗ���b��~���Uv>�E�j��-�?��Ré�,k�t5��4eQ<��������Ҭ��D��؆��!����!�z@�齎k�Hs�e��KOs%�o��@�hZË�l�ß�"´e�%�ol>F(�V���o�as�O�܅uU0#��h�ӅUr�`�q�L�i��d���B�F��$��o��/������a�ZO?�~��È$=?a��"��NN�7��&�!B�=-��И"T�um���`{z��w��D��hCVs�,"swNM�WW�Z8�ѭ	�"K���|������|����&������'a��k
��V���̔�2�ɍ��#���',�:!R��;����0�#2���t�xBR�Y����DX�o�H_�)\�ǒ���4��b�#���5��O�A������?��W&(���N��!�S��K�����状LjM��s�Ǐ�~�q�3k|v�L�6�������UjPu=/�O���ӛ��o2T�|�M��d�F�j�s��<�p~7��h4��<�3)��9Jw�Jl��<�����)e�,���'~�I��6�J`��W���X7�OhQi��m�#���0�5|Y���9�u���hv[t��<}9g^��h�oJ<�2���P	�,��O����j2g����s�KSG(�C��Wօ�[��l�6�Z=��K�I����6�S,R@w:��֎0~��ƞ�_x�&K���d']� �mFc&`{l8��e�#5���k ��7����k�N7�Z���>Sg���]���b���tJ;�DȽ+�B��f��;J�eL/�����L_��ڈlD$���.�6�g�~}�����.}"�DH�$c��>�q4�o^���t�㐒
��A���ۗ�
v`
= 7.v4x��E�%4a�����O��!y��~���𽩪�@bx�Q����`�ΔP�Q� �DW!$49��M�SeG
�����	.�����q���z	��_��g���������b��q�3�2�~�Jh��D��o�<i�4����O��G�쏰~_��-���n$����-�B�X7y��n��<��}?o)�'���m��V�/፞���Z��~_���P���V-��5��e�i��&a<�c�/~���ڵe��Y��"��_R��V��|�S%}G6�7G]���kr'��! ��Sۙ��W��|*�+�2ch=�1��퀉����4��5i��ޮk����ui���a�{v�_����枳�b���>9�������g��(ė��Pt�z�s;�wv<E��/'��Ũ���%�n��<��,���Z?$�)yk��e��p���h����3Hʯް�:������N�w�̄ggʣ�C�Y�\�/+��;`#��D�}ٺ�c����8�۰�$����R��+Nɪ���^�7#&{�}m��#|m�
9�bl�-�،��y��m
$�������+����ʦ}Ab�>��^��`���KW�d����9�k.#��D�c4ic���Kȭ\��!='��+�+�z>�r#����"���Ţ�О���]�sk�g��X�@
����a;��c�|P�j�������|��t� ��k�{���Ԉ��>�D|�0�%�dP?��0?out���6����PV�7&��c��᫋��;ȲZQڕ�CN؁y�2�����l��r�����X�h��җ$a�[�����_ڏ%B^c�&#D��NO�������J�Y�N1&g�� l-�C�1%�Jafs��A�7M��+�c�2���㸲tFo�!:��|vi��n�s��ɲ�ir�����*J���e�a��v[!���}����|K���/����=&����?f�T���;h�Am�wd��G�V����ӗ�)�ʟ=�wJEo
ߠ�����Kd��|��G��E�M���'?AvYh�!���~�`��L��	�Y���ɩn�據P�U��F��Q9�#HΫK3es&�`�xv�b��g��oi�R��Q�4A�y3��fe0*���0���Iy܂��2_pj���ff	�������/�?V���㱐���#��?8�Az6��h ���E�����n���bM�h���6BŚ�!(��FGh�)u;��+E6B\6A�Q��9�ɹ�}��ڽ�|�1'�a�v8��4O>���#�����D��)kL��E�)���q��������{��m�4�5�c��u㓻��-�u�_1D��+�̧%��ɮ|p�}����z�w��[�����h����[���yϷ�%\)D�_|��y��m.?��������ّ�.)`D��j
ޮ3A��p������@6��}�����C"΄���Y�9#����쎁���F���5�c�5Z%�j? l  .���ƛ��)o;OD8�R��9v!?��5>�7'\�,�-ޭ>K"��7�5?��y��e�@֤��2 C32��<�d�@���&�Z�Ҩ��zY�x'���΃ڤ�xf����}��{9;o8�1��E�p��T�&���jA��?�v�T�5��y��X�/>vڑ3���sڳ=i�n�F�V8�괿������w����}ڦſ�{�o��|�F�{�m��N���,�u������h]�/�d�v�E����W����������E(�#��F�����0#�l��\�y9�H�^�v��'�`��S���5��M���`Ik{uMB���2^���~#.�a�9�NG���qd����W���=nN��t��Y"t�[�gz�ld!}�}����m�F<�vⅿu�9u2�v��^�vZ3��i�œ��������n��1�	y��~m?���i�e��^��?������ܯo�ĕ�}HD+�IݾH6D�t~�������sFC�gێ����Nq��{�~^��}[�]�2 ��4�E�@K� *R���U'sPU��n&򅑟L�ʹ`�ȋ�����o�nG�A��,�Ok�����t���q��Ov��1�>���W��`�"��������~d�      W      x�uZkr�:��-�B+��H�����I��#u����5��n7H�r�3U��@Q|� ���;�aq����n���7[�\e�-nasXla���Zz?�u������6���N��j�ź�'��!,���ܲ��-y#��#LK��ݿB���	��,`(�m�;��γ��>,/�Ї�f�%W槛{:��zo�RV;��w���Y?�ט�,���-�/}�n��{���U����yYg���g�z���i���aw�y�r��_ݼZ��e�6oWj���/T�.������}���Ͳ64C�>W:{�9�v���6�<l��u��a??��*���G��q7O�{�*'����CU��ʖ�B�n�����p�2�r}��F�`T�#]�[�����ZN���]q�v��s��j�ׇ-�[og;ʛ9��q*��a��o���v��K��Vr�d�s8,z�n3���<&�(��x�+�7t�2%�����ģ���5��Δ�=�oHю�Cn*y����0O�f�fW���/�1m�c�ش�/�8[]����yUf�/�|/��+��.����!�`����2����o�^�WW?��_vv?y�CaL�������L�fi �����T_N�X@qu_y]���ζ9�jUͫwo^_��}�q8�d��	{�����X�[��l�#��a�u���y���{>d��n����.����xuy������M)C��0�Fe�K�W���0�������P�3���8�V�����3�'��]�=�
�䷘��F>q����K�x�=��������&�-�Gd��y��<<ou6;?əs�h1�,�<1Դ:L�����Vĸ������s��f���5�[̡��;�놼K�nÿs߼S5�5��s���}��NN�/0����|��`�yWgWoc��VѴr��O�)�qg�O|$1!a���D�h"�Zy�d��ˊ%0��3������N�F3I�R^t6n��!�l���%W��j�Ξ��������7�+/�	̞�˳[��K�_ &B���v�?|��+��o�GQ"1�UN���qOO{�|���{�g@$����r�p�&�����u���n_�'��\/@�+
.+!�L1�Ag��<EL{�F	T#T`���������@�Qx�(�"�7)����僛�&1�<�g��[����RK��-
rt���s P��#I�Z$���� �v���5u�`ʵ�R\��d�{t45`��� �p�T$�����S�O�pb.ef���j/jL�]>-��D7���p��&c� W�m�%-���5�������d�J-�Lha�j�UD��C]��6s�s�}�ǜ �>2��㜼[�*^贼o�ز�8�,覣r��J���@n��h�8��5_�	����'
[��w�e-�R�AL�� ��A�[��7��8��p��Q���D�R|`�:��p���4R� ^`�pr7��P5������e_0Ն�;>�����!���lɂ��F���G= |�> a)�a�T!@���N����O 6 �߅܇�h�C�LuB�ҿ���3:�jE�/Qe+m�!
u=,@v/"�|���"�D�fpP�2��ޖ�}�����k%�mp��U\mmFʈæ� w���H�ER��l�P��c{�#�A�J��>�nY@�o�'��y�����t_�Pc��O �$د@f�?�h��4t/��b�k�'�:�+��=A�/*�T�T������cDr���5��#����!���漆6{ C���Se
(f���d>�@�+Lr	���.�l��
0���o��3p�9|y{�U
��=I���`a��Ǟ��R{����)�6�EU����BZ� e�0���x�޳<�b�E����9�p�1+��_��Q�)��$n� ��V�X~�9
|Sq��h�a�eE�3���B9�V瘘NH볳�?݉�J�W�1AR�Vqq�����_ �xl�2�Ix�ґ� � Y Ic�v1�+s�#-ED	}�n cP��!����?lT�mA<H��)q���f���|0P�C�L%���SԈ��j]i%L��RR��`{�P��<_@���<�ٰ�W_	&,b�U\��q��"t���9iUE(���
�փ᫘S!Ѥƫ�T�P �{����e��L�)��E�"��:j�gD����L������A��s���c��ۓ��Z�9�)��Ts9g��eY�|b��̌��By@ �n1+R	3,d%�Q)Xg#~|��LC�LlB� <t���dBC�n�=>��|!�^xz��0``��lͻk���#VµJ&� L�֏n/E�Vg��@��qK]��. X		4Ki�{Blμe(����)�0mi�r(�ՋS�
h��ʁ���0W��R���[N�v{� 9� M&�V�7�U�χš �v�J�5�jY�04�W�ŀ{8ﺽ!חˋ~k �_	W�Wb�08>EMsA~�/�=@۫SU[���Y��U��ch�3"�ۆJ�]1��-}9:�f��$Y+	 V�ic+��>���:��#Ռ�DLB��H��/]���k Z��%U5 -�� �k�{A� ����t� �P3�i)���zh/ƪc��t���9��+&����h'�*���.fJ����.j!��&�=$�ת{���c8}�	j���u< C����N�I���+t�J�u��%�h�ܞe��ֱ�;A��5���ZA! +´�O$I��)}�Ř�]3k�3��gC��Zr����l�a9ndyU�^��u#'���i��5��H�ڛ�*FŰ�y�i�=��]4�.���銦�Y���W��$��Ш�T�a{�ȘZ��lH�åP�ׅ�Wּ`�s�͌�?h�3�8�4�ϛWim�z*+�zw{e���.Vl��D-�5g�ܮ�����{�UR�9o�O���
?{��4Q>�d��+D����j�������n^.f�ϩwO�-Z��1���n.�,Q?�c��Li�Ig�V�bh�P@�܈��P�S.Ht�O�
 Jc�Yd�(�G����;�~�t�[㦿�{>��c�*�ꈙ�(�}�>�DZf�^D��˔��u�����e�*���d������'��rp�*TFKy�\6ױ>y�7�#F2eG���qҎE4��bK~?�$������;��#�h$I�>��X&{Gz}Gk����T;�f���Y�4	Ӎ�%^Sl�J�-��w�"CN��w�����S���2�)ګ��:?�� �jC]��8�,����m�Jri��� ��"��}�'��'?5���=sSF�,r9����j� ���8]>6�t��e���%>>�|`Ty\u@ 啉 =�H��4���&�~��3���P�[����E� Ũ��<@�ث�)e�i��R���o@({�M#�W�Ǩ3�2���6ϊ�ф�d�F����@͐�[H����Xf�-��fY��� ��'�� D���a�漾2t�J{�[�T��s� "�-��gFa \v�B�w��l�ؒ��Jc����N����׫x&��)�Eۍ�����+���c���/�kL���O[|;�:�oT6�(�b��F�~��R11�����fG�[	���d}y���1�����<|C|�σ�w8�k@@� � ���Vr1#%4�Jԕ$B�$R�(�ꙟ������e�.�EI^��u	`X�d.��LSFW���1a��:pw;?0��4o)�Ϋ��O�#P@#�X,���D��?$5̑0����.VŁr�:�3G�"W`��yw"T"e��2�1��Juִ&��Q�\!k/_�"�qo��ݥ <�V��x�g��Â�a�)�7-�>�5ZV��2�Y�4#`V���@)�1�μ��:�3�4����HV{t�f�c:�`��uQ���l�n� �ș<��>�Fj)�sy�"�.�j�`�-2T{�H��hN��Ԧ�>��[�V>W��;�D����9����5p���)���E� �  G|���
��o)2����>�PQ��%$gIJ�ک�'&�$�(ft4��H�~drJ�V������'Y�I��2ds��H����}�\	Ց�a��XĿ#q����Z/�+�,�V�'a��W����e�q�M��:�:Jkx�c�� �5H��Q��l�Ki�z����ǼbZ��K���'��*ݻg����V���վH�+]�N�+]��-ϙ�T�)�K�W2"x�� �����*ß��5��v�� H/^?� N z|i @��q.A�9��%���U��t�~Je�3_��p3�)�^����:+��o�\	�>��W� �BP��0 ���dN�U��RN����}��⫪/�H2��	_�GYm/�<I��J*`�?^��߿�<�Ok#j      Y   �	  x�]�Ir9��cƺ�
Gk_?0����qP2���� tu�Df83��]>�P�o��j�6|�:��uL�#�؅�N�>|�:����W��^:W�+�kε����GY%i=�*i��VI\��J�z�U��#�����Z�2�j��諥/������Z�2�j��諥/������Z�2����}�Kg�5���kj�����)~܅�O�0�:�0���mH:Va�t����؄A��l�����l�����l�����l�����l�����l�����27�óA�G<�{ĳA�G<�{ĳA�G<�{ĳ��7����{�>��c��A_#}�+|��m>���~s>�KۆO����N�>�HۅO�����������2a� ��D����6sg"��AD�9��3}� ��I_B�9H�3	}� ��$����>s��g��AB�9��g�b��u�3l��o�a��S��.��M?�6��N���aя�=?���h��9`Ϗ�=?���h��9`Ϗ�=?���h��9`Ϗ� ��I{~4�����Gs���{~�=?��Ğ�AbϏ� ��Gq�^��U�mtF�8H���>L��aR1�M�ŷ)�X�)�؄I�aڤ��lR[X6	�TY҅e��HX6	��e��HX6	��e��HX6	��e��HX6	��e��HX6	�T��I�M�"a�$,�M�"a�$,�M��&cALƂ��10b`2M1V����X���ɅY�����6̮�aVk�¬�ȅY����"f�E*��"Y�E*�ƂT���0Ra��x���.����/g�I�\a���i�m����+��<�^u��}ږ����y38�f6p��l�ț���7��K�uN�����y38�f6p��l�ț���7��#ofǬfG���+�H�38hqy
�������ksX���3hQcТ�ȟEm?���,�"~G�,��Y�x?�� ~cA�,Ƃ�Y���g1��M����X?�� ~a�A�",:�g�ι�}¢#~a������Y�E�*�6:�OXtЪr�YU�3��1fU-��j[Vu�+�ÔU}�ɪ��d]UdI��¢ÒUXtX�
�KVa�a�*,:,Y�E�%���d��¢ÒUXtM���a�*,:,Y�E�%�����X?�� ~VcA��Ƃ�Y���g5m1V�ȟ�X�6��6U�6�6ղ6��>���`Sc�M}�6��6،E_dI�`3l��X�6c�6،�`3l��X�6c�6،�`3l��X�27�cl¢gl¢gl¢gl¢gl¢gl��uF�����������_�X�c������rF�����.n���v���wu��w5��w���w���wa��E�t1�]X�|=#߅E��wa�3�]X�|=#߅E��wa�3�]X�|}S�&}�|7�|7l��X�vc�6؍�`7l��X�vc�6؍�`7m1V����Ƃ���Ww�pq��p�5.��:�>z�1�����6z�-.����E�tqe<�W��Xpe<�W��Xpe<�W��Xpe<�W��Xpe<�W��X�27���x������x������x������x������x�花�GJƂ�8UNL��&&N�j��S��:#&N5FL�ꋔ8�!q��Ȓ.B�4��i,��X�� $NcAH�Ƃ�8�!qB�4��),�̭�}�"��Ȅ�),2!q
�LH��"��Ȅ�),2!q
�LH��"3�SX�+}����^.o���.�p���Zc��:c��c���b���b����u�%]����^�"3�KXdFz	��H/a��%,2#��Ef���Ȍ���^Ƣ)s�>B�2��e,��X�� $.cA(\ƀP���pB�2m1RzH�����p�:�[��­Zb�V+�­N��[���L*�j�P��A,���P���pB�6��m��
�1 nc@(�ƀP���p�T�&}��m��
�1 nc@(�ƀP����X
�� ncA(�Ƣ+�J�pb��K������	��/׷�]9�?���K��_�t��R�����#У�@)�E��E��E�!�E�)�E�1�E�9�E�A�E�H�^�"U��J�*Zx�g��_)jE��b�W�^Q�+E��ᕢX��J�,vx�h���*�k���ƚ������k���ƚ���))<o�х�������c��_���[���WF��S�Tn�.��q>�%2ͧ�F��T�,��*�SY&�|*�d�Oe���y�1>o-�EM���.�C������/!�@������C�<o��9�<���������/2ʿ;����|��T�������~�ߏI��+�3=\?
;~5��|�ͅ��y���`�����_p��!��t~����O/��_����ׯ� 5���      Z      x�U�[�㰎�ۋ�#�ɽ���1�L��ܯF�m!��S�LJ������u��~C���Կ����m��~G���w]��s��s5~�������k^rۿ�e��k^z�����k�п_s��~�=z�u����ۿu��������j��tu~}����]�_?�����c~�F���
g��7>W�7����Ul��j�ƌj��7��������j~�q]��x��o~��o6W�7�����U��c��t�y�=��M�X�o��j�����{��[��o��Z��k��{��c�Ǻ�����{���c��r���=��m����c��v���=��m���r��~�=����q�o����g��{��;�q���ٿ����{��;�q����z�;���s��s5~�����]�����NW�w�������ݣ�ŧ�=^�]�x�����s�7�=��=�x�����s�w�=��=�h��{7���,�~Y��kY�G��YǇ�Y���Y��[Y�G��YǇ�ˮ���ǲ����7��T��(Qۿ57���{���5��7_k��_7�,�~;z����5��&Z��㥽eK�=���G֡�gֱ��\3}g�ӳoDM��7¦��q�F��Z���i#�F贑}#v�Ⱦ<md߈�6�/�q����ٗ��x���}#Q�tۈ�6�5>�M�qc�@5/\Y�u���:VDBM>��I�/�X�u���$jlV���k+�FƵ�}#��ʾ�sme�H���od][ٗ���w�oȾ�1v���k;�F굝}�;�F�5�̉:z)f������^/�襰�fO�\G�5u�R�P�:*t���b�:���˻�d���v��W���s�/��lΛmل7��ٖ��Ͷ�wn��ϫ4b?��߬y��:Z)��c�J%�x�r�:��L��W�D�J'�ޱ|�5;��{Y~��,?�F��/�F��/�F��/�F��/�F��/�F��/�>�o�j���c��������[��H�-�F������:z��;ym�m|d��s�o���=�5�yYs��e>d��X&Y�:T�*��FV�7��:����R}{��l�=��ֳoddٷqp�}##�Ⱦ��}d���>�odd�72���ه�����}y��ᾼO�t_�}��㵳g�sd�sf˜��Y�L��p�W�_����W����g�G\�x�t#�V�W:�kf�$��5�;��q�:�Iĕj#�\�zE\���+��{��wg߈۾�o�m��7���;8\;�}g߈۾�o�C?�7⶟�Y�O����'�F���}y?��q�O����'�N��o�m?�7������f߈�~�/�뾑���-kx�u�B7=<�=#n���EP��C�}Y�B^�:t_�:���:���5��+���v֡�N֡��W���4���o|���˶��ζ�%Ǘm9���-_�l��e�xw�/�Nj���h��M��4�Hu�:��F��e�Mׇ���à���kM;Y���fk�^ֱ&��:V�g��<��}#�GϾh����ѳo|�GϾ��=�^�Fe�K���?F�e#������p����]UgW��Ȯ�:��]Gv],�]���Z����u�:�!�:V6BJ���3�X�)ס!�:V6B�uGH���R�c�V�}|s̾pce��!����zf}��:���u�]'��n��w���������e�wV����ݖ�ͱgֱ��������Oּ�f��m9���:N���?W7>���f�}wr3��!���������2Jul2Ju��Q��d���$�TG_2Ju�"�T�!�:6�;�7�v��g����}�&7��w��/��e_R�e��׌�}�n/��~ٗm��o�k�˾��ٗS/�ƾf~�7�5�˾���_��}��ܗ3��.NF�+ߘ淳�Q�+��ݬy��:��ܕ���Z�-�uش�u,��-o�IR����Κe��_���d�/�X>I�:�I*ձH*՜PY�V �T�CϾ�V�ٗ+=�rj�g_N����镑}�n#�ƞo��{�9���TN�e���6ٷ�Z�E��j�h
�Ju�(�8�:�*��QVQ����:���eu�(��9�t���}c�2���ŗ��uh.��;�\n˱�\ٖ5Yٖ�����H��]�y�f97��WTQ�rUԱEu�+��C_YE�)��u���7"~������ZQG/e5�^��KYE��U��KYE�JYE}�UԜ�[�cW�o䪣�ɾ���'�Ʈb����y�o�*�;���7��i��7v�f_��u���G�����d}��v�F�}�N�/��k�����7��F=�<����s_�oͷ��^�}9���f��g���KYŹ�u˚��Y��G�;���ze}KiE�~:֤���RZQ��RZQ��jٷqR4���a����ղo�V˾���e�H�ղo�V˾�X-�ƶZ-���a���u��;����6\}d��Ϭá���Ai߃:�?Y���5�Y��V�᬴�g�UԱoYJ+�pVZQ�����g�c�#���+����gW|׋���:^K\��Ts�:܈+ձ�Ju�Wԑ?��Rnĕ�p#�TGߙ}#s�ʾ��ke߈յ���$w���_+�F⯕}#��r_6�r[N�/w��rӈڵݓ�{k����=�.��{��d�u,f�'��kg�ț�s]�L���a���ul�Ju<��R��*ձL�Ju,S� P�6 �T�6 �Ts�����/��-��,�)˸�y(�2�x]w���nȁߺn��qOֱr7�n�(���y���i^�(o��+����Fy���Q^�(oB��5�f��_��	)�3����g��Y��g�7���z��,�m;�v�Ó�4�{7����nnѰ�;r�~��5ϞY��;r��Κמ�ä�'[~��*���ko��sM'��������Z�IuhO��/�圬Y��:��'�їxR�ē�ZGݳ�}cw�G�����˦n��n���=nִzY���u,~�-g��t��y�-��=g����|��3W�7����ksuyS�\]6�҉�[���NԱ�5�Y�r�N��W�t,��NK��[��En+���Il�҇`����w��ǻ�}q���=s9�ٗ�ξ��>Y���3u<�eJ(j~�k���h+���Ϩ��%u�RBQG/%ux*����ɾ�g�'���Ѿ�7���u�8∺g}��:�ޙu��+��{w�������YG�������:�>��ǘ�zֱ��� ��̚�o�O�;k��}���v�uy����(��M<�5�߳�Gԑ��zf=�^Y���j��(���E��69ʪ���i��Y��ܗ�6Gq�#��G�<f}�^Y�����rN�᯸��u�+���!�e�=����t�%���*^�磸��u8(��<�f�+�pP\Q���:W��=���}c�uF����7�v�Ⱦq�sF�����7>�gf�؉��}#O�̾�>3���g����3ݗoOg�/߀�t_m��}����˶%��Y����p&��X�#�p&�T���+��L^�f�'��!�T�3y�:�w�]���}�������sg�؁�
�ȴC^������K^������K^�����:��W�:�]���+���d_)���0��}�p�/��d_+���p��}�p�/Cn�ՠ�����f_����؏�Ju�%�TG_�Ju�%�TG��e}�+�ї����>�UԌ,8��X�[Y�|�嗱�ܗo�/�Xy�%�w�+��hY��{�3���zf��^Y��w�7�����n,�m�x����67��=�E綑u8��u�o����%��[�d��X�J5CH^�"������u(�U�Ì�R�AV��^d#&"_o�YG�~����f}���G��凛;Z���ѳ����uh���n˗�KT��9�m�>Y3"�f�BT���U�cUf�:���[��OϞ~��T�-�N7��Γ5�����eb�@|�6�����:6�aձ���x-9��׮�c��)ձR�j��ܬÇ�R>�}�o�ݲ���g}ɩ����s�3��KN������KN����j=���X�Qj�'�KJE͑�=#k��]y��ʟM�?��UƤ�j���R��i}os��{�aIJE���KJ1�7R���p�    /o#R*�����R�Y��:֗�R�-����u�9/)��W3�XRJu�)�:��/Gg��/c�s_N���}9��>������}����ܗ���e_�?}[�]Q��w�7���:�ON����:>Ə�R�$�T��g�,[Y�s˾��}-����5���u<��/G�O�+G<��gnaIncu썟FYR���YR��5Ғ:�H*�{{Y3���:�F����ٗm>�o���7��od����}co�F�����7��od����Z_��2>��w=k�d���p ��c��H+��@Z��J5��c��H+����}��/W�e��ʾ\ٗa�+�j�`�e��ʾ\��Q���W5}׿�(�ݳ�Ju��V�Ç�R>����!�T�i�:|H+��C^�f�b��3r�/c�O��=y�o$�;�7�����{�d�H�w�o$�;�7����I���r4�����ŷ��G��@^���:�+�ᠼ��ն��������:|�W�᣼��U�q��W��\Y���:���:�=����fL�`P��ֈО�0Pe��q�
��C��%�~�Υ	�� ƈ2.A�׼�Ư�zVk����;�"� m3�6m%h��N`��I`��MP���M�hڛ��S��6�To��Ƽ�4�*D�qB��i'��2�f�#�l��4�'�'̀ۘ~c	8�	�	Z�I`����Hm��A��!��� ��' :G}�h��R=<6x�	̓�Gn�% �R@6+�W
��Jm�5�FOà�tm��u\w��&��%h��g�f�M0���=�=��)�e��:��S�j���`�=�6!`��K`�%h u70*�;C�Ѭ���O�t?t ��hĦ۱�֘�z��4�6`�����	lDv�6/{�������=	�ܛ��}	�����^\OF�~/"��4�<h���l�Q��;	z���
x	�n�O5��o�ͨ����k�70����kl�xc<<'��7p����(w�D�kD:$"�X4�(h�H@��ƻ���	��n-�d2F����O&��萈�o	萈̻��HD:$� ���D<�nJD 7%"��@G�h@K@G��h%b Ø�@G��3�@�F0��4`>@6�4wk�^%⍧�DpS"�)�f�.�� n�D@}nn�D 7E"��J���i�g��4��m��ڲ��g���L|�.S
�2�M��e"��2�M�h
�H@G���Lh�L|:�mm�`띸mp���i�m}�@kJ&2����&Xk����D}�D�}�蛀5�(@�LԬ����y�K�0 �|20 l72Q��(@�L�C&
�!�4`�ǈ{/��~i�5�%�k3ꞟ讦Ԑ��Dd��I0d��Y0d"�a콁y0d"?����70�Lh
�N`�(`�(`�(����x d"�N�Q��Dd� "P��$�,�#�z�U�p��X|@����g4>��ݫ�C=i"Q�4�(���i[����Z������!�Д���T���e7��|�L
X�P�׬V�<�Oh��S��C�=U�4����Vr��Ѻ�쯿&i�w�Y	z�N`=IÀ�.�1�V�4�j���U[:��M���s��A�e}i`��@�+�^���E�57�5%�!�u�(a��@6�p�$����)�w�X�0�o�}��6�ۛ4����2r��kNK�5�!�����MN���a��@�HҐ�Z9�P�E_���K���@_[�O>�0�Q�}�H���ـ4葕���i(`��HC�����%�>�!��y/4A論f�4��4`���~�S��l��������}6��Yc|?����l�c-F��K�Ӝ?�P��?�P��?�P��?�м?�P��ICAZS�HC���@�Ӏ/��7`�Ҁ=6��4�}��=x+3�߀AO��a� ]��7=���֬��>���`�g������ġ ��P&r�����C�ġ�>ġ e�P@ӑKM�@�3�&k�{hf :�f*�џ�@��z[���Dn� 7Q���h n� ���C 
p#�I�컙`�`��n&0Xi@�25 �!%s �鶁�����w#QQ��(��@��vp#j�p#���@ӓ�ʘ)``�4`�5N�L �r�^9q�۟�%�F 
x�Ϣ�F 
p��o 7Q��(��@�F 
p�6���px_�i.p/B�Y�k����i&0\��y�.B�\4�H0��|��1��Kb?Ą�$&�&�KEL0V<��b��	;�r�e �rag0�rao0�raw0�]tp<�̏�	݋��(BL9)BLA)BLI)BLQ)BLY)BLa)BLi)BLqy?���R��S��2S��RS��bS��rS���S��ޯE�e�N�������i��*�E*�E	*�E*�Eʵ@H�����if�(�EA*�EI*(="\�R.��	�Ԅq�C0�-�HO`�D}9\f悁���$�--a'�L_HbeHT�&�?�O�
X��CQf10.�3��(ҫ�I�P�0�����׊P�^�:�e>��8�	�"=֋X:�jb��B�y�Uľ��Il ��� \M��jB���������4��M�_4��?k�"N��y��I�X�D�	c"ք1k�9�/���*2���c&? :`g��A��������HCάr]���+�&]s�q����u�W�/�B$q������W�_ ^M\��+vb��w�o����y����"=6�p&]M�R�.t��zΤ�	g�E�L��p&]M8�^��zu�\HW.��	�դ�V�$�Z̛Ht5�B��p!]M���&\F��[cE.�\ح1�"	��r冮�h�"\HW.��	�Մ�jt5�B��p!]M���&\f��'c�d���Q.CW�(�d�CK�e�{2fZ0V��"̵H�E+�E+�E��"�X.�X.�X��1ҊpQʊp����.�dk�{��˅=��vѱ�ڥ��U�r�z)jEh*jEh*jEh*jE��,BSQ+BSQ+BSQ+BSQ+B󤋎�4��1u�=�~�0#kM��&�<D�5i��3�քȄqk��;�o$��ʅeG.�\�0�c�<u�D�W7]���I���-B��5q2�ĕd�\�&u$q52�ԡY��e�\ח�ʅTg~Gט����6�ruM�r!���Q� �z�I]��,�;�k�;�k�;�k�;�kR�W�k��2��I][��5�B�p�Rׄ�k�5�B�B:rdB��9e�5}�"�H]Q��~zf��	�1M~h	��,7�qxΑ�I8G�&�<�݂�u�8�D�p��Mb�Lp2a�49�s�&]�ha�IK.�@4��7.�\�q�T1�ʅ�z.�.��k|%�C::���9�"4�)�3o�.��tA���݊�ܽ�=��ܳ�mr0��1����Nb�I�qMBb�I�E�&�ZO����$�t]9b\�̄��h Ύ�rN.��4�r^.�+��"\8�5��S���L�0^Ʉ�G#1	�����.���"\^+���"\�(�u�f.o��4��S��S�˻E��W�5�����b}���b}��+c}��@�HW�ZE\��+]u�K0W���ކ^�1D�ĕ�nbb)�0���	��H0�ɏ�&<�.³�"]?�T��݄K��p��ދp��>�p����p���.�1��gs��}E��Y+�l�"��(�l�"��*�5�o�"�H]f�n�ed<s]�p!uM��Z/�5�B�p!uM���&\�)�5�2�������8)�"T]�.�6�P!uM���&TH]*��B�P!u�MB�sm�!jE��&�]b��Iפ[E�)uE�)uE�)uE�)uE�������5�d�p!uM���&\tO.��IW��E��S��k�5�r�EkD�����̞I���Ҙ@c�����#rz�1��c!ui��,>���:~_���&    ^Fޚ0$oM�'ykb=�[���sXt%B�V�k�[�%yk�ځ䭉K��&.Hޚ4�64������W.�Ra���� .-���"]��+�5�Bޚp!oM���&\�[.�	�VD�3'	�V.�=�p�p��B�3���>4�p!oM���&\�[.䭈�g^��9|��BޚtY�V�yk�5�2f.�	�քyqQ��d�$\�+�e~E��V���E���C���E�D���&]�r�Bފt��y�p!oM��&\\.��J��;�y�p!pM��&\\.�Hח^�H��|E���&\H\.�\xf�$�˅�g�O.�\xf���k�锹>I��W��k�5ѝ�5ѝ�5�]�Jѝ�5ѝ����h��I�;�kR�WDw�Ė qM���&\H\.D�	���p�vї��M�s�����$B��5!F�#vM,��5!F�{�1bׄ�+b��BI��j�l]G�\�]�%q-��.Z=f����>4�6������*�k�ҫ���f�P�_%uM���&]�!�ʅM�<"�VMC����B�iШ3Rׄ�k�L_� ]��5aF�0#uM���&]~���W.��	Rׄ�k����3J�5�B�p!uM���OÐu1�U��k�5�B�p!u!.DИ{���k�EO�B�p�����.��	Rפ���"\<��+@Ჾ"\H].��	Rׄ˚E��t�/�E�1�H]f��I�|E������
�"�H]f��	3Rׄ�k�l���R�Ş��c��ͬ�$<I]�$uMx��"���KI���,�5�yv���	�c�	ݧ�Y#F�#tM��&�]�����1Bפ+3kPx�S�2���
]�
]�
2b
]b
]b�	�h�������wJbo!�N�.}�py��;G�ĥ�#t���~G���yJ����L�:��zJ����.����)�Ӻ6�H��~E���W�w�0��]0>�Gl\��	�!:�pG.�ᢑ�"\nq�&\�l�%�[.����e�e����K�I\���PI��]�K?E�p.��2�"\F+�e�ej�*D�El�"]	|%�Z�c!6Nb�!6^b�+Bl�"��lBl�םfrT.�.�f���Up>�)Bl�"��+B�qq&�V+B�#� ��(B�1>&�cBl��bK�/������HWP��ۭ�݋ۣ�=�۫���ۚ����qٷn.c��|E��{+���"\�(�E7����8L��]����.g�˹E�00ĄC7L�0�¤���"\`���"\..L���L�J��$���D�$\.%�K�n.�I��^�kݏ"\].��	Bׄ�ˉKf�w�T%�B蚸�=�k����iB�hA��@��k��&��O芦:�KKq5��q�}B��3	].��	Bׄ�k�J���	3Bפ��"�]NU2k�7�ځp�d.��	Bׄ�k�5�B�p!tM��&ݣ �;�~�p�Bׄ�k�5�B�p!uM���&\H].#]��ah����^���aF�0��E���&�H]H]fĮ	3bׄ�L��]7����5aF�0#vM��&̈]fĮIw��E���&��-�li���q!wM���&\�]��51�p!wM���&\�].�	rׄ�N��mM�ƻ�_%�V��[�"��]f�	3�@I�e�"��]f�	��0��b�ۊx&��	Y��w�i%�I�t�U�'�k�5��-��"<�]��]�/]�I�r�y�)[I���&��]��r�0#wMZ�+�N!䮉{���&�B_��	Z�\w&o%q�r��]C�]�!wM�c�-�%�+�5�B�p!wM�4�蠄Y\~h�P�Z�[���$vMh�&4=WB��5�I�ts�^�&�kB��5���Ef�.gr�/ݙԕ��k�5�B�p!vM��&��e�B�p!vE�<�8�ˏ�)�5�2^.Į	bׄ�k�5��3�bW����Yf0w&{%aF�0��3bׄ�k�5aF�0#vM��J��;t�!�)�5���������������"̈ݩ;��=��}�p!vM���bׄ�k�5�rf.�[���.�J�.���ܙ����"\�]F�]�QQ��E��&\�].w�B�p!vE�5��N�t��W��q��0N�ԋp!vM���c�rgrX.ĮH�pbׄ�k�5n���vJ���&n�D울��W.4�Ē���W.4�8	��-��+�5�B�r��	ȝ�bI��&\�].�	�����}rׄ�k�5�B�p!wM���Ow�ҭ�F.�	rׄK�I�w�?���k�5�B�p!wM��r!��E��_�)�<�$\F�����d������W����0�����$̸��	���$��*�M�vf3]l6�E���*��~�^_f�]3a�40f̛�4��\�ϵ��\��u�t��t��N{n\�J�'�Ez�(�z�"��*�s�"<�)�s�"<�w�	���y��f�l�D�H7>�E��N�"��.��"��-��"�4)D��&n�0��b3&p��l�7avWfwavO�n�v�0����a�Zf�a���f��0D����0{��w�0{���}_w��Zсz�n57��.2c��������w����w�������!]��0k��֋0k��6�0k�b��.�t0�L��I�i�8�P�"�?�+B��"�{/B�����u��gz��;��n��n��n��n�+b�FKb/�ܳ$:�Q����"��*By��͔��o#f�\f�\f�\f�\f�\�}�T���a��醄ۤ�K��*?�@�3MZaF�0#sM���&��H�M�\fd�	32ׄ�*�,Q�pY�2ׄ�k�5�B���$sM���&\�\.d�	��.:��D4�J;���_~�V��z�D�I�|�Eh�ʌ����5ю�5�I��<����ruquM�p���Mv梉t0�d4���3w�ꚰ�PW���W�5��&�_+�}-{����;����/F�*b8�5陧3uM�q�+b����ԠVԡ^4�Q�{n��fLIc(�A��;lr�k�3ow��P��}69��N��aơ�	3uM�q�k¬����@���K��םZӽ�E��~�"�t�yb�`wuELW�!Ƒ�	1�tM�q�kB�#]�nNZ.�Q���x#~N�^.�p-�sҒp�HׄG�&\�*��Pq����9iI�p���gL�p����lI�t�.����0�p�%jD�p�a��ۺ9�)3&\8�`3&\VK"󙓖�gL�p�������pYv�j椉t*�9i���&����n$ۊ�����p�A��9iIxr���'gL�p���綋�+��ƨ3~y�ֵ_f�a0avz�nr;�0��H���	3�0�0��	3�0�0;v��Z&��>�]���U�kbׄ5�k�5aM�ts�cj�p��&vMX�&��]��.>�̤4F��4�0#vM��&̈]fĮ�����H����y0�k���_/�]���f:"\.����Į��&n1L울�0�k�6�Į��Ғ�l�H79Ex�&<�]|j\W�l���鷺����K"�tٶ��[�Zk䋖A��kb��]kD�x2+-�5"wM���&ݸ����vI3r7>K�B�"��]f�	3rׄ�+�M��]f�	3rׄ�k�l�%�|�6�"��]f���3rׄ�._�_a^Zf�	3rׄ�k�l������~/�f.�	rׄ�+b��Ĵ$\�].�	rׄ��� \�].�I7�^��MF��ȩ3/���μ�$=�L���4F��ԊX�ӓ��%uM��kb}H]�C��N�XRׄ��o!���E?����C�;��D����5쨘��������g�"�	]҄�	iB7h�]L枓���Jc�e�mۙ����pv���pva��a�Ŭ�$49�`B���5�M�-R�Wĭҿ����sv����9�`��]0q�t�.��i:gL�6��&n����g☕�XQ~Ń^��� �  H7qoE�qv��gL�qv��gL�qv��gL�5��[6����oz�6�+�1N/�0��I7�E�q���gL�q���gL�q���Y�����a-?�A�3�0�0��	3�0�0��	3�0�0��	3�0�0��	�i��f�a�s�}
�Ғ��(3&�8�`3&�8�`3&�8�`�̗t�0���b?���δ�$\8�`3&\8�`3&\8�`3&\8�`�eE��ra����$\v���`^Z.�\�o0/-	�0pWL��v�%��.�+S"��KKS&\8�`S&\8��-)�;ۙ����L�p������p�����K���Y].Sʼ�~t��[ExrVׄ'guMxrV��<N}V8�kb)�3�|���:�UqϘr~D�F�G�X?r�����&-�$�{`Pq����X��&�M�3�>�q�I�EZ"��d���
��S��]�Nk1�N���i��H�=�'�uĮI��\sb��]�����)be�]+K우&vMX�&V��"<�]��.��L��ZK�5�B�p!vM��&\�].Į	�ыp!vM���1��3�"	bׄ�k�5�B�p!vM��&\f/�5�B�r�7�809-	bׄ�k�5�B�p!vM��&\|�E]Q������`rZ.Į	bׄ�k�5�B�p!vM���1u�s�"	bW�΂��I��&\�].Į	bׄ�k�5�rʅ���I����J	�"\�].Į	bׄ�k�5�B�p!vM��Q��ˡ)�k;�Ӓp!vM��&\�].Į	bׄ�k�5�B�pyv������w&���zӽR�ꑺ�	�Y��_��b�}ҕ�:�X!~�i�5�6�x+�Q�Z"]���k�HA��Iz����pD����(I<F�j�[ԸH(&ԋ���0��Q�?ԣ��鉘sM���?|�+� �Hĉ�o��LSӝq����������������M�.��j����������
���u#�c�!Vc�!Vc�!Vc�!VCV�Y���07�����%2��s�T�����nMm�j�?Dc�R� s�!��!\�96�4�B�6La+Dc�?DC��4��O8�l]Q�1�ˋ��(V�ԧ+]mӈ�.�i�JW��%�1������-����1�M�o�Lh3*ʘіȡ S�t ~���
�BK�k��
��Jd8w��*�^��ݘ�.�/���C48y������9��"ǈ���i�J��䨟����z�F�t�H!;��+4�҅9f�y����b�["V�+�t[{�^�w�b�K��z��������V�����h%���?��?���j�X��X���X����7��Vx������N�8����;��p��'(�.������������?�Ŗt      \   �  x�=�K��0��a��K�w���c
"3�.��)Ħ�������o�|���w��������v��߱��^��/���Y���z�>��u�6�>���e}'m�������t�ߤk=��F�v�d��!��t�1l̤icA���N�6<�m(�qlܤk#��&�e6�=���p0�`~�uZI��NZ6�`�s�<I|���n3��-i���VO
[��j�fR�������u�+�l��m�&��H:�[ҵ-V8l�!�f��m{%�h�Ŵ�I\���m�!gn;��yK��An�|<�f>���4(�a����4��e~�������8�;-���Iag<:͎4�w���4L��:�iǓ�����zܬ͡�#�ZnI�nO
���mvgR���y�ݝ4�zҲ{��ݛ�v���=h��czRX�G�,���E�XI�m�i��cY��mq��B�{��D6M�ڙ�h5�f���I�R2��!����bv&*�����,����0|�~o�h����I�>����1��]����нX��b,t�:���XP<����J���Q&���>T�b5ؔL�!��p,L}i��tH���$D2ȈdtI	g��db�O��� �dE�"�/�R��i��-�b,,ɲ�$I_�kca�b,����(][�1��Xj��b��-FwI��"[�n���^����n鲜dL�+���[��xt���O1��s)���Mh��/��0���{�,F��yL�t���4NI�=��K���K�8����B���{p/F��q֎���]6�cҨ��5�{���6v֗�������V���8���;.Y���� �zpx'�V�z1(}�:q��XJ���\?��btc��e}�~�W1�!]և����tYR��-F7��_��s�F���X�,7�|��*�Cލ���oR�����N��PeuQ�QeE��UV�s��FtV٫�,����e9+�����S�.��W7&�G�bݥ�btG/FwH��Bo�Y����1�
+�:����z�c��J�%)�ĺORX=ƃ+<޽�(ƃ��1V�񠰢
��V��z��Ձ&,]֊����R�	�bt�qɺK�0�%����֎���5F�^S7z$�x?��	I7�S�]��s=��~]�M��K�'�KU���*F��MF�rLF�<\'4a�b�����c�n�V��V��&<���Y���bݙ�bt]�̝�~���[��G2I7N��9��źǕ.k��sf1~�*��?�����KW��:�-�ϑ.kH�ۊ���:�^`t�!���]�С���K=��btI�dt��C�������ѝ�yG7z2�7b�K=�/0��^`t��I�AZ�YRo�V��VG{�����^x*h�zB@W{�ԛ�r2O	���~$�&����A��<4/���:ڛdڤ����u3��m�WG{�|��_�,�yu�3��]��G��)���b<t�:��!��;z1�C���"t�,��*FwH7`t�����.���.5��.utYS|�|Պ�%����5�ɴI^%�K}]���]���b#]և|���aJ�5!��j�xX�K�����Lֳ�ZŜI�u{O�^��%]�MO��������!FW���Q�cf��A��wx'�{���\3�ç?��z8�s*�C�zRm������0yu������W�x#�.כy��e���X��xp�&d�<�G��}�yy��e����s���`d)�{1�����$�.��(�q�����6=���YJ�)��RBL	^���]��.���yO2�7�-F�J��{3Z1�!]�E����t��Q�`��]��D�ѥD��.%���(��Z�rM�3�x��x��nu!��7�.��\a/V��_]J.9��qu)?��b<t���Y�����ӥ�|��ս?�ե\�o1�(�d�Q���z�f}BM����g1(�K���.ƃ�J�C$;�;J+WsJ��XPZ=ƂҊ�����uJ+qWgG���J��XPZ�cX����b��40���Ɩ��1�+��I,��}<(��Ai%&=�Ҋ-�2�^���c<(��Ai�N ���V��z����1�J+�*��ds)��Zf���.�C�.�ۙ���{��VWǨ����1xSZ�W��3Y�����.��V��z�g��c<+�ضK}8��v���z�7�[x���b'��^�ͽ��*����y1~W�~Wlm���
�lg�����})��;���b�sM��L�.�UĻ;Y��w���_\+�뜷��;��0� .�np��#鼘k�:��ϡ�s'�sJ�Cx���e�D�[����i�IW����b�g�z��e݈��vq�Z��ԡn�Vpr75~��c=Lm�dt{+�.]u��@\�khへJ�q����*Y��u���0�C�ㇸ
�<�Fw�!�q���M��*���x#���C\%�xt���x#�b�Q��q��6��C"?�r���>��Ug�s$sY�����W���SV�A�P"�3��C�����#��#�#J��kN���M����K]jt�*�q�:�\�a1�b���:�M-lt�&���u��um���FW=b�|W��0q��+��U�S�Ļ?���n����-�ۖ���x�V���U��L�o�*Y-v5L�k�3X�ۏ#���� �j�?��d�@���	�O��?�7����4�=�Z����<����@o �7��{ã~/� j?� oz�����7 ��o���>V/�_����^��p���h5��m�������4&�_77z'q�\9�+�}G��r�W2���Q~��	�c�؉�� �@�o��7��R���ҋ���n����k��F0���V�1��D!�����rE�R��������nz%DN�6v��>v�^c��}����o��5�7�aρ^^୯�'����X��nzӤW;�����7�����ǒ�      _   �  x��VA��8<�W��cc�dZn�	�F;�S���f
����^re"���$JF=�5���Q�^�1<�΍njS�T]l98+f��㋺z�]"T�,2�a�f�#���Vߣ.j+Sj2քE{��^�]��E����
�� mM�����X�w	��7L����8K��c�ϱM����/��\���i��I��Iћ09B�������=9�Go�;?Tk��[t'�D�1�!���.��F��2;{����+M����!�ސ�EY�7�@N�iϚ�5��eLP�dp^�N�0�Q~�sΎg�����t.q�v|n�֘�������D�'�3Έ��1݇I��Z�>�e�L�C�6���M >���<g��n�E�[�ӊ'
oŀ����'.�c{�I����d��Fzl��H��;� z�P��/�':2+�X_��{�<�$��Jgb/=�{%�Q��8�F��>�5B�ɣ��_H��)yAl�I�:���9��A}�g�ɠ��$�B��_���r�=��3!�M�\UYy|�uhA��;&3�Γtz!�:���$�/����,�(X2d�i���Rs�Pr/jvv1W�/il��<+�[O��y�%�VW���m�k܄����6/��õ���|P���G��.PS/�TӪ:;O�[�<>Ac���3�Zr`���E�a��ً�����{CO�Z����I�ˎ~��C��W��t�)��I��S*��&i�ȗ�S����N-��ϵ��WDK��VR�'%O]��wz�O�K"�t���ݵa�z݇A���|c?d�u�=����C��ƅ�'�:<��2G����(��yO�Y�aF�)�I��G��dê=�Yq��U+V�a���L"Ҭ�^��R=R�B�:�?��SPj;z4����X�,go������&"el�.D!'��3��/�&H���Y��>�.[��г_y��S+!|�X�Š��{�EJ@��:<]E�>l |��)�H*�DKKʶ>n@�ۄ�Q�>v��᠘��R�K��f������ǙTm�p�����[�R�B�i�Ř[���ʩ_9^?%�ZI{��S)OYs`&��yʃ��J3@/��	���{��_nq�S�(��̐������t�Kl~6�s|-�	����������_�k�Q��? �K7�y�N��?�4{N���,�=�k	b�F3��U�N🿲,�����      `      x������ � �      c   �   x���;� ��˯h�^������b�\nZ�$�(Ɵ/E�>��=�s��
k%s@�7!1ԙ	V�%�F[8�"��u,��"X��
6
�e�L���LNs'�M��R߮$��b��L?����S�rYW��5(X�Ǵ����m�吱9�(#�!�oh I�o�Vn�r����7�ʺ����Q*�`�(������ꡣ���r�������Hτ����3�/�m
	!/�I�      e   �  x�m��n� ��㧘H���Mr�W���T=F�2TjO}�xS�_#���d:X����u�-˲n~q~��~��S����9�u�����%�#f�����oخ��mzRI��&�r*�=H���@���Ƙ+�|-TVo�ǵJ���T������B�%-�2B�5Bikލ�N%	2� )�N�<U��Yϒ��Z�i���{�TbR?��
-i0�-7B�lA��5[P'.�~nS�<W��x�۽^��2U`���j����e]L�~�UaL��r��[���=��Pv��W��[�Sõ�W&`,oqG�,�Q��/W�U`}Vd;^���_�G-���a���G`��k���y<�G��y����4�r�kX�ә>�ġa=�z������H�tm��秦i�|�"�      g   �   x�=�K�0D��)rDh�-����	qR	��ρ[$v���Յ=g[��gs J>0�ؗ�y�1d1$�YUV5��ȍ<�9����,6��=�^ќ u!e��g^�
$��,�F���D���=H/T�jm��)�����i����N��%�[r#�M���gg���9�      i   %  x����J�0��s��aSuۿ�6��4=3i]A6��TD�߬�`�`�} ��n��Pw��jr���o��}�����n*]2��"�b��H���p`�W@<������hI��T�`�Jj��,K��8��L�QJyF�d��M��Y�ۏ�K�٬_w��K%-C��Y�r��Ґ�G�_�d��\2<�K�~�z��.�|S��w�s����[m����sX)��-%�����^�_��	?Ɯs�N�� ΰr�?>����V*�E��U���'������0 <q�#D����7      k   $   x�3���
q�2�tv�	��2������ Z�     