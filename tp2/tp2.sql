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
-- Name: cheval; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.cheval (
    numid integer NOT NULL,
    nom character(25) NOT NULL,
    sexe character(1) NOT NULL,
    daten date,
    pere integer,
    CONSTRAINT sexe CHECK (((sexe = 'M'::bpchar) OR (sexe = 'F'::bpchar)))
);


ALTER TABLE public.cheval OWNER TO jnoel;

--
-- Name: courrir; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.courrir (
    codec character(6) NOT NULL,
    numch integer NOT NULL,
    numj integer NOT NULL,
    dossard integer NOT NULL
);


ALTER TABLE public.courrir OWNER TO jnoel;

--
-- Name: course; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.course (
    code character(6) NOT NULL,
    nom character(50) NOT NULL,
    dotation integer
);


ALTER TABLE public.course OWNER TO jnoel;

--
-- Name: jockey; Type: TABLE; Schema: public; Owner: jnoel
--

CREATE TABLE public.jockey (
    numl integer NOT NULL,
    nom character(25) NOT NULL,
    prenom character(25) NOT NULL
);


ALTER TABLE public.jockey OWNER TO jnoel;

--
-- Data for Name: cheval; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.cheval (numid, nom, sexe, daten, pere) FROM stdin;
1	Prince Royal             	M	\N	\N
2	Patachon                 	M	1999-02-17	\N
4	Carote                   	M	1999-02-17	\N
3	Molvedo                  	M	\N	\N
\.


--
-- Data for Name: courrir; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.courrir (codec, numch, numj, dossard) FROM stdin;
GPAT02	1	1	1
\.


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.course (code, nom, dotation) FROM stdin;
GPAT02	Grand Prix de lArc de Triomphe                    	5000000
\.


--
-- Data for Name: jockey; Type: TABLE DATA; Schema: public; Owner: jnoel
--

COPY public.jockey (numl, nom, prenom) FROM stdin;
1	Poinceleta               	Roger                    
2	Camici                   	Enrico                   
3	Dupont                   	Henry                    
\.


--
-- Name: cheval cheval_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.cheval
    ADD CONSTRAINT cheval_pkey PRIMARY KEY (numid);


--
-- Name: courrir courrir_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.courrir
    ADD CONSTRAINT courrir_pkey PRIMARY KEY (codec, numch, numj, dossard);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (code);


--
-- Name: jockey jockey_pkey; Type: CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.jockey
    ADD CONSTRAINT jockey_pkey PRIMARY KEY (numl);


--
-- Name: cheval cheval_pere_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.cheval
    ADD CONSTRAINT cheval_pere_fkey FOREIGN KEY (pere) REFERENCES public.cheval(numid) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: courrir courrir_codec_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.courrir
    ADD CONSTRAINT courrir_codec_fkey FOREIGN KEY (codec) REFERENCES public.course(code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: courrir courrir_numch_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.courrir
    ADD CONSTRAINT courrir_numch_fkey FOREIGN KEY (numch) REFERENCES public.cheval(numid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: courrir courrir_numj_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jnoel
--

ALTER TABLE ONLY public.courrir
    ADD CONSTRAINT courrir_numj_fkey FOREIGN KEY (numj) REFERENCES public.jockey(numl) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

