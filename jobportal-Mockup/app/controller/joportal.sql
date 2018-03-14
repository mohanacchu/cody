--
-- PostgreSQL database dump
--

-- Dumped from database version 9.0.23
-- Dumped by pg_dump version 9.0.23
-- Started on 2017-05-18 14:35:01

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 7 (class 2615 OID 16393)
-- Name: person; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA person;


ALTER SCHEMA person OWNER TO postgres;

--
-- TOC entry 598 (class 2612 OID 11574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 155 (class 1259 OID 33149)
-- Dependencies: 5
-- Name: admn_admnid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admn_admnid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admn_admnid_seq1 OWNER TO postgres;

--
-- TOC entry 2092 (class 0 OID 0)
-- Dependencies: 155
-- Name: admn_admnid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admn_admnid_seq1', 7, true);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 191 (class 1259 OID 33593)
-- Dependencies: 1955 5
-- Name: admn; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admn (
    fname character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    pass character varying(50) NOT NULL,
    cpass character varying(50) NOT NULL,
    admnid integer DEFAULT nextval('admn_admnid_seq1'::regclass) NOT NULL,
    mobile character varying(50)
);


ALTER TABLE public.admn OWNER TO postgres;

--
-- TOC entry 154 (class 1259 OID 25045)
-- Dependencies: 5
-- Name: appliedjob_appliedjobid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE appliedjob_appliedjobid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appliedjob_appliedjobid_seq1 OWNER TO postgres;

--
-- TOC entry 2093 (class 0 OID 0)
-- Dependencies: 154
-- Name: appliedjob_appliedjobid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('appliedjob_appliedjobid_seq1', 1, false);


--
-- TOC entry 180 (class 1259 OID 33421)
-- Dependencies: 5
-- Name: applyjob_applyjobid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE applyjob_applyjobid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applyjob_applyjobid_seq1 OWNER TO postgres;

--
-- TOC entry 2094 (class 0 OID 0)
-- Dependencies: 180
-- Name: applyjob_applyjobid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('applyjob_applyjobid_seq1', 43, true);


--
-- TOC entry 190 (class 1259 OID 33542)
-- Dependencies: 1954 5
-- Name: applyjob; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE applyjob (
    jobid integer NOT NULL,
    candid integer NOT NULL,
    applyjobid integer DEFAULT nextval('applyjob_applyjobid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.applyjob OWNER TO postgres;

--
-- TOC entry 150 (class 1259 OID 16812)
-- Dependencies: 5
-- Name: branch_branchid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE branch_branchid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branch_branchid_seq1 OWNER TO postgres;

--
-- TOC entry 2095 (class 0 OID 0)
-- Dependencies: 150
-- Name: branch_branchid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branch_branchid_seq1', 9, true);


--
-- TOC entry 151 (class 1259 OID 16814)
-- Dependencies: 1935 5
-- Name: branch; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE branch (
    branches character varying(50) NOT NULL,
    branchid integer DEFAULT nextval('branch_branchid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.branch OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 33516)
-- Dependencies: 5
-- Name: closed_closedid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE closed_closedid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.closed_closedid_seq1 OWNER TO postgres;

--
-- TOC entry 2096 (class 0 OID 0)
-- Dependencies: 188
-- Name: closed_closedid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('closed_closedid_seq1', 20, true);


--
-- TOC entry 189 (class 1259 OID 33518)
-- Dependencies: 1953 5
-- Name: closed; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE closed (
    empid integer NOT NULL,
    candid integer NOT NULL,
    closedid integer DEFAULT nextval('closed_closedid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.closed OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 33498)
-- Dependencies: 5
-- Name: contact_contactid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_contactid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contactid_seq1 OWNER TO postgres;

--
-- TOC entry 2097 (class 0 OID 0)
-- Dependencies: 186
-- Name: contact_contactid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_contactid_seq1', 14, true);


--
-- TOC entry 187 (class 1259 OID 33500)
-- Dependencies: 1952 5
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact (
    empid integer NOT NULL,
    candid integer NOT NULL,
    contactid integer DEFAULT nextval('contact_contactid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- TOC entry 143 (class 1259 OID 16725)
-- Dependencies: 5
-- Name: domine_domineid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE domine_domineid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domine_domineid_seq1 OWNER TO postgres;

--
-- TOC entry 2098 (class 0 OID 0)
-- Dependencies: 143
-- Name: domine_domineid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('domine_domineid_seq1', 17, true);


--
-- TOC entry 148 (class 1259 OID 16786)
-- Dependencies: 1933 5
-- Name: domine; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE domine (
    domains character varying(50) NOT NULL,
    domineid integer DEFAULT nextval('domine_domineid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.domine OWNER TO postgres;

--
-- TOC entry 165 (class 1259 OID 33269)
-- Dependencies: 5
-- Name: empprofile_empprofileid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empprofile_empprofileid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empprofile_empprofileid_seq1 OWNER TO postgres;

--
-- TOC entry 2099 (class 0 OID 0)
-- Dependencies: 165
-- Name: empprofile_empprofileid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empprofile_empprofileid_seq1', 65, true);


--
-- TOC entry 166 (class 1259 OID 33271)
-- Dependencies: 1941 5
-- Name: empprofile; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empprofile (
    empname character varying(32) NOT NULL,
    adress character varying(300) NOT NULL,
    email character varying(32) NOT NULL,
    mobile character varying(25) NOT NULL,
    state character varying(30) NOT NULL,
    city character varying(15) NOT NULL,
    zip character varying(10) NOT NULL,
    pass character varying(30) NOT NULL,
    cpass character varying(30) NOT NULL,
    empprofileid integer DEFAULT nextval('empprofile_empprofileid_seq1'::regclass) NOT NULL,
    date_time character varying(30)
);


ALTER TABLE public.empprofile OWNER TO postgres;

--
-- TOC entry 157 (class 1259 OID 33196)
-- Dependencies: 5
-- Name: etc_etcid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE etc_etcid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etc_etcid_seq1 OWNER TO postgres;

--
-- TOC entry 2100 (class 0 OID 0)
-- Dependencies: 157
-- Name: etc_etcid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('etc_etcid_seq1', 4, true);


--
-- TOC entry 158 (class 1259 OID 33198)
-- Dependencies: 1937 5
-- Name: etc; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE etc (
    fname character varying(32) NOT NULL,
    etcid integer DEFAULT nextval('etc_etcid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.etc OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 33384)
-- Dependencies: 5
-- Name: gender_genderid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gender_genderid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gender_genderid_seq1 OWNER TO postgres;

--
-- TOC entry 2101 (class 0 OID 0)
-- Dependencies: 174
-- Name: gender_genderid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gender_genderid_seq1', 3, true);


--
-- TOC entry 175 (class 1259 OID 33386)
-- Dependencies: 1946 5
-- Name: gender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gender (
    gender character varying(32) NOT NULL,
    genderid integer DEFAULT nextval('gender_genderid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.gender OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 33410)
-- Dependencies: 5
-- Name: image_imageid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE image_imageid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_imageid_seq1 OWNER TO postgres;

--
-- TOC entry 2102 (class 0 OID 0)
-- Dependencies: 178
-- Name: image_imageid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('image_imageid_seq1', 70, true);


--
-- TOC entry 179 (class 1259 OID 33412)
-- Dependencies: 1948 5
-- Name: image; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE image (
    imageid integer DEFAULT nextval('image_imageid_seq1'::regclass) NOT NULL,
    image character varying(100)
);


ALTER TABLE public.image OWNER TO postgres;

--
-- TOC entry 152 (class 1259 OID 24967)
-- Dependencies: 5
-- Name: jobpost_jobpostid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jobpost_jobpostid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobpost_jobpostid_seq1 OWNER TO postgres;

--
-- TOC entry 2103 (class 0 OID 0)
-- Dependencies: 152
-- Name: jobpost_jobpostid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jobpost_jobpostid_seq1', 129, true);


--
-- TOC entry 171 (class 1259 OID 33313)
-- Dependencies: 1944 5
-- Name: jobpost; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE jobpost (
    jobpostid integer DEFAULT nextval('jobpost_jobpostid_seq1'::regclass) NOT NULL,
    comp character varying(32) NOT NULL,
    posi character varying(32) NOT NULL,
    skills character varying(100) NOT NULL,
    domine character varying(100) NOT NULL,
    loc character varying(30) NOT NULL,
    exp character varying(20) NOT NULL,
    packag character varying(20) NOT NULL,
    qualifi character varying(30),
    empid integer NOT NULL,
    date_time character varying(32)
);


ALTER TABLE public.jobpost OWNER TO postgres;

--
-- TOC entry 164 (class 1259 OID 33258)
-- Dependencies: 5
-- Name: jobpost1_jobpost1id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jobpost1_jobpost1id_seq1
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobpost1_jobpost1id_seq1 OWNER TO postgres;

--
-- TOC entry 2104 (class 0 OID 0)
-- Dependencies: 164
-- Name: jobpost1_jobpost1id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jobpost1_jobpost1id_seq1', 10, false);


--
-- TOC entry 160 (class 1259 OID 33224)
-- Dependencies: 5
-- Name: loc_locid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE loc_locid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loc_locid_seq1 OWNER TO postgres;

--
-- TOC entry 2105 (class 0 OID 0)
-- Dependencies: 160
-- Name: loc_locid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('loc_locid_seq1', 22, true);


--
-- TOC entry 161 (class 1259 OID 33226)
-- Dependencies: 1939 5
-- Name: loc; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE loc (
    locations character varying(50) NOT NULL,
    locid integer DEFAULT nextval('loc_locid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.loc OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 33352)
-- Dependencies: 5
-- Name: myprofile_myprofileid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE myprofile_myprofileid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.myprofile_myprofileid_seq1 OWNER TO postgres;

--
-- TOC entry 2106 (class 0 OID 0)
-- Dependencies: 172
-- Name: myprofile_myprofileid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('myprofile_myprofileid_seq1', 112, true);


--
-- TOC entry 173 (class 1259 OID 33354)
-- Dependencies: 1945 5
-- Name: myprofile; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE myprofile (
    myprofileid integer DEFAULT nextval('myprofile_myprofileid_seq1'::regclass) NOT NULL,
    fullname character varying(32) NOT NULL,
    gender character varying(20) NOT NULL,
    email character varying(32) NOT NULL,
    mobile character varying(15) NOT NULL,
    graduation character varying(30) NOT NULL,
    exp character varying(30) NOT NULL,
    currlocation character varying(25) NOT NULL,
    preflocation character varying(25) NOT NULL,
    primskills character varying(50) NOT NULL,
    secondkills character varying(50) NOT NULL,
    status character varying(25) NOT NULL,
    resume character varying(1000),
    image character varying(1000)
);


ALTER TABLE public.myprofile OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 25007)
-- Dependencies: 5
-- Name: notice_noticeid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE notice_noticeid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice_noticeid_seq1 OWNER TO postgres;

--
-- TOC entry 2107 (class 0 OID 0)
-- Dependencies: 153
-- Name: notice_noticeid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('notice_noticeid_seq1', 51, true);


--
-- TOC entry 183 (class 1259 OID 33457)
-- Dependencies: 1950 5
-- Name: notice; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE notice (
    empid integer NOT NULL,
    candid integer NOT NULL,
    noticeid integer DEFAULT nextval('notice_noticeid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.notice OWNER TO postgres;

--
-- TOC entry 162 (class 1259 OID 33239)
-- Dependencies: 5
-- Name: qualif_qualifid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE qualif_qualifid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.qualif_qualifid_seq1 OWNER TO postgres;

--
-- TOC entry 2108 (class 0 OID 0)
-- Dependencies: 162
-- Name: qualif_qualifid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('qualif_qualifid_seq1', 10, true);


--
-- TOC entry 163 (class 1259 OID 33242)
-- Dependencies: 1940 5
-- Name: qualif; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE qualif (
    types character varying(50) NOT NULL,
    qualifid integer DEFAULT nextval('qualif_qualifid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.qualif OWNER TO postgres;

--
-- TOC entry 145 (class 1259 OID 16741)
-- Dependencies: 5
-- Name: rating_ratingid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rating_ratingid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rating_ratingid_seq1 OWNER TO postgres;

--
-- TOC entry 2109 (class 0 OID 0)
-- Dependencies: 145
-- Name: rating_ratingid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rating_ratingid_seq1', 1, false);


--
-- TOC entry 156 (class 1259 OID 33165)
-- Dependencies: 1936 5
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rating (
    rate integer NOT NULL,
    ratingid integer DEFAULT nextval('rating_ratingid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 33399)
-- Dependencies: 5
-- Name: resume_resumeid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE resume_resumeid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resume_resumeid_seq1 OWNER TO postgres;

--
-- TOC entry 2110 (class 0 OID 0)
-- Dependencies: 176
-- Name: resume_resumeid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('resume_resumeid_seq1', 23, true);


--
-- TOC entry 177 (class 1259 OID 33401)
-- Dependencies: 1947 5
-- Name: resume; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE resume (
    resumeid integer DEFAULT nextval('resume_resumeid_seq1'::regclass) NOT NULL,
    resname character varying(32) NOT NULL,
    resume character varying(1000) NOT NULL
);


ALTER TABLE public.resume OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 33606)
-- Dependencies: 5
-- Name: role_roleid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE role_roleid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_roleid_seq1 OWNER TO postgres;

--
-- TOC entry 2111 (class 0 OID 0)
-- Dependencies: 192
-- Name: role_roleid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('role_roleid_seq1', 3, true);


--
-- TOC entry 193 (class 1259 OID 33608)
-- Dependencies: 1956 5
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    roles character varying(50) NOT NULL,
    roleid integer DEFAULT nextval('role_roleid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 33439)
-- Dependencies: 5
-- Name: save_saveid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE save_saveid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.save_saveid_seq1 OWNER TO postgres;

--
-- TOC entry 2112 (class 0 OID 0)
-- Dependencies: 181
-- Name: save_saveid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('save_saveid_seq1', 18, true);


--
-- TOC entry 182 (class 1259 OID 33441)
-- Dependencies: 1949 5
-- Name: save; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE save (
    jobid integer NOT NULL,
    saveid integer DEFAULT nextval('save_saveid_seq1'::regclass) NOT NULL,
    candid integer
);


ALTER TABLE public.save OWNER TO postgres;

--
-- TOC entry 159 (class 1259 OID 33202)
-- Dependencies: 1938 5
-- Name: schema_version; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_version (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.schema_version OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 33301)
-- Dependencies: 5
-- Name: seekerprofile_seekerprofileid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seekerprofile_seekerprofileid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seekerprofile_seekerprofileid_seq1 OWNER TO postgres;

--
-- TOC entry 2113 (class 0 OID 0)
-- Dependencies: 169
-- Name: seekerprofile_seekerprofileid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seekerprofile_seekerprofileid_seq1', 203, true);


--
-- TOC entry 170 (class 1259 OID 33303)
-- Dependencies: 1943 5
-- Name: seekerprofile; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE seekerprofile (
    candname character varying(32) NOT NULL,
    city character varying(15) NOT NULL,
    email character varying(32) NOT NULL,
    mobile character varying(15) NOT NULL,
    pass character varying(30) NOT NULL,
    cpass character varying(30) NOT NULL,
    seekerprofileid integer DEFAULT nextval('seekerprofile_seekerprofileid_seq1'::regclass) NOT NULL,
    gender character varying(20)
);


ALTER TABLE public.seekerprofile OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 33479)
-- Dependencies: 5
-- Name: shortlist_shortlistid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE shortlist_shortlistid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shortlist_shortlistid_seq1 OWNER TO postgres;

--
-- TOC entry 2114 (class 0 OID 0)
-- Dependencies: 184
-- Name: shortlist_shortlistid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('shortlist_shortlistid_seq1', 18, true);


--
-- TOC entry 185 (class 1259 OID 33482)
-- Dependencies: 1951 5
-- Name: shortlist; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shortlist (
    empid integer NOT NULL,
    candid integer NOT NULL,
    shortlistid integer DEFAULT nextval('shortlist_shortlistid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.shortlist OWNER TO postgres;

--
-- TOC entry 144 (class 1259 OID 16733)
-- Dependencies: 5
-- Name: skill_skillid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE skill_skillid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skill_skillid_seq1 OWNER TO postgres;

--
-- TOC entry 2115 (class 0 OID 0)
-- Dependencies: 144
-- Name: skill_skillid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('skill_skillid_seq1', 39, true);


--
-- TOC entry 149 (class 1259 OID 16799)
-- Dependencies: 1934 5
-- Name: skill; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE skill (
    skills character varying(32) NOT NULL,
    skillid integer DEFAULT nextval('skill_skillid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.skill OWNER TO postgres;

--
-- TOC entry 167 (class 1259 OID 33281)
-- Dependencies: 5
-- Name: state_stateid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE state_stateid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_stateid_seq1 OWNER TO postgres;

--
-- TOC entry 2116 (class 0 OID 0)
-- Dependencies: 167
-- Name: state_stateid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('state_stateid_seq1', 22, true);


--
-- TOC entry 168 (class 1259 OID 33283)
-- Dependencies: 1942 5
-- Name: state; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE state (
    states character varying(32) NOT NULL,
    statesid integer DEFAULT nextval('state_stateid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.state OWNER TO postgres;

--
-- TOC entry 146 (class 1259 OID 16764)
-- Dependencies: 5
-- Name: types_typesid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE types_typesid_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_typesid_seq1 OWNER TO postgres;

--
-- TOC entry 2117 (class 0 OID 0)
-- Dependencies: 146
-- Name: types_typesid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('types_typesid_seq1', 2, true);


--
-- TOC entry 147 (class 1259 OID 16773)
-- Dependencies: 1932 5
-- Name: types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE types (
    typename character varying(32) NOT NULL,
    typesid integer DEFAULT nextval('types_typesid_seq1'::regclass) NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 2085 (class 0 OID 33593)
-- Dependencies: 191
-- Data for Name: admn; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO admn VALUES ('KALMESH', 'kp@gmail.com', '8855', '8855', 7, '725925664');


--
-- TOC entry 2084 (class 0 OID 33542)
-- Dependencies: 190
-- Data for Name: applyjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO applyjob VALUES (71, 39, 24);
INSERT INTO applyjob VALUES (71, 40, 30);
INSERT INTO applyjob VALUES (111, 40, 31);
INSERT INTO applyjob VALUES (111, 39, 32);
INSERT INTO applyjob VALUES (112, 39, 33);
INSERT INTO applyjob VALUES (113, 39, 34);
INSERT INTO applyjob VALUES (114, 39, 35);
INSERT INTO applyjob VALUES (115, 39, 36);
INSERT INTO applyjob VALUES (116, 39, 37);
INSERT INTO applyjob VALUES (116, 40, 38);
INSERT INTO applyjob VALUES (115, 40, 39);
INSERT INTO applyjob VALUES (114, 40, 40);
INSERT INTO applyjob VALUES (113, 40, 41);
INSERT INTO applyjob VALUES (112, 40, 42);
INSERT INTO applyjob VALUES (71, 43, 43);


--
-- TOC entry 2065 (class 0 OID 16814)
-- Dependencies: 151
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO branch VALUES ('CSE', 1);
INSERT INTO branch VALUES ('ECE', 2);
INSERT INTO branch VALUES ('IT', 3);
INSERT INTO branch VALUES ('ISE', 4);
INSERT INTO branch VALUES ('EEE', 5);
INSERT INTO branch VALUES ('BM', 6);
INSERT INTO branch VALUES ('ML', 7);
INSERT INTO branch VALUES ('ME', 8);
INSERT INTO branch VALUES ('CIVIL', 9);


--
-- TOC entry 2083 (class 0 OID 33518)
-- Dependencies: 189
-- Data for Name: closed; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO closed VALUES (45, 41, 9);
INSERT INTO closed VALUES (45, 40, 15);
INSERT INTO closed VALUES (45, 39, 17);
INSERT INTO closed VALUES (46, 39, 20);


--
-- TOC entry 2082 (class 0 OID 33500)
-- Dependencies: 187
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO contact VALUES (45, 39, 6);
INSERT INTO contact VALUES (46, 39, 12);
INSERT INTO contact VALUES (46, 44, 13);
INSERT INTO contact VALUES (46, 67, 14);


--
-- TOC entry 2063 (class 0 OID 16786)
-- Dependencies: 148
-- Data for Name: domine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO domine VALUES ('JAVA DEVELOPER', 7);
INSERT INTO domine VALUES ('PHP DEVELOPER', 8);
INSERT INTO domine VALUES ('WEB DEVELOPER', 9);
INSERT INTO domine VALUES ('UI ANGULAR DEVELOPER', 10);
INSERT INTO domine VALUES ('ANDROID DEVELOPER', 11);
INSERT INTO domine VALUES ('IOS DEVELOPER', 12);
INSERT INTO domine VALUES ('HYBRID APPLICATION DEVELOPER', 13);
INSERT INTO domine VALUES ('UI DEVELOPER', 14);
INSERT INTO domine VALUES ('.NET DEVELOPER', 15);
INSERT INTO domine VALUES ('TESTING', 16);
INSERT INTO domine VALUES ('SPRING', 17);


--
-- TOC entry 2071 (class 0 OID 33271)
-- Dependencies: 166
-- Data for Name: empprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empprofile VALUES ('SHILPA', 'Bangalvzdgzdsgzdsgore', 'silpzxfzsa5@gmail.com', '+91-12335584', 'Karnataka', 'BENGALURU', '055666663', '123456', '123456', 45, NULL);
INSERT INTO empprofile VALUES ('hamsa', 'bangalore', 'hamsa@gmail.com', '+91-9876543214', 'Madhya Pradesh', 'BENGALURU', '566610', '123456', '123456', 46, NULL);
INSERT INTO empprofile VALUES ('sudiksha', 'dfdfdd', 'sudiksha@gmail.com', 'zfdfd', 'Karnataka', 'BENGALURU', '8473478438', 'sudi', 'sudi', 55, NULL);
INSERT INTO empprofile VALUES ('kalmesh', 'nagar', 'kalmeshpujari5@gmail.com', '+91-9999999999', 'Karnataka', 'BENGALURU', '560010', 'qwerty', 'qwerty', 57, NULL);
INSERT INTO empprofile VALUES ('RADHA', 'Bangalore', 'radh@gmail.com', '123456789', 'Karnataka', 'BENGALURU', '591222', '12345', '12345', 58, '10/04/2017 13:36:11');
INSERT INTO empprofile VALUES ('hamsav', 'bangalore', 'hamsav@gmail.com', '+91-8172634555', 'Karnataka', 'BENGALURU', '560010', 'hamsa', 'hamsa', 59, '12/04/2017 11:26:07');
INSERT INTO empprofile VALUES ('RADHA', 'Bangalore', 'rah@gmail.com', '1234567089', 'Karnataka', 'BENGALURU', '591222', '123450', '12345', 60, '14/04/2017 16:16:03');
INSERT INTO empprofile VALUES ('KALMESH', 'Bangalore', 'pujarikalmesh5@gmail.com', '12345645', 'Karnataka', 'BENGALURU', '591222', '123450', '12345', 64, '28/04/2017 10:25:49');
INSERT INTO empprofile VALUES ('silpa', 'Bangalore', 'silpa@gmail.com', '+91-88889999', 'Karnataka', 'BENGALURU', '591222', 'shilpa', 'shilpa', 56, '02/05/2017 14:19:11');
INSERT INTO empprofile VALUES ('sudiksha', 'dfdfdd', 'sudiksha123@gmail.com', '3737373737', 'Karnataka', 'BENGALURU', '123456', 'sudiksha', 'sudiksha', 65, '02/05/2017 16:27:34');


--
-- TOC entry 2067 (class 0 OID 33198)
-- Dependencies: 158
-- Data for Name: etc; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO etc VALUES ('KALMESH', 1);
INSERT INTO etc VALUES ('KALMESH', 2);
INSERT INTO etc VALUES ('KALMESH SIR', 3);
INSERT INTO etc VALUES ('KALMESH', 4);


--
-- TOC entry 2076 (class 0 OID 33386)
-- Dependencies: 175
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO gender VALUES ('Male', 1);
INSERT INTO gender VALUES ('Female', 2);
INSERT INTO gender VALUES ('Others', 3);


--
-- TOC entry 2078 (class 0 OID 33412)
-- Dependencies: 179
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO image VALUES (58, NULL);
INSERT INTO image VALUES (59, NULL);
INSERT INTO image VALUES (60, NULL);
INSERT INTO image VALUES (61, NULL);
INSERT INTO image VALUES (62, NULL);
INSERT INTO image VALUES (63, NULL);
INSERT INTO image VALUES (64, NULL);
INSERT INTO image VALUES (65, NULL);
INSERT INTO image VALUES (66, NULL);
INSERT INTO image VALUES (67, NULL);
INSERT INTO image VALUES (68, NULL);
INSERT INTO image VALUES (69, NULL);
INSERT INTO image VALUES (70, 'E:/JobPortalImages/.png');


--
-- TOC entry 2074 (class 0 OID 33313)
-- Dependencies: 171
-- Data for Name: jobpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO jobpost VALUES (71, 'ORACLE', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 45, '10/04/2017 15:56:56');
INSERT INTO jobpost VALUES (111, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 45, '11/04/2017 17:03:56');
INSERT INTO jobpost VALUES (112, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '12/04/2017 13:58:17');
INSERT INTO jobpost VALUES (113, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '12/04/2017 13:58:22');
INSERT INTO jobpost VALUES (114, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '12/04/2017 13:58:23');
INSERT INTO jobpost VALUES (115, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '12/04/2017 13:58:24');
INSERT INTO jobpost VALUES (116, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '12/04/2017 13:58:24');
INSERT INTO jobpost VALUES (117, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '14/04/2017 16:44:28');
INSERT INTO jobpost VALUES (118, 'XZDFG', 'cxv', 'FGVB', 'JAVA DEVELOPER', 'HYDARABAD', '4', '34545', 'vcb', 46, '15/04/2017 10:57:32');
INSERT INTO jobpost VALUES (120, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '15/04/2017 11:00:19');
INSERT INTO jobpost VALUES (121, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '15/04/2017 11:01:33');
INSERT INTO jobpost VALUES (122, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '15/04/2017 11:01:38');
INSERT INTO jobpost VALUES (123, 'DSZF', 'df', 'FDG', 'UI DEVELOPER', 'HYDARABAD', '3', '3454', 'cvxb', 46, '15/04/2017 11:03:08');
INSERT INTO jobpost VALUES (124, 'DXFG', 'cvxb', 'XVCB', 'JAVA DEVELOPER', 'DELHI', '4', '5555555', 'cvn', 46, '15/04/2017 11:04:42');
INSERT INTO jobpost VALUES (125, 'ELEPHANT TREE', 'developer', 'JAVA', 'JAVA DEVELOPER', 'MYSORE', '3', '345566', 'BE', 46, '15/04/2017 15:04:18');
INSERT INTO jobpost VALUES (126, 'ELEPHANT TREE', 'senior dev', 'JAVA', 'JAVA DEVELOPER', 'DELHI', '3', '345555', 'BE or MCA', 46, '15/04/2017 16:07:17');
INSERT INTO jobpost VALUES (127, 'SNIPE IT SOLUTION', 'Architech', 'JAVA,.NET,C,C++,DBMS,ANDROID', 'WEB DEVELOPER', 'KOLKATHA', '15+', '20l+', 'BE or MCA or Phd', 46, '15/04/2017 16:12:09');
INSERT INTO jobpost VALUES (128, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '28/04/2017 17:06:04');
INSERT INTO jobpost VALUES (129, 'SYSFORE TECHNOLOGY', 'Java Developer', 'JAVA,SQL,HTML', 'JAVA DEVELOPER', 'BELGAUM', '10 YEARS', '30LPA', 'BE', 46, '28/04/2017 17:06:19');


--
-- TOC entry 2069 (class 0 OID 33226)
-- Dependencies: 161
-- Data for Name: loc; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO loc VALUES ('BENGALURU', 13);
INSERT INTO loc VALUES ('MYSORE', 14);
INSERT INTO loc VALUES ('BELGAUM', 15);
INSERT INTO loc VALUES ('MUMBAI', 16);
INSERT INTO loc VALUES ('PUNE', 17);
INSERT INTO loc VALUES ('DELHI', 18);
INSERT INTO loc VALUES ('KOLKATHA', 19);
INSERT INTO loc VALUES ('CHENNAI', 20);
INSERT INTO loc VALUES ('HYDARABAD', 21);
INSERT INTO loc VALUES ('LUCKNOW', 22);


--
-- TOC entry 2075 (class 0 OID 33354)
-- Dependencies: 173
-- Data for Name: myprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO myprofile VALUES (67, 'SHILPA', 'Female', 'kpu@gmai.com', '1234561010', 'BE', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (74, 'shilpa', 'Female', 'shilpa1@gmail.com', '222222222', 'be', '2', 'BENGALURU', 'BENGALURU', 'JAVA', 'JAVA', 'active', NULL, NULL);
INSERT INTO myprofile VALUES (75, 'SHILPA', 'Female', 'shilpa123345@gmail.com', '6789876545', 'be', '2', 'CHENNAI', 'PUNE', 'SPRING IOC', 'JSS', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (76, 'savita', 'Female', 'savita12@gmail.com', '6767676767', 'be', '2', 'HYDARABAD', 'DELHI', 'J2EE', 'SPRING BOOT', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (83, 'sdfghj', 'Female', 'qwertyu@gmail.com', '456478945', 'be', '1', 'BELGAUM', 'BENGALURU', 'SPRING IOC', 'POSTGRESQL', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (84, 'dfghjkl11', 'Female', 'kjhgfds@gmail.com', '12345678', 'fgbhnm', '1', 'BENGALURU', 'BENGALURU', 'POSTGRESQL', 'SPRING IOC', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (85, 'asdfgh', 'Female', 'asdfg@gmail.com', '123456789', '1', '1', 'BENGALURU', 'BENGALURU', 'POSTGRESQL', 'J2EE', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (86, 'cdfgvhjmk', 'Male', 'asdfgh@gmail.com', '41234567', 'ewfrgt', '1', 'MYSORE', 'MYSORE', 'SPRING IOC', 'J2EE', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (87, 'sdfghj', 'Male', 'ASDFGH@gmail.com', '1234567', 'qwe', '1', 'BELGAUM', 'PUNE', 'SPRING IOC', 'POSTGRESQL', '', NULL, NULL);
INSERT INTO myprofile VALUES (88, 'sdfghj', 'Female', 'asdfghg345@gmailcom', '123456712345', '1', '1', 'MYSORE', 'MYSORE', 'SPRING MVC', 'HIBERNATE', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (89, 'sdfghj', 'Others', 'shi@gmail.com', '3333333333', 'be', '1', 'CHENNAI', 'DELHI', 'SPRING IOC', 'POSTGRESQL', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (96, 'shilpa', 'Male', 'shilpa12@gmail.com', '67777777777', 'be', '2', 'BENGALURU', 'LUCKNOW', 'SPRING MVC', 'AJAX', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (36, 'SHILPA', 'Female', 'shilpahuddar@gmail.com', '9035300806', 'BE', '3', 'MYSORE', 'BENGALURU', 'JAVA', 'HTML', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (38, 'SWETHA', 'Female', 'swetha@gmail.com', '900258956', 'BE', '4', 'DELHI', 'HYDARABAD', 'SPRING BOOT', 'IOS', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (39, 'KALMESH', 'Male', 'kalmesh@gmail.com', '7894561235', 'Be', '2', 'CHENNAI', 'MUMBAI', 'JAVASCRIPT', 'MYSQL', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (40, 'ARJUN', 'Male', 'arjun@gmail.com', '9008310047', 'Btech', '2', 'MUMBAI', 'HYDARABAD', 'POSTGRESQL', 'JDBC', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (41, 'sukrati', 'Female', 'sukrati@gmail.com', '9745235820', 'msc', '1', 'PUNE', 'LUCKNOW', 'SPRING IOC', 'HIBERNATE', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (43, 'hamsa', 'Female', 'hamsa@gmail.com', '7895896478', 'be', '2', 'CHENNAI', 'HYDARABAD', 'SPRING MVC', 'REST', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (44, 'sunil', 'Male', 'sunil123@gmail.com', '7895896678', 'BE', '2.5 year', 'MYSORE', 'BENGALURU', 'SPRING MVC', 'MYSQL', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (47, 'shivakumar', 'Male', 'shivakumar@gmail.com', '3698523652', 'Be', '3', 'HYDARABAD', 'PUNE', 'HTML', 'SQL', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (52, 'SHILPA', 'Female', 'kp@gmail.com', '1234561701', 'BE', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (53, 'SHILPA', 'Female', 'kp@gmai.com', '123456101', 'BE', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (55, 'shilpa', 'Female', 'shilpa.huddar1993@gmail.com', '0000000000', 'be', '2', 'DELHI', 'CHENNAI', 'POSTGRESQL', 'SPRING IOC', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (56, 'sudiksha', 'Female', 'sudiksha@gmail.com', '9999999999', 'be', '2', 'DELHI', 'DELHI', 'POSTGRESQL', 'SPRING IOC', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (112, 'shilpa', 'Female', 'pujarikalmesh5@gmail.com', '242222222', 'be', '2', 'BENGALURU', 'BENGALURU', 'JAVA HTML', 'JAVA SQL', 'active', NULL, NULL);
INSERT INTO myprofile VALUES (37, 'SHILPA', 'Female', 'shilaaa@gmail.com', '12345617', 'BE', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (0, 'fghjk', 'Male', 'asdfghjddff@gmail.com', '78456123369', 'Be', '2', 'PUNE', 'MYSORE', 'HTML', 'PHP', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (49, 'SHILPA', 'Female', 'k@gmail.com', '123456170', 'BE', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (45, 'SHILPA', 'Female', 'shilpa@gmail.com', '123456179', 'BE,MTECH', '2', 'BENGALURU', 'BENGALURU', 'HTML', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (50, 'shilpa', 'Female', 'shilpa.huddar@gmail.com', '1234567899', 'BE', '2', 'DELHI', 'CHENNAI', 'SPRING MVC', 'AJAX', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (51, 'asdfghj', 'Female', 'sdfghj@gmail.com', '234567890', 'be', '2', 'DELHI', 'LUCKNOW', 'PHP', 'JAVA', 'Active', NULL, NULL);
INSERT INTO myprofile VALUES (61, 'ASDFGHJK', 'Female', 'ASDFGHJ@gmail.com', '2222222222', 'be', 'ASDFGHJ', 'CHENNAI', 'HYDARABAD', 'SPRING BOOT', 'POSTGRESQL', 'Active', NULL, NULL);


--
-- TOC entry 2080 (class 0 OID 33457)
-- Dependencies: 183
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO notice VALUES (46, 39, 47);
INSERT INTO notice VALUES (45, 39, 48);
INSERT INTO notice VALUES (45, 44, 49);
INSERT INTO notice VALUES (45, 41, 50);
INSERT INTO notice VALUES (46, 67, 51);


--
-- TOC entry 2070 (class 0 OID 33242)
-- Dependencies: 163
-- Data for Name: qualif; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO qualif VALUES ('BE', 1);
INSERT INTO qualif VALUES ('BTECH', 2);
INSERT INTO qualif VALUES ('MTECH', 3);
INSERT INTO qualif VALUES ('MSC', 4);
INSERT INTO qualif VALUES ('BCA', 5);
INSERT INTO qualif VALUES ('MCA', 6);
INSERT INTO qualif VALUES ('BBA', 7);
INSERT INTO qualif VALUES ('MBA', 8);
INSERT INTO qualif VALUES ('MCOM', 9);
INSERT INTO qualif VALUES ('MS', 10);


--
-- TOC entry 2066 (class 0 OID 33165)
-- Dependencies: 156
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2077 (class 0 OID 33401)
-- Dependencies: 177
-- Data for Name: resume; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO resume VALUES (1, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (2, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (3, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (4, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (5, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.png');
INSERT INTO resume VALUES (6, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc, .png');
INSERT INTO resume VALUES (7, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (8, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (9, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (10, 'a', 'E:/JobPortalImages/a.doc');
INSERT INTO resume VALUES (11, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (12, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (13, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (14, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (15, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (16, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (17, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (18, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (19, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (20, '', 'E:/JobPortalImages/.doc');
INSERT INTO resume VALUES (21, 'wert', 'E:/JobPortalImages/wert.doc');
INSERT INTO resume VALUES (22, 'Fresher_resume', 'E:/JobPortalImages/Fresher_resume.doc');
INSERT INTO resume VALUES (23, 'flow dia', 'E:/JobPortalImages/flow dia.doc');


--
-- TOC entry 2086 (class 0 OID 33608)
-- Dependencies: 193
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO roles VALUES ('Admin', 1);
INSERT INTO roles VALUES ('Employer', 2);
INSERT INTO roles VALUES ('Employee', 3);


--
-- TOC entry 2079 (class 0 OID 33441)
-- Dependencies: 182
-- Data for Name: save; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO save VALUES (71, 11, NULL);
INSERT INTO save VALUES (71, 14, NULL);
INSERT INTO save VALUES (71, 17, 39);
INSERT INTO save VALUES (71, 18, 40);


--
-- TOC entry 2068 (class 0 OID 33202)
-- Dependencies: 159
-- Data for Name: schema_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO schema_version VALUES (1, '1', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'postgres', '2017-02-13 11:14:16.205', 0, true);


--
-- TOC entry 2073 (class 0 OID 33303)
-- Dependencies: 170
-- Data for Name: seekerprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO seekerprofile VALUES ('sdfghjkl', 'qwertyuio', 'asdfghjklllll@gmail.com', '234567890-', '1234567', '1234567', 160, 'FEMALE');
INSERT INTO seekerprofile VALUES ('asdfghjk', 'sdfghjkl', 'asdf@ggmail.com', '123456789', '123456', '123456', 19, 'male');
INSERT INTO seekerprofile VALUES ('sagar', 'asdf', 'asd1f@ggmail.com', '3456787890', 'asdfg', 'asdfg', 21, 'female');
INSERT INTO seekerprofile VALUES ('sdfghjk', 'sdfghjk', 'qwert@gmail.com', '23456789', '1234', '1234', 110, 'FEMALE');
INSERT INTO seekerprofile VALUES ('sdfghjkl', 'adfghjk', 'sdfghjkl', '12345667', 'afghjk', 'adfgh', 32, 'male');
INSERT INTO seekerprofile VALUES ('qwerty', 'banglore', 'qwerty@gmail.com', '1236547890', 'qwerty', 'qwerty', 35, 'male');
INSERT INTO seekerprofile VALUES ('savita', 'banglore', 'qwert123@gmail.com', '7894561230', 'zxcvbnm', 'zxcvbnm', 36, 'male');
INSERT INTO seekerprofile VALUES ('shilpa', 'bangalore', 'shipaaa@gmail.com', '9035300800', 'shilpa', 'shilpa', 40, 'female');
INSERT INTO seekerprofile VALUES ('shilpa', 'bangalore', 'shilpa@gmail.com', '99999999999', 'shilpa', 'shilpa', 165, 'FEMALE');
INSERT INTO seekerprofile VALUES ('sdfgh', 'asdfgh', 'sudikshapatil@gmail.com', '987654323', '3456789', '3456789', 172, 'FEMALE');
INSERT INTO seekerprofile VALUES ('shilpa', 'bangalore', 'shilpahuddar1993@gmail.com', '9898989898', 'shilpa', 'shilpa', 173, 'FEMALE');
INSERT INTO seekerprofile VALUES ('asdfghjkzxcvbnm,', 'xcvbnm,', 'asdfghj@gmail.com', '12345667890', 'asdfgh', 'asdfgh', 127, 'FEMALE');
INSERT INTO seekerprofile VALUES ('shilpa', 'sdfghjk', 'shilpahuddar123@gmail.com', '5555555555', 'shilpa', 'shilpa', 174, 'FEMALE');
INSERT INTO seekerprofile VALUES ('KALMESH', 'BENGALURU', 'kalmeshpujari@gmail.com', '7259253665', 'k', 'k', 136, 'MALE');
INSERT INTO seekerprofile VALUES ('shilpa1', 'bangalore', 'shilpa1@gmail.com', '890890987', 'shilpa', 'shilpa', 137, 'FEMALE');
INSERT INTO seekerprofile VALUES ('shilpa', 'dfghjkl;', 'sdfghjkl@gmail.com', 'sdfghjkl', '12345', '12345', 143, 'FEMALE');
INSERT INTO seekerprofile VALUES ('SHILPA', 'BENGALURU', 'shilpa.huddar035@gmail.com', '72591111111', 'k2', 'k2', 190, 'MALE');
INSERT INTO seekerprofile VALUES ('dfghjk', 'bangalore', 'asdfgh@gmail.com', '2345678908', '12345', '12345', 149, 'FEMALE');
INSERT INTO seekerprofile VALUES ('sdfghjkl', 'qwertyuio', 'sdfghjk@gmail.com', '1234567890', 'dfghjk', 'dfghjk', 154, 'FEMALE');
INSERT INTO seekerprofile VALUES ('SHUDIKSHA', 'BENGALURU', 'sudikshapatil77@gmail.com', '7259119865', 's', 's', 196, 'MALE');
INSERT INTO seekerprofile VALUES ('SHUDIKSHA', 'BENGALURU', 'pujarikalmesh5@gmail.com', '725911986', 's', 's', 202, 'MALE');
INSERT INTO seekerprofile VALUES ('', '', '', '', '', '', 191, '');
INSERT INTO seekerprofile VALUES ('shilpa', '', 'shilpa12@gmail.com', '9035300806', 'shilpa12', 'shilpa12', 203, 'FEMALE');


--
-- TOC entry 2081 (class 0 OID 33482)
-- Dependencies: 185
-- Data for Name: shortlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO shortlist VALUES (46, 39, 15);
INSERT INTO shortlist VALUES (46, 41, 16);
INSERT INTO shortlist VALUES (46, 44, 17);
INSERT INTO shortlist VALUES (46, 67, 18);


--
-- TOC entry 2064 (class 0 OID 16799)
-- Dependencies: 149
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO skill VALUES ('C/C++', 4);
INSERT INTO skill VALUES ('CSS', 5);
INSERT INTO skill VALUES ('HTML', 9);
INSERT INTO skill VALUES ('PHP', 16);
INSERT INTO skill VALUES ('SQL', 18);
INSERT INTO skill VALUES ('JAVA', 22);
INSERT INTO skill VALUES ('JAVASCRIPT', 23);
INSERT INTO skill VALUES ('HIBERNATE', 24);
INSERT INTO skill VALUES ('JDBC', 25);
INSERT INTO skill VALUES ('REST', 26);
INSERT INTO skill VALUES ('MYSQL', 27);
INSERT INTO skill VALUES ('JSS', 28);
INSERT INTO skill VALUES ('J2EE', 29);
INSERT INTO skill VALUES ('POSTGRESQL', 30);
INSERT INTO skill VALUES ('AJAX', 31);
INSERT INTO skill VALUES ('SPRING IOC', 32);
INSERT INTO skill VALUES ('SPRING MVC', 33);
INSERT INTO skill VALUES ('SPRING BOOT', 34);
INSERT INTO skill VALUES ('IOS', 35);
INSERT INTO skill VALUES ('JPA', 36);
INSERT INTO skill VALUES ('ANGULAR JS', 37);
INSERT INTO skill VALUES ('ORACLE 10G', 38);


--
-- TOC entry 2072 (class 0 OID 33283)
-- Dependencies: 168
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO state VALUES ('Andhra Pradesh', 1);
INSERT INTO state VALUES ('Arunachal Pradesh', 2);
INSERT INTO state VALUES ('Assam', 3);
INSERT INTO state VALUES ('Bihar', 4);
INSERT INTO state VALUES ('Chandigarh', 5);
INSERT INTO state VALUES ('Chhattisgarh', 6);
INSERT INTO state VALUES ('Delhi ', 7);
INSERT INTO state VALUES ('Goa', 8);
INSERT INTO state VALUES ('Gujarat', 9);
INSERT INTO state VALUES ('Haryana', 10);
INSERT INTO state VALUES ('Himachal Pradesh', 11);
INSERT INTO state VALUES ('Jammu and Kashmir', 12);
INSERT INTO state VALUES ('Jharkhand', 13);
INSERT INTO state VALUES ('Karnataka', 14);
INSERT INTO state VALUES ('Kerala', 15);
INSERT INTO state VALUES ('Madhya Pradesh', 16);
INSERT INTO state VALUES ('Maharashtra', 17);
INSERT INTO state VALUES ('Tamil Nadu', 18);
INSERT INTO state VALUES ('Telangana', 19);
INSERT INTO state VALUES ('Uttar Pradesh', 20);
INSERT INTO state VALUES ('Uttarakhand', 21);
INSERT INTO state VALUES ('West Bengal', 22);


--
-- TOC entry 2062 (class 0 OID 16773)
-- Dependencies: 147
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO types VALUES ('Fresher', 1);
INSERT INTO types VALUES ('Experience', 2);


--
-- TOC entry 2033 (class 2606 OID 33600)
-- Dependencies: 191 191
-- Name: admn_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admn
    ADD CONSTRAINT admn_email_key UNIQUE (email);


--
-- TOC entry 2035 (class 2606 OID 33602)
-- Dependencies: 191 191
-- Name: admn_mobile_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admn
    ADD CONSTRAINT admn_mobile_key UNIQUE (mobile);


--
-- TOC entry 2037 (class 2606 OID 33598)
-- Dependencies: 191 191
-- Name: admn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admn
    ADD CONSTRAINT admn_pkey PRIMARY KEY (admnid);


--
-- TOC entry 2031 (class 2606 OID 33547)
-- Dependencies: 190 190
-- Name: applyjob_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY applyjob
    ADD CONSTRAINT applyjob_pkey PRIMARY KEY (applyjobid);


--
-- TOC entry 1970 (class 2606 OID 16821)
-- Dependencies: 151 151
-- Name: branch_branches_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY branch
    ADD CONSTRAINT branch_branches_key UNIQUE (branches);


--
-- TOC entry 1972 (class 2606 OID 16819)
-- Dependencies: 151 151
-- Name: branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (branchid);


--
-- TOC entry 2029 (class 2606 OID 33523)
-- Dependencies: 189 189
-- Name: closed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY closed
    ADD CONSTRAINT closed_pkey PRIMARY KEY (closedid);


--
-- TOC entry 2027 (class 2606 OID 33505)
-- Dependencies: 187 187
-- Name: contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (contactid);


--
-- TOC entry 1962 (class 2606 OID 16793)
-- Dependencies: 148 148
-- Name: domine_domains_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY domine
    ADD CONSTRAINT domine_domains_key UNIQUE (domains);


--
-- TOC entry 1964 (class 2606 OID 16791)
-- Dependencies: 148 148
-- Name: domine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY domine
    ADD CONSTRAINT domine_pkey PRIMARY KEY (domineid);


--
-- TOC entry 1989 (class 2606 OID 33278)
-- Dependencies: 166 166
-- Name: empprofile_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empprofile
    ADD CONSTRAINT empprofile_email_key UNIQUE (email);


--
-- TOC entry 1991 (class 2606 OID 33559)
-- Dependencies: 166 166
-- Name: empprofile_mobile_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empprofile
    ADD CONSTRAINT empprofile_mobile_key UNIQUE (mobile);


--
-- TOC entry 1993 (class 2606 OID 33276)
-- Dependencies: 166 166
-- Name: empprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empprofile
    ADD CONSTRAINT empprofile_pkey PRIMARY KEY (empprofileid);


--
-- TOC entry 2013 (class 2606 OID 33393)
-- Dependencies: 175 175
-- Name: gender_gender_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gender
    ADD CONSTRAINT gender_gender_key UNIQUE (gender);


--
-- TOC entry 2015 (class 2606 OID 33391)
-- Dependencies: 175 175
-- Name: gender_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (genderid);


--
-- TOC entry 2019 (class 2606 OID 33417)
-- Dependencies: 179 179
-- Name: image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY image
    ADD CONSTRAINT image_pkey PRIMARY KEY (imageid);


--
-- TOC entry 2005 (class 2606 OID 33318)
-- Dependencies: 171 171
-- Name: jobpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jobpost
    ADD CONSTRAINT jobpost_pkey PRIMARY KEY (jobpostid);


--
-- TOC entry 1981 (class 2606 OID 33233)
-- Dependencies: 161 161
-- Name: loc_locations_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY loc
    ADD CONSTRAINT loc_locations_key UNIQUE (locations);


--
-- TOC entry 1983 (class 2606 OID 33231)
-- Dependencies: 161 161
-- Name: loc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY loc
    ADD CONSTRAINT loc_pkey PRIMARY KEY (locid);


--
-- TOC entry 2007 (class 2606 OID 33361)
-- Dependencies: 173 173
-- Name: myprofile_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_email_key UNIQUE (email);


--
-- TOC entry 2009 (class 2606 OID 33363)
-- Dependencies: 173 173
-- Name: myprofile_mobile_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_mobile_key UNIQUE (mobile);


--
-- TOC entry 2011 (class 2606 OID 33359)
-- Dependencies: 173 173
-- Name: myprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_pkey PRIMARY KEY (myprofileid);


--
-- TOC entry 2023 (class 2606 OID 33462)
-- Dependencies: 183 183
-- Name: notice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (noticeid);


--
-- TOC entry 1985 (class 2606 OID 33247)
-- Dependencies: 163 163
-- Name: qualif_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY qualif
    ADD CONSTRAINT qualif_pkey PRIMARY KEY (qualifid);


--
-- TOC entry 1987 (class 2606 OID 33249)
-- Dependencies: 163 163
-- Name: qualif_types_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY qualif
    ADD CONSTRAINT qualif_types_key UNIQUE (types);


--
-- TOC entry 1974 (class 2606 OID 33170)
-- Dependencies: 156 156
-- Name: rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (ratingid);


--
-- TOC entry 1976 (class 2606 OID 33172)
-- Dependencies: 156 156
-- Name: rating_rate_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rating
    ADD CONSTRAINT rating_rate_key UNIQUE (rate);


--
-- TOC entry 2017 (class 2606 OID 33409)
-- Dependencies: 177 177
-- Name: resume_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resume
    ADD CONSTRAINT resume_pkey PRIMARY KEY (resumeid);


--
-- TOC entry 2039 (class 2606 OID 33613)
-- Dependencies: 193 193
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (roleid);


--
-- TOC entry 2041 (class 2606 OID 33615)
-- Dependencies: 193 193
-- Name: roles_roles_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_roles_key UNIQUE (roles);


--
-- TOC entry 2021 (class 2606 OID 33446)
-- Dependencies: 182 182
-- Name: save_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY save
    ADD CONSTRAINT save_pkey PRIMARY KEY (saveid);


--
-- TOC entry 1978 (class 2606 OID 33210)
-- Dependencies: 159 159
-- Name: schema_version_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY schema_version
    ADD CONSTRAINT schema_version_pk PRIMARY KEY (installed_rank);


--
-- TOC entry 1999 (class 2606 OID 33310)
-- Dependencies: 170 170
-- Name: seekerprofile_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seekerprofile
    ADD CONSTRAINT seekerprofile_email_key UNIQUE (email);


--
-- TOC entry 2001 (class 2606 OID 33312)
-- Dependencies: 170 170
-- Name: seekerprofile_mobile_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seekerprofile
    ADD CONSTRAINT seekerprofile_mobile_key UNIQUE (mobile);


--
-- TOC entry 2003 (class 2606 OID 33308)
-- Dependencies: 170 170
-- Name: seekerprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seekerprofile
    ADD CONSTRAINT seekerprofile_pkey PRIMARY KEY (seekerprofileid);


--
-- TOC entry 2025 (class 2606 OID 33487)
-- Dependencies: 185 185
-- Name: shortlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shortlist
    ADD CONSTRAINT shortlist_pkey PRIMARY KEY (shortlistid);


--
-- TOC entry 1966 (class 2606 OID 16804)
-- Dependencies: 149 149
-- Name: skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skillid);


--
-- TOC entry 1968 (class 2606 OID 16806)
-- Dependencies: 149 149
-- Name: skill_skills_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_skills_key UNIQUE (skills);


--
-- TOC entry 1995 (class 2606 OID 33288)
-- Dependencies: 168 168
-- Name: state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY state
    ADD CONSTRAINT state_pkey PRIMARY KEY (statesid);


--
-- TOC entry 1997 (class 2606 OID 33290)
-- Dependencies: 168 168
-- Name: state_states_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY state
    ADD CONSTRAINT state_states_key UNIQUE (states);


--
-- TOC entry 1958 (class 2606 OID 16778)
-- Dependencies: 147 147
-- Name: types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY types
    ADD CONSTRAINT types_pkey PRIMARY KEY (typesid);


--
-- TOC entry 1960 (class 2606 OID 16780)
-- Dependencies: 147 147
-- Name: types_typename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY types
    ADD CONSTRAINT types_typename_key UNIQUE (typename);


--
-- TOC entry 1979 (class 1259 OID 33211)
-- Dependencies: 159
-- Name: schema_version_s_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX schema_version_s_idx ON schema_version USING btree (success);


--
-- TOC entry 2060 (class 2606 OID 33548)
-- Dependencies: 173 190 2010
-- Name: applyjob_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY applyjob
    ADD CONSTRAINT applyjob_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2061 (class 2606 OID 33553)
-- Dependencies: 2004 171 190
-- Name: applyjob_jobid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY applyjob
    ADD CONSTRAINT applyjob_jobid_fkey FOREIGN KEY (jobid) REFERENCES jobpost(jobpostid) ON DELETE CASCADE;


--
-- TOC entry 2058 (class 2606 OID 33524)
-- Dependencies: 2010 189 173
-- Name: closed_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY closed
    ADD CONSTRAINT closed_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2059 (class 2606 OID 33529)
-- Dependencies: 1992 189 166
-- Name: closed_empid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY closed
    ADD CONSTRAINT closed_empid_fkey FOREIGN KEY (empid) REFERENCES empprofile(empprofileid) ON DELETE CASCADE;


--
-- TOC entry 2056 (class 2606 OID 33506)
-- Dependencies: 2010 173 187
-- Name: contact_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2042 (class 2606 OID 33296)
-- Dependencies: 161 166 1980
-- Name: empprofile_city_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empprofile
    ADD CONSTRAINT empprofile_city_fkey FOREIGN KEY (city) REFERENCES loc(locations) ON DELETE CASCADE;


--
-- TOC entry 2043 (class 2606 OID 33566)
-- Dependencies: 1996 168 166
-- Name: empprofile_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empprofile
    ADD CONSTRAINT empprofile_state_fkey FOREIGN KEY (state) REFERENCES state(states) ON DELETE CASCADE;


--
-- TOC entry 2046 (class 2606 OID 33324)
-- Dependencies: 1961 171 148
-- Name: jobpost_domine_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobpost
    ADD CONSTRAINT jobpost_domine_fkey FOREIGN KEY (domine) REFERENCES domine(domains) ON DELETE CASCADE;


--
-- TOC entry 2044 (class 2606 OID 33537)
-- Dependencies: 166 171 1992
-- Name: jobpost_empid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobpost
    ADD CONSTRAINT jobpost_empid_fkey FOREIGN KEY (empid) REFERENCES empprofile(empprofileid) ON DELETE CASCADE;


--
-- TOC entry 2045 (class 2606 OID 33319)
-- Dependencies: 161 171 1980
-- Name: jobpost_loc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobpost
    ADD CONSTRAINT jobpost_loc_fkey FOREIGN KEY (loc) REFERENCES loc(locations) ON DELETE CASCADE;


--
-- TOC entry 2047 (class 2606 OID 33364)
-- Dependencies: 1980 161 173
-- Name: myprofile_currlocation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_currlocation_fkey FOREIGN KEY (currlocation) REFERENCES loc(locations) ON DELETE CASCADE;


--
-- TOC entry 2049 (class 2606 OID 33394)
-- Dependencies: 173 2012 175
-- Name: myprofile_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_gender_fkey FOREIGN KEY (gender) REFERENCES gender(gender) ON DELETE CASCADE;


--
-- TOC entry 2048 (class 2606 OID 33369)
-- Dependencies: 173 1980 161
-- Name: myprofile_preflocation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY myprofile
    ADD CONSTRAINT myprofile_preflocation_fkey FOREIGN KEY (preflocation) REFERENCES loc(locations) ON DELETE CASCADE;


--
-- TOC entry 2053 (class 2606 OID 33468)
-- Dependencies: 2010 183 173
-- Name: notice_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notice
    ADD CONSTRAINT notice_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2052 (class 2606 OID 33463)
-- Dependencies: 183 1992 166
-- Name: notice_empid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notice
    ADD CONSTRAINT notice_empid_fkey FOREIGN KEY (empid) REFERENCES empprofile(empprofileid) ON DELETE CASCADE;


--
-- TOC entry 2051 (class 2606 OID 33588)
-- Dependencies: 182 2010 173
-- Name: save_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY save
    ADD CONSTRAINT save_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2050 (class 2606 OID 33452)
-- Dependencies: 171 182 2004
-- Name: save_jobid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY save
    ADD CONSTRAINT save_jobid_fkey FOREIGN KEY (jobid) REFERENCES jobpost(jobpostid) ON DELETE CASCADE;


--
-- TOC entry 2054 (class 2606 OID 33488)
-- Dependencies: 173 2010 185
-- Name: shortlist_candid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY shortlist
    ADD CONSTRAINT shortlist_candid_fkey FOREIGN KEY (candid) REFERENCES myprofile(myprofileid) ON DELETE CASCADE;


--
-- TOC entry 2055 (class 2606 OID 33493)
-- Dependencies: 1992 185 166
-- Name: shortlist_empid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY shortlist
    ADD CONSTRAINT shortlist_empid_fkey FOREIGN KEY (empid) REFERENCES empprofile(empprofileid) ON DELETE CASCADE;


--
-- TOC entry 2057 (class 2606 OID 33511)
-- Dependencies: 187 1992 166
-- Name: shortlist_empid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT shortlist_empid_fkey FOREIGN KEY (empid) REFERENCES empprofile(empprofileid) ON DELETE CASCADE;


--
-- TOC entry 2091 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-05-18 14:35:05

--
-- PostgreSQL database dump complete
--

