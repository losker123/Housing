PGDMP         ;                {            hospitality    15.3    15.3 S    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16924    hospitality    DATABASE        CREATE DATABASE hospitality WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE hospitality;
                postgres    false            �            1259    16938 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16937    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    217            j           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    216            �            1259    16978    coordinates    TABLE     ,  CREATE TABLE public.coordinates (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    lat double precision NOT NULL,
    lng double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "housingId" integer
);
    DROP TABLE public.coordinates;
       public         heap    postgres    false            �            1259    16977    coordinates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coordinates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.coordinates_id_seq;
       public          postgres    false    223            k           0    0    coordinates_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.coordinates_id_seq OWNED BY public.coordinates.id;
          public          postgres    false    222            �            1259    16990    grades    TABLE     �   CREATE TABLE public.grades (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "housingId" integer
);
    DROP TABLE public.grades;
       public         heap    postgres    false            �            1259    16989    grades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grades_id_seq;
       public          postgres    false    225            l           0    0    grades_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;
          public          postgres    false    224            �            1259    16947    housings    TABLE     Z  CREATE TABLE public.housings (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    img character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "categoryId" integer
);
    DROP TABLE public.housings;
       public         heap    postgres    false            �            1259    16946    housings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.housings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.housings_id_seq;
       public          postgres    false    219            m           0    0    housings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.housings_id_seq OWNED BY public.housings.id;
          public          postgres    false    218            �            1259    16961    owners    TABLE     �   CREATE TABLE public.owners (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "housingId" integer,
    "userId" integer
);
    DROP TABLE public.owners;
       public         heap    postgres    false            �            1259    16960    owners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.owners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.owners_id_seq;
       public          postgres    false    221            n           0    0    owners_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.owners_id_seq OWNED BY public.owners.id;
          public          postgres    false    220            �            1259    17002    rentals    TABLE     D  CREATE TABLE public.rentals (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "housingId" integer NOT NULL,
    "startDate" timestamp with time zone NOT NULL,
    "endDate" timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.rentals;
       public         heap    postgres    false            �            1259    17001    rentals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rentals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rentals_id_seq;
       public          postgres    false    227            o           0    0    rentals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rentals_id_seq OWNED BY public.rentals.id;
          public          postgres    false    226            �            1259    17019    reviews    TABLE     !  CREATE TABLE public.reviews (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "housingId" integer NOT NULL,
    rating integer NOT NULL,
    comment character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.reviews;
       public         heap    postgres    false            �            1259    17018    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    229            p           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    228            �            1259    16926    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16925    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            q           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    16941    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16981    coordinates id    DEFAULT     p   ALTER TABLE ONLY public.coordinates ALTER COLUMN id SET DEFAULT nextval('public.coordinates_id_seq'::regclass);
 =   ALTER TABLE public.coordinates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16993 	   grades id    DEFAULT     f   ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);
 8   ALTER TABLE public.grades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16950    housings id    DEFAULT     j   ALTER TABLE ONLY public.housings ALTER COLUMN id SET DEFAULT nextval('public.housings_id_seq'::regclass);
 :   ALTER TABLE public.housings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16964 	   owners id    DEFAULT     f   ALTER TABLE ONLY public.owners ALTER COLUMN id SET DEFAULT nextval('public.owners_id_seq'::regclass);
 8   ALTER TABLE public.owners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17005 
   rentals id    DEFAULT     h   ALTER TABLE ONLY public.rentals ALTER COLUMN id SET DEFAULT nextval('public.rentals_id_seq'::regclass);
 9   ALTER TABLE public.rentals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17022 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16929    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            W          0    16938 
   categories 
   TABLE DATA           H   COPY public.categories (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �b       ]          0    16978    coordinates 
   TABLE DATA           `   COPY public.coordinates (id, name, lat, lng, "createdAt", "updatedAt", "housingId") FROM stdin;
    public          postgres    false    223   d       _          0    16990    grades 
   TABLE DATA           Q   COPY public.grades (id, rate, "createdAt", "updatedAt", "housingId") FROM stdin;
    public          postgres    false    225   �f       Y          0    16947    housings 
   TABLE DATA           m   COPY public.housings (id, name, price, img, description, "createdAt", "updatedAt", "categoryId") FROM stdin;
    public          postgres    false    219   �f       [          0    16961    owners 
   TABLE DATA           U   COPY public.owners (id, "createdAt", "updatedAt", "housingId", "userId") FROM stdin;
    public          postgres    false    221   �j       a          0    17002    rentals 
   TABLE DATA           n   COPY public.rentals (id, "userId", "housingId", "startDate", "endDate", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   -k       c          0    17019    reviews 
   TABLE DATA           g   COPY public.reviews (id, "userId", "housingId", rating, comment, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   yk       U          0    16926    users 
   TABLE DATA           T   COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �k       r           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 7, true);
          public          postgres    false    216            s           0    0    coordinates_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.coordinates_id_seq', 10, true);
          public          postgres    false    222            t           0    0    grades_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.grades_id_seq', 1, false);
          public          postgres    false    224            u           0    0    housings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.housings_id_seq', 10, true);
          public          postgres    false    218            v           0    0    owners_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.owners_id_seq', 10, true);
          public          postgres    false    220            w           0    0    rentals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rentals_id_seq', 1, true);
          public          postgres    false    226            x           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 6, true);
          public          postgres    false    228            y           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    214            �           2606    17392    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key;
       public            postgres    false    217            �           2606    17394    categories categories_name_key1 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key1 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key1;
       public            postgres    false    217            �           2606    17396    categories categories_name_key2 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key2 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key2;
       public            postgres    false    217            �           2606    17398    categories categories_name_key3 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key3 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key3;
       public            postgres    false    217            �           2606    17400    categories categories_name_key4 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key4 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key4;
       public            postgres    false    217            �           2606    17402    categories categories_name_key5 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key5 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key5;
       public            postgres    false    217            �           2606    17404    categories categories_name_key6 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key6 UNIQUE (name);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key6;
       public            postgres    false    217            �           2606    16943    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    217            �           2606    16983    coordinates coordinates_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT coordinates_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.coordinates DROP CONSTRAINT coordinates_pkey;
       public            postgres    false    223            �           2606    16995    grades grades_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_pkey;
       public            postgres    false    225            �           2606    16954    housings housings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.housings
    ADD CONSTRAINT housings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.housings DROP CONSTRAINT housings_pkey;
       public            postgres    false    219            �           2606    16966    owners owners_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.owners DROP CONSTRAINT owners_pkey;
       public            postgres    false    221            �           2606    17007    rentals rentals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_pkey;
       public            postgres    false    227            �           2606    17024    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    229            �           2606    17374    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    17376    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public            postgres    false    215            �           2606    17378    users users_email_key2 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key2;
       public            postgres    false    215            �           2606    17380    users users_email_key3 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key3;
       public            postgres    false    215            �           2606    17382    users users_email_key4 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key4;
       public            postgres    false    215            �           2606    17384    users users_email_key5 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key5;
       public            postgres    false    215            �           2606    17386    users users_email_key6 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key6;
       public            postgres    false    215            �           2606    16934    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    17420 &   coordinates coordinates_housingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT "coordinates_housingId_fkey" FOREIGN KEY ("housingId") REFERENCES public.housings(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.coordinates DROP CONSTRAINT "coordinates_housingId_fkey";
       public          postgres    false    3250    219    223            �           2606    17425    grades grades_housingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT "grades_housingId_fkey" FOREIGN KEY ("housingId") REFERENCES public.housings(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.grades DROP CONSTRAINT "grades_housingId_fkey";
       public          postgres    false    225    3250    219            �           2606    17405 !   housings housings_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.housings
    ADD CONSTRAINT "housings_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.housings DROP CONSTRAINT "housings_categoryId_fkey";
       public          postgres    false    3248    219    217            �           2606    17410    owners owners_housingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.owners
    ADD CONSTRAINT "owners_housingId_fkey" FOREIGN KEY ("housingId") REFERENCES public.housings(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.owners DROP CONSTRAINT "owners_housingId_fkey";
       public          postgres    false    3250    219    221            �           2606    17415    owners owners_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.owners
    ADD CONSTRAINT "owners_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.owners DROP CONSTRAINT "owners_userId_fkey";
       public          postgres    false    215    3232    221            �           2606    17435    rentals rentals_housingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT "rentals_housingId_fkey" FOREIGN KEY ("housingId") REFERENCES public.housings(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.rentals DROP CONSTRAINT "rentals_housingId_fkey";
       public          postgres    false    219    227    3250            �           2606    17430    rentals rentals_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT "rentals_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.rentals DROP CONSTRAINT "rentals_userId_fkey";
       public          postgres    false    227    215    3232            �           2606    17445    reviews reviews_housingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_housingId_fkey" FOREIGN KEY ("housingId") REFERENCES public.housings(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.reviews DROP CONSTRAINT "reviews_housingId_fkey";
       public          postgres    false    219    229    3250            �           2606    17440    reviews reviews_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.reviews DROP CONSTRAINT "reviews_userId_fkey";
       public          postgres    false    215    3232    229            W     x�}�KN�0���)�G��H�4g�0},@�Ć�p �P�0I�^a|#�QU��l�2�?�[�gTh�=각Ox9�
��������ں���L�.L^���n��G�N��6����f%ꄇ��UB�Z�Sg�*���Q���+���~_�OK�2k7�8J2x��-���R:|�����ǉ�����,�*KW��Q�K���^�XC��߲oh����_�������B�+�7�8R���,��!ˁ���%AI�#��^<�U�s,u�0�2v.�$o�����4      ]   {  x��TKj�@]K��>��������0�,L��	ā@6��8�?3�B���Zc�%6d�Ht������M����./�q9-�r~��/y��u�+�yuЕS���./����e�oa���u^5���$xg)h �8���Ĝ��6B�Y�w/���տ!�t����|�sӕ��7�60���l,F��b;_�����*����b�M�v\ř#�Zt�bU�H���6:���@�7Jq#�<���A�{��K�����qcj4%��8�٘a�v�4�s��яO�O p�f��fF���a
��"�@�̍�1�i�H[?^`ª��Ĕ����X�4͝�A�'�=�C���Gڠl����_�V�XY��y�p��l�r�6ѐ�L�F���1QL(74�\�ã}
�T�
ml�T��ź\��7��-���b9j���q}WxY�`w��('��5�KP�N#��
��*؞3rIi{�>�b�^8�>WV��&V ��&��&"ʻ���4��M$yvq�Eݠ�#�OiN���Ki¨���X˃��H0�G�0�`ƺ��RD�0b릁����u�	N�#��&ޘ$L�0at�w�0_�d������^�C`Էm����k      _      x������ � �      Y   �  x��UɎ7=���s��`��^�[rQ/
�S>A��1�q_r1��=�����U�RdYqr4#�IV��-�I`^��l��Y�����ꢨ��.D�(%���<K��K=��֪�����;;���<�;;1Ofnv���Ch�g?�1��������i��=���-B��u���=���â��f�>����hv��l�k,�玮��HK�Qh޸��o�_�R�;,�vl������[r}[B��~�M!��C�;��|��c�:�f��`D��%Z�.�-�B� �@u��v�p��R/��J�X	����Q�F���ү���V��5#`g��#�EP��Ú�-�@�U5��"-��<IB˸�E>U�2/dR��շLV�Ş��L�%����eB����1�t����!3D�l �gyKl1�!����K�s�NK����D����,C�@���
�����K==s�m��3W�1��;*q%���H�E�ld7I:�B��֠��/�� ���I����@�J��F�RUÁ(��KT-�M5uV�MZfqU�%V8�\Q��uh��ƛ`�����C���j�8�í+�z(����w�z���49��L�c��W���}��*�^i�{���9����I�ų:��ʦ�#���o���K�L^��-���тM՚�45B�M?�V$�_H#,�y����:�J�F�<�E���(�*��Gq��I�eG�9�{�;́t�{E��2�΄�8=�8_�L}2 �����ȇhp��ׁ����r�"[�ڔ��]���Ǚ}�N�9�����	p���_T��"����}�5����Zj��qfrݿ��X�Od$�D��1N~��;b@]�R縬��R$9��Q,�J��nJVN ���2�.�9_�d��*��Y]+ύTze$_�p��9=��ڣ׸�B�Hce8�O�s%�qo���NS܂/R������d��i�K7D�3��ѩ��s�>�Jz�D�^�#� $      [   g   x�}˻�0EњLA����{���!��^w�у��&��N�`	6 ��/�A�·ʀ�6vL5�M�)t��~��m�A�}c�����J�����z�J)/'7      a   <   x�3�4�4�4202�54�52S00�#mc���!Va�jC#+SK+#K=3C�R\1z\\\ X+      c   O   x�3�4�4�4�L)NLI,��FFƺ�F�Ff
�FV��V��z�&��x��̐�A3�������X����=... w��      U   �   x�}�Mo�0��s�)<p3v�߶
�� $�C�iL2�0�t~z�˶d���yҧ4����g�\�� �2`cPa���5�O�7ی�;h��$���-��G�p��,��ŷؗ�&_�F����-ֳ�i	Nz\�i�.�����]�nlڎv�~P��q��<Wt�F�N�y��z��<�!�:_ J�v�ݒ-F-�-&� �c���? �J�     