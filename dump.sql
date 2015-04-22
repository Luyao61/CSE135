--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE account (
    name character varying(20) NOT NULL,
    role character(20) NOT NULL,
    age integer NOT NULL,
    state character(20) NOT NULL
);


ALTER TABLE account OWNER TO postgres;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categories (
    name character(20) NOT NULL,
    description character(200),
    owner character varying(20)
);


ALTER TABLE categories OWNER TO postgres;

--
-- Name: signup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE signup (
    name character(20),
    role character(20),
    age integer,
    state character(20) NOT NULL
);


ALTER TABLE signup OWNER TO postgres;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO account VALUES ('z', 'O                   ', 20, 'C                   ');
INSERT INTO account VALUES ('zhou', 'Owner               ', 12, 'AL                  ');
INSERT INTO account VALUES ('q', 'Owner               ', 12, 'AL                  ');
INSERT INTO account VALUES ('zhang', 'Owner               ', 1, 'CA                  ');


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categories VALUES ('b                   ', 'sadas                                                                                                                                                                                                   ', 'zhang');
INSERT INTO categories VALUES ('nnn                 ', 'kkkk                                                                                                                                                                                                    ', 'zhou');
INSERT INTO categories VALUES ('bbbb                ', 'hfddjk                                                                                                                                                                                                  ', 'zhou');
INSERT INTO categories VALUES ('a                   ', 'a                                                                                                                                                                                                       ', 'zhang');
INSERT INTO categories VALUES ('c                   ', 'c                                                                                                                                                                                                       ', 'zhang');
INSERT INTO categories VALUES ('d                   ', 'd                                                                                                                                                                                                       ', 'zhang');
INSERT INTO categories VALUES ('e                   ', 'e                                                                                                                                                                                                       ', 'zhang');
INSERT INTO categories VALUES ('f                   ', 'f                                                                                                                                                                                                       ', 'zhang');
INSERT INTO categories VALUES ('g                   ', 'g                                                                                                                                                                                                       ', 'zhang');


--
-- Data for Name: signup; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey PRIMARY KEY (name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (name);


--
-- Name: signup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY signup
    ADD CONSTRAINT signup_pkey PRIMARY KEY (state);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
