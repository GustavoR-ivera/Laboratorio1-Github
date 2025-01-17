PGDMP         (                {            test_1    15.2    15.2 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    test_1    DATABASE     |   CREATE DATABASE test_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE test_1;
                postgres    false            !           0    0    DATABASE test_1    COMMENT     9   COMMENT ON DATABASE test_1 IS 'base de datos de prueba';
                   postgres    false    3360            �            1259    24593    rides    TABLE     =  CREATE TABLE public.rides (
    ride_id integer NOT NULL,
    creator_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    pickup_location character varying(100) NOT NULL,
    destination character varying(100) NOT NULL,
    space_available integer NOT NULL,
    departure_date timestamp without time zone NOT NULL,
    charge character varying NOT NULL,
    vehicle_id integer NOT NULL,
    ride_available smallint NOT NULL,
    description character varying(2000)
);
    DROP TABLE public.rides;
       public         heap    postgres    false            �            1259    24592    rides_ride_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rides_ride_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rides_ride_id_seq;
       public          postgres    false    217            "           0    0    rides_ride_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rides_ride_id_seq OWNED BY public.rides.ride_id;
          public          postgres    false    216            �            1259    16412 
   test_users    TABLE     �  CREATE TABLE public.test_users (
    user_id integer NOT NULL,
    user_name character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    user_status smallint,
    country character varying(100) NOT NULL,
    dni_type character varying(50) NOT NULL,
    dni_number character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    last_login timestamp without time zone,
    phone_number character varying(30) NOT NULL,
    deleted smallint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    driving_license character varying(100),
    rol character varying(50) NOT NULL
);
    DROP TABLE public.test_users;
       public         heap    postgres    false            �            1259    24611 
   user_rides    TABLE     �   CREATE TABLE public.user_rides (
    "id_userRide" integer NOT NULL,
    user_id integer NOT NULL,
    ride_id integer NOT NULL
);
    DROP TABLE public.user_rides;
       public         heap    postgres    false            �            1259    24610    user_rides_id_userRide_seq    SEQUENCE     �   CREATE SEQUENCE public."user_rides_id_userRide_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."user_rides_id_userRide_seq";
       public          postgres    false    221            #           0    0    user_rides_id_userRide_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."user_rides_id_userRide_seq" OWNED BY public.user_rides."id_userRide";
          public          postgres    false    220            �            1259    16411    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    215            $           0    0    user_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_user_id_seq OWNED BY public.test_users.user_id;
          public          postgres    false    214            �            1259    24602    vehicles    TABLE     R  CREATE TABLE public.vehicles (
    vehicle_id integer NOT NULL,
    vehicle_plate character varying NOT NULL,
    color character varying NOT NULL,
    type character varying NOT NULL,
    space_available integer,
    model character varying,
    owner_id integer NOT NULL,
    soat_policy character varying NOT NULL,
    mechanical_condition_policy character varying NOT NULL,
    transit_license character varying NOT NULL,
    brand character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.vehicles;
       public         heap    postgres    false            �            1259    24601    vehicles_vehicle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicles_vehicle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vehicles_vehicle_id_seq;
       public          postgres    false    219            %           0    0    vehicles_vehicle_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vehicles_vehicle_id_seq OWNED BY public.vehicles.vehicle_id;
          public          postgres    false    218            u           2604    24596    rides ride_id    DEFAULT     n   ALTER TABLE ONLY public.rides ALTER COLUMN ride_id SET DEFAULT nextval('public.rides_ride_id_seq'::regclass);
 <   ALTER TABLE public.rides ALTER COLUMN ride_id DROP DEFAULT;
       public          postgres    false    217    216    217            t           2604    16415    test_users user_id    DEFAULT     r   ALTER TABLE ONLY public.test_users ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 A   ALTER TABLE public.test_users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    214    215            w           2604    24614    user_rides id_userRide    DEFAULT     �   ALTER TABLE ONLY public.user_rides ALTER COLUMN "id_userRide" SET DEFAULT nextval('public."user_rides_id_userRide_seq"'::regclass);
 G   ALTER TABLE public.user_rides ALTER COLUMN "id_userRide" DROP DEFAULT;
       public          postgres    false    221    220    221            v           2604    24605    vehicles vehicle_id    DEFAULT     z   ALTER TABLE ONLY public.vehicles ALTER COLUMN vehicle_id SET DEFAULT nextval('public.vehicles_vehicle_id_seq'::regclass);
 B   ALTER TABLE public.vehicles ALTER COLUMN vehicle_id DROP DEFAULT;
       public          postgres    false    219    218    219                      0    24593    rides 
   TABLE DATA           �   COPY public.rides (ride_id, creator_id, created_at, updated_at, deleted_at, pickup_location, destination, space_available, departure_date, charge, vehicle_id, ride_available, description) FROM stdin;
    public          postgres    false    217   k1                 0    16412 
   test_users 
   TABLE DATA           �   COPY public.test_users (user_id, user_name, password, user_status, country, dni_type, dni_number, email, last_login, phone_number, deleted, created_at, updated_at, deleted_at, driving_license, rol) FROM stdin;
    public          postgres    false    215   �7                 0    24611 
   user_rides 
   TABLE DATA           E   COPY public.user_rides ("id_userRide", user_id, ride_id) FROM stdin;
    public          postgres    false    221   �9                 0    24602    vehicles 
   TABLE DATA           �   COPY public.vehicles (vehicle_id, vehicle_plate, color, type, space_available, model, owner_id, soat_policy, mechanical_condition_policy, transit_license, brand, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    219   (:       &           0    0    rides_ride_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.rides_ride_id_seq', 87, true);
          public          postgres    false    216            '           0    0    user_rides_id_userRide_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."user_rides_id_userRide_seq"', 15, true);
          public          postgres    false    220            (           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 34, true);
          public          postgres    false    214            )           0    0    vehicles_vehicle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vehicles_vehicle_id_seq', 8, true);
          public          postgres    false    218            {           2606    24600    rides rides_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.rides
    ADD CONSTRAINT rides_pkey PRIMARY KEY (ride_id);
 :   ALTER TABLE ONLY public.rides DROP CONSTRAINT rides_pkey;
       public            postgres    false    217            y           2606    16417    test_users user_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.test_users
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.test_users DROP CONSTRAINT user_pkey;
       public            postgres    false    215                       2606    24616    user_rides user_rides_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_rides
    ADD CONSTRAINT user_rides_pkey PRIMARY KEY ("id_userRide");
 D   ALTER TABLE ONLY public.user_rides DROP CONSTRAINT user_rides_pkey;
       public            postgres    false    221            }           2606    24609    vehicles vehicles_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (vehicle_id);
 @   ALTER TABLE ONLY public.vehicles DROP CONSTRAINT vehicles_pkey;
       public            postgres    false    219            �           2606    24617    rides enlacerides_testusers    FK CONSTRAINT     �   ALTER TABLE ONLY public.rides
    ADD CONSTRAINT enlacerides_testusers FOREIGN KEY (creator_id) REFERENCES public.test_users(user_id);
 E   ALTER TABLE ONLY public.rides DROP CONSTRAINT enlacerides_testusers;
       public          postgres    false    217    215    3193            �           2606    24637    user_rides enlacerides_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_rides
    ADD CONSTRAINT enlacerides_users FOREIGN KEY (ride_id) REFERENCES public.rides(ride_id);
 F   ALTER TABLE ONLY public.user_rides DROP CONSTRAINT enlacerides_users;
       public          postgres    false    217    3195    221            �           2606    24622    rides enlacerides_vehicles    FK CONSTRAINT     �   ALTER TABLE ONLY public.rides
    ADD CONSTRAINT enlacerides_vehicles FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(vehicle_id);
 D   ALTER TABLE ONLY public.rides DROP CONSTRAINT enlacerides_vehicles;
       public          postgres    false    219    3197    217            �           2606    24632    user_rides enlaceusers_rides    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_rides
    ADD CONSTRAINT enlaceusers_rides FOREIGN KEY (user_id) REFERENCES public.test_users(user_id);
 F   ALTER TABLE ONLY public.user_rides DROP CONSTRAINT enlaceusers_rides;
       public          postgres    false    215    221    3193            �           2606    24627    vehicles enlacevehicles_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT enlacevehicles_users FOREIGN KEY (owner_id) REFERENCES public.test_users(user_id);
 G   ALTER TABLE ONLY public.vehicles DROP CONSTRAINT enlacevehicles_users;
       public          postgres    false    215    219    3193               2  x��XMs�F=S�������%��-n���|�HLK�,&����K�������g������XEa��F��9BP	���^����*߆c��!:�2syr)��'CD��e2�?l���&��X(+<��jb�oͩ�찪EFbʌ΄Z��V�LH�T��=����)�����6�Km�����kRk�`C���-P� l�Na_��[�h�M WH_(@Z�!��lNٗ&�}6����q���d&%�B�H��'W!�����j8��c�M�T�Rz ��tES��?e�K!,�1^h�Y��.��s$�^�mG�Sz�����x����ITM�ٞ���sT�vD����Fh4M��i����NM��p����F��Y�C�N�1�"�M��)�r�ຂ@(C����!f���ݞ�����ߐ t����5"z�V\�NF�NDi&��P��VX����L�F�������Q���뙦A�t�(�Zt/F4���A�qgn3�nq/��_'�y�?���F�cn���䜺,�ƯAWu��H)�(�N���	i	 � ���TO�'�K�rl	!"{pI'8;Aj�{g� &<K�?u��~��_,?	�,�1A�tҬA��P�î<2Y}MUw�~��ҍR�w�Li��f�&	kSF�=3�V�]���}��/�쫕�6�ϼn��=���2�8��W�s;bp`=a��J�r��5h���M���h���?&�f��N�>Íyk׺������s�s�
��unb����PB�,�}V�}�?����������C�j��`ya�/S&��PA0���������h��Z	�<i��\�_��j��1o�mU��Ȯ��h\I�F�SO'P�n���:Q?ibgM�uiA� W&�����B�{8�Ͷ>�Z$`��������=���/u~(���LÊqএs>�fbd���,��+�N�����m+97�_����><�_\[���XE��۪>��H��¸�Ÿ?���C�
�N�3��^���p��a�/������U��_ũ��C�}�^�]�u6�$��3�	�Y�Ec��{�-��U��_�.�%�@���Ƥ�?�tqH�)�P��cz�w��I.43.N��(�~�]S?�Ou���6��$&�g�-�=��+���
n���kP��_���.՝]hCm�g��Vf�ֆ��p�u�� �����dr��Q��@���6��!xl6��t|�@�k�õZ��g*���y!�~^�0�r(NN(r��IK��%��;��*����oġ���{e�O�H�[J����Ѩ6����Y��J�A��,��e�9����z}ƾL���f���z��2��>/�r���2�~��q|�2"5Vk�O���Sh�N�z���n4����)�#�X��X5�\tB���U���޸W���Վ+և���T�ۄkc�_�zu��q�
�س��dڈ�V����a�)'��bQ�bXuW�A�	��wR ���N�"M+�b�<�m: �	)��>*��ֻ5d�p�TN�v�jH�W��pg�Ku���NN��MH���a�5Ϟ+ý�l6� ��;X           x����n�@���S�@{�=p��m�Tjd��i��u�-$��}�� ��@Bf~v?�.��4��X|j����C��÷�g(QG�U�a�4|�� ��C:��E\FR�J[�8 *D���FJo/ �8���}"4�J�y��j��薥�yx}�m�+���$�����H�H���_4۶�S#�����p����������i�_S�f3��+ɌC	�29ǥ_?�2����Dԛ�\55�[Ƹ)��Ơck'7R"kШ-<n�t�����|����R�
���o*�S."�%c!SF�j�ڸvS���
1/s6B�<���3�H�W�^4����<hÈ��h)��q��q��H�x��5P2�W�Ɂ�4*������g������k�	�PT�A&m+Z�$b^����)U�zچI�볍��?T��_�|J��n__oT�^;�R�>UFLD̄�ѧ@�� �����.��:k#P��x������2i�hSY�\�O���H�����cwl	�F�� ��)ݡ����H��ZD�i��H�O{'��_����         @   x����0C�3������t�9
H��v�]!�D&u�d�]7i�
{N=���^�eJ��         �  x��R�j�0|�|E~@fw��l��i����	i{��4v.�S5)�}�����rH�Ƴ����rYqU�a^�9հ]���		��)yo^�?��������jbav57�6M�5�9`D@H�b(�¢�Y��j��ޘ�2�5(�h�T�P
g(m�T������s��)�ۡ�)��0���D�'���[�]sz��)q)E)�	������u5HX5�/4��iXĴ�z�jm���T�"l���6�=[��C۶$Æ�Z}�����)I)T��	��������+���:�O�����OE���g�s�${I{u�[����+jV.I|�X�6(bs7)>ď�N�X�C�]��	D�jC�/��������F�f���eR�l2�����|     