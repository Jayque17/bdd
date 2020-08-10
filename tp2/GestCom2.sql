--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: c_client; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.c_client (
    ncli character(8) NOT NULL,
    nom character(18) NOT NULL,
    adresse character(24) NOT NULL,
    localite character(20) NOT NULL,
    compte numeric(8,2) NOT NULL
);


ALTER TABLE public.c_client OWNER TO jnoel;

--
-- Name: c_commande; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.c_commande (
    ncom character(8) NOT NULL,
    ncli character(8) NOT NULL,
    datecom date NOT NULL
);


ALTER TABLE public.c_commande OWNER TO jnoel;

--
-- Name: c_detail; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.c_detail (
    ncom character(8) NOT NULL,
    npro character(10) NOT NULL,
    qcom numeric(8,0) NOT NULL
);


ALTER TABLE public.c_detail OWNER TO jnoel;

--
-- Name: c_produit; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.c_produit (
    npro character(10) NOT NULL,
    libelle character(30) NOT NULL,
    prix numeric(5,0) NOT NULL,
    qstock numeric(6,0) NOT NULL
);


ALTER TABLE public.c_produit OWNER TO jnoel;

--
-- Data for Name: c_client; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.c_client (ncli, nom, adresse, localite, compte) FROM stdin;
b112    	HANSENNE          	23 A. DUMONT            	POITIERS            	1250.00
C123    	MERCIER           	25 RUE LEMAITRE         	NAMUR               	-2300.00
B332    	MONTI             	112 RUE NEUVE           	GENEVE              	0.00
F010    	TOUSSAINT         	5 RUE GODEFROID         	POITIERS            	0.00
K111    	VANBIST           	180 RUE FLORIMONT       	LILLE               	720.00
S127    	VANDERKA          	3 AV. DES ROSES         	NAMUR               	-4580.00
B512    	GILLET            	14 RUE DE L'ETE         	TOULOUSE            	-8700.00
B062    	GOFFIN            	72 RUE DE LA GARE       	NAMUR               	-3200.00
C400    	FERARD            	65 RUE. DU TERTRE       	POITIERS            	350.00
C003    	AVRON             	8 CHEMIN DE LA CURE     	TOULOUSE            	-1700.00
K729    	NEUMAN            	40 RUE BRANSART         	TOULOUSE            	0.00
F011    	PONCELET          	17 CLOS DES ERABLES     	TOULOUSE            	0.00
L422    	FRANCK            	60 RUE DE WEPION        	NAMUR               	0.00
S712    	GUILLAUME         	14A CHEMIN DES ROSES    	PARIS               	0.00
D063    	MERCIER           	201 BD DU NORD          	TOULOUSE            	-2250.00
F400    	JACOB             	78 CHEMIN DU MOULIN     	BRUXELLES           	0.00
B4321   	MUNSTER           	23 A.CAMENBERT          	Sancy               	1250.00
\.


--
-- Data for Name: c_commande; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.c_commande (ncom, ncli, datecom) FROM stdin;
30178   	K111    	2003-12-21
30179   	C400    	2003-12-22
30182   	S127    	2003-12-23
30184   	C400    	2003-12-23
30185   	F011    	2004-01-02
30186   	C400    	2004-01-02
30188   	B512    	2004-01-03
\.


--
-- Data for Name: c_detail; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.c_detail (ncom, npro, qcom) FROM stdin;
30178   	CS464     	25
30179   	PA60      	20
30179   	CS262     	60
30182   	PA60      	30
30184   	CS464     	120
30184   	PA45      	20
30185   	PA60      	15
30185   	PS222     	600
30185   	CS464     	260
30186   	CS464     	3
30188   	PA60      	70
30188   	PH222     	92
30188   	CS464     	180
30188   	PA45      	22
\.


--
-- Data for Name: c_produit; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.c_produit (npro, libelle, prix, qstock) FROM stdin;
CS262     	CHEV. SAPIN 200x6x2           	75	45
CS264     	CHEV. SAPIN 200x6x4           	120	2690
CS464     	CHEV. SAPIN 400x6x4           	220	450
PA45      	POINTE ACIER 45               	105	580
PA60      	POINTE ACIER 60               	95	134
PH222     	PL. HETRE 200x20x2            	230	782
PS222     	PL. SAPIN 200x20x2            	185	1220
PA75      	POINTE ACIER 75               	80	40
\.


--
-- Name: c_client c_client_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_client
    ADD CONSTRAINT c_client_pkey PRIMARY KEY (ncli);


--
-- Name: c_commande c_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_commande
    ADD CONSTRAINT c_commande_pkey PRIMARY KEY (ncom);


--
-- Name: c_detail c_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_detail
    ADD CONSTRAINT c_detail_pkey PRIMARY KEY (ncom, npro);


--
-- Name: c_produit c_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_produit
    ADD CONSTRAINT c_produit_pkey PRIMARY KEY (npro);


--
-- Name: c_commande commande_ref_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_commande
    ADD CONSTRAINT commande_ref_client_fkey FOREIGN KEY (ncli) REFERENCES public.c_client(ncli);


--
-- Name: c_detail detail_ref_commande_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_detail
    ADD CONSTRAINT detail_ref_commande_fkey FOREIGN KEY (ncom) REFERENCES public.c_commande(ncom);


--
-- Name: c_detail detail_ref_produit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.c_detail
    ADD CONSTRAINT detail_ref_produit_fkey FOREIGN KEY (npro) REFERENCES public.c_produit(npro);


--
-- PostgreSQL database dump complete
--

