--
-- PostgreSQL database dump
--

-- Started on 2010-08-05 08:57:18

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 6 (class 2615 OID 16489)
-- Name: sitedb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sitedb;


ALTER SCHEMA sitedb OWNER TO postgres;

SET search_path = sitedb, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1531 (class 1259 OID 16565)
-- Dependencies: 6
-- Name: admin_config; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_config (
    key character varying NOT NULL,
    value character varying NOT NULL,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.admin_config OWNER TO postgres;

--
-- TOC entry 1535 (class 1259 OID 16658)
-- Dependencies: 6
-- Name: admin_devices; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_devices (
    device_id integer NOT NULL,
    ae_title character varying(50) NOT NULL,
    ip_address character varying(50) NOT NULL,
    port_number character varying(10) NOT NULL,
    dns_name character varying(50),
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.admin_devices OWNER TO postgres;

--
-- TOC entry 1534 (class 1259 OID 16656)
-- Dependencies: 1535 6
-- Name: admin_devices_device_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE admin_devices_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.admin_devices_device_id_seq OWNER TO postgres;

--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 1534
-- Name: admin_devices_device_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE admin_devices_device_id_seq OWNED BY admin_devices.device_id;


--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 1534
-- Name: admin_devices_device_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('admin_devices_device_id_seq', 1, false);


--
-- TOC entry 1536 (class 1259 OID 16664)
-- Dependencies: 6
-- Name: admin_role; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_role (
    role_id integer NOT NULL,
    role_description character varying(50) NOT NULL,
    modified_date time with time zone
);


ALTER TABLE sitedb.admin_role OWNER TO postgres;

--
-- TOC entry 1552 (class 1259 OID 17085)
-- Dependencies: 1840 1841 1842 1843 1844 1845 6
-- Name: admin_user; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_user (
    user_id integer NOT NULL,
    user_login character varying(40) DEFAULT NULL::character varying,
    user_name character varying(100) DEFAULT ''::character varying,
    email character varying(100) DEFAULT NULL::character varying,
    crypted_password character varying(40) DEFAULT NULL::character varying,
    salt character varying(40) DEFAULT NULL::character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    remember_token character varying(40) DEFAULT NULL::character varying,
    remember_token_expires_at timestamp with time zone,
    role_id integer NOT NULL
);


ALTER TABLE sitedb.admin_user OWNER TO postgres;

--
-- TOC entry 1551 (class 1259 OID 17083)
-- Dependencies: 6 1552
-- Name: admin_user_user_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE admin_user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.admin_user_user_id_seq OWNER TO postgres;

--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 1551
-- Name: admin_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE admin_user_user_id_seq OWNED BY admin_user.user_id;


--
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 1551
-- Name: admin_user_user_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('admin_user_user_id_seq', 1, false);


--
-- TOC entry 1548 (class 1259 OID 17061)
-- Dependencies: 6
-- Name: examreportstatus; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE examreportstatus (
    examreportstatus_id integer NOT NULL,
    exam_id integer NOT NULL,
    status character(1) NOT NULL,
    status_changed_timestamp timestamp with time zone NOT NULL,
    report_id integer,
    report_text text
);


ALTER TABLE sitedb.examreportstatus OWNER TO postgres;

--
-- TOC entry 1547 (class 1259 OID 17059)
-- Dependencies: 1548 6
-- Name: examreportstatus_examreportstatus_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE examreportstatus_examreportstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.examreportstatus_examreportstatus_id_seq OWNER TO postgres;

--
-- TOC entry 1892 (class 0 OID 0)
-- Dependencies: 1547
-- Name: examreportstatus_examreportstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE examreportstatus_examreportstatus_id_seq OWNED BY examreportstatus.examreportstatus_id;


--
-- TOC entry 1893 (class 0 OID 0)
-- Dependencies: 1547
-- Name: examreportstatus_examreportstatus_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('examreportstatus_examreportstatus_id_seq', 1, false);


--
-- TOC entry 1544 (class 1259 OID 17040)
-- Dependencies: 6
-- Name: exams; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE exams (
    exam_id integer NOT NULL,
    accession_number character varying(50) NOT NULL,
    patient_id integer NOT NULL,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.exams OWNER TO postgres;

--
-- TOC entry 1543 (class 1259 OID 17038)
-- Dependencies: 1544 6
-- Name: exams_exam_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE exams_exam_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.exams_exam_id_seq OWNER TO postgres;

--
-- TOC entry 1894 (class 0 OID 0)
-- Dependencies: 1543
-- Name: exams_exam_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE exams_exam_id_seq OWNED BY exams.exam_id;


--
-- TOC entry 1895 (class 0 OID 0)
-- Dependencies: 1543
-- Name: exams_exam_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('exams_exam_id_seq', 1, false);


--
-- TOC entry 1540 (class 1259 OID 17018)
-- Dependencies: 6
-- Name: jobs; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE jobs (
    job_id integer NOT NULL,
    jobset_id integer NOT NULL,
    exam_id integer NOT NULL,
    status integer NOT NULL,
    status_message character varying,
    documentset_id character varying(50),
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.jobs OWNER TO postgres;

--
-- TOC entry 1539 (class 1259 OID 17016)
-- Dependencies: 1540 6
-- Name: jobs_job_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.jobs_job_id_seq OWNER TO postgres;

--
-- TOC entry 1896 (class 0 OID 0)
-- Dependencies: 1539
-- Name: jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE jobs_job_id_seq OWNED BY jobs.job_id;


--
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 1539
-- Name: jobs_job_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('jobs_job_id_seq', 1, false);


--
-- TOC entry 1538 (class 1259 OID 16999)
-- Dependencies: 6
-- Name: jobsets; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE jobsets (
    jobset_id integer NOT NULL,
    patient_id integer NOT NULL,
    security_question character varying,
    security_answer integer,
    email_address character varying,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.jobsets OWNER TO postgres;

--
-- TOC entry 1537 (class 1259 OID 16997)
-- Dependencies: 6 1538
-- Name: jobsets_jobset_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE jobsets_jobset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.jobsets_jobset_id_seq OWNER TO postgres;

--
-- TOC entry 1898 (class 0 OID 0)
-- Dependencies: 1537
-- Name: jobsets_jobset_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE jobsets_jobset_id_seq OWNED BY jobsets.jobset_id;


--
-- TOC entry 1899 (class 0 OID 0)
-- Dependencies: 1537
-- Name: jobsets_jobset_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('jobsets_jobset_id_seq', 1, false);


--
-- TOC entry 1542 (class 1259 OID 17029)
-- Dependencies: 6
-- Name: patients; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE patients (
    patient_id integer NOT NULL,
    mrn character varying(50) NOT NULL,
    rsna_id character varying(15) NOT NULL,
    patient_name character varying,
    dob date,
    sex character(1),
    street character varying,
    city character varying(50),
    state character varying(30),
    zip_code character varying(30),
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.patients OWNER TO postgres;

--
-- TOC entry 1541 (class 1259 OID 17027)
-- Dependencies: 1542 6
-- Name: patients_patient_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE patients_patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.patients_patient_id_seq OWNER TO postgres;

--
-- TOC entry 1900 (class 0 OID 0)
-- Dependencies: 1541
-- Name: patients_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE patients_patient_id_seq OWNED BY patients.patient_id;


--
-- TOC entry 1901 (class 0 OID 0)
-- Dependencies: 1541
-- Name: patients_patient_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('patients_patient_id_seq', 1, false);


--
-- TOC entry 1550 (class 1259 OID 17072)
-- Dependencies: 6
-- Name: reportauthors; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE reportauthors (
    reportauthor_id integer NOT NULL,
    examreportstatus_id integer NOT NULL,
    signer_name character varying,
    dictator_name character varying,
    transcriber_name character varying,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.reportauthors OWNER TO postgres;

--
-- TOC entry 1549 (class 1259 OID 17070)
-- Dependencies: 6 1550
-- Name: reportauthors_reportauthor_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE reportauthors_reportauthor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.reportauthors_reportauthor_id_seq OWNER TO postgres;

--
-- TOC entry 1902 (class 0 OID 0)
-- Dependencies: 1549
-- Name: reportauthors_reportauthor_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE reportauthors_reportauthor_id_seq OWNED BY reportauthors.reportauthor_id;


--
-- TOC entry 1903 (class 0 OID 0)
-- Dependencies: 1549
-- Name: reportauthors_reportauthor_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('reportauthors_reportauthor_id_seq', 1, false);


--
-- TOC entry 1546 (class 1259 OID 17050)
-- Dependencies: 6
-- Name: studies; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE studies (
    study_id integer NOT NULL,
    study_uid character varying(255) NOT NULL,
    exam_id integer NOT NULL,
    study_description character varying(255),
    study_date timestamp without time zone,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.studies OWNER TO postgres;

--
-- TOC entry 1545 (class 1259 OID 17048)
-- Dependencies: 1546 6
-- Name: studies_study_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE studies_study_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.studies_study_id_seq OWNER TO postgres;

--
-- TOC entry 1904 (class 0 OID 0)
-- Dependencies: 1545
-- Name: studies_study_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE studies_study_id_seq OWNED BY studies.study_id;


--
-- TOC entry 1905 (class 0 OID 0)
-- Dependencies: 1545
-- Name: studies_study_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('studies_study_id_seq', 1, false);


--
-- TOC entry 1533 (class 1259 OID 16624)
-- Dependencies: 6
-- Name: transactions; Type: TABLE; Schema: sitedb; Owner: postgres; Tablespace: 
--

CREATE TABLE transactions (
    transaction_id integer NOT NULL,
    job_id integer NOT NULL,
    status integer NOT NULL,
    status_message character varying,
    modified_user character varying,
    modified_date timestamp with time zone
);


ALTER TABLE sitedb.transactions OWNER TO postgres;

--
-- TOC entry 1532 (class 1259 OID 16622)
-- Dependencies: 1533 6
-- Name: transactions_transaction_id_seq; Type: SEQUENCE; Schema: sitedb; Owner: postgres
--

CREATE SEQUENCE transactions_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE sitedb.transactions_transaction_id_seq OWNER TO postgres;

--
-- TOC entry 1906 (class 0 OID 0)
-- Dependencies: 1532
-- Name: transactions_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: sitedb; Owner: postgres
--

ALTER SEQUENCE transactions_transaction_id_seq OWNED BY transactions.transaction_id;


--
-- TOC entry 1907 (class 0 OID 0)
-- Dependencies: 1532
-- Name: transactions_transaction_id_seq; Type: SEQUENCE SET; Schema: sitedb; Owner: postgres
--

SELECT pg_catalog.setval('transactions_transaction_id_seq', 1, false);


--
-- TOC entry 1831 (class 2604 OID 16661)
-- Dependencies: 1534 1535 1535
-- Name: device_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE admin_devices ALTER COLUMN device_id SET DEFAULT nextval('admin_devices_device_id_seq'::regclass);


--
-- TOC entry 1839 (class 2604 OID 17088)
-- Dependencies: 1552 1551 1552
-- Name: user_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE admin_user ALTER COLUMN user_id SET DEFAULT nextval('admin_user_user_id_seq'::regclass);


--
-- TOC entry 1837 (class 2604 OID 17064)
-- Dependencies: 1547 1548 1548
-- Name: examreportstatus_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE examreportstatus ALTER COLUMN examreportstatus_id SET DEFAULT nextval('examreportstatus_examreportstatus_id_seq'::regclass);


--
-- TOC entry 1835 (class 2604 OID 17043)
-- Dependencies: 1543 1544 1544
-- Name: exam_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE exams ALTER COLUMN exam_id SET DEFAULT nextval('exams_exam_id_seq'::regclass);


--
-- TOC entry 1833 (class 2604 OID 17021)
-- Dependencies: 1540 1539 1540
-- Name: job_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE jobs ALTER COLUMN job_id SET DEFAULT nextval('jobs_job_id_seq'::regclass);


--
-- TOC entry 1832 (class 2604 OID 17002)
-- Dependencies: 1537 1538 1538
-- Name: jobset_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE jobsets ALTER COLUMN jobset_id SET DEFAULT nextval('jobsets_jobset_id_seq'::regclass);


--
-- TOC entry 1834 (class 2604 OID 17032)
-- Dependencies: 1542 1541 1542
-- Name: patient_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE patients ALTER COLUMN patient_id SET DEFAULT nextval('patients_patient_id_seq'::regclass);


--
-- TOC entry 1838 (class 2604 OID 17075)
-- Dependencies: 1550 1549 1550
-- Name: reportauthor_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE reportauthors ALTER COLUMN reportauthor_id SET DEFAULT nextval('reportauthors_reportauthor_id_seq'::regclass);


--
-- TOC entry 1836 (class 2604 OID 17053)
-- Dependencies: 1546 1545 1546
-- Name: study_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE studies ALTER COLUMN study_id SET DEFAULT nextval('studies_study_id_seq'::regclass);


--
-- TOC entry 1830 (class 2604 OID 16627)
-- Dependencies: 1533 1532 1533
-- Name: transaction_id; Type: DEFAULT; Schema: sitedb; Owner: postgres
--

ALTER TABLE transactions ALTER COLUMN transaction_id SET DEFAULT nextval('transactions_transaction_id_seq'::regclass);


--
-- TOC entry 1874 (class 0 OID 16565)
-- Dependencies: 1531
-- Data for Name: admin_config; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY admin_config (key, value, modified_date) FROM stdin;
\.


--
-- TOC entry 1876 (class 0 OID 16658)
-- Dependencies: 1535
-- Data for Name: admin_devices; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY admin_devices (device_id, ae_title, ip_address, port_number, dns_name, modified_date) FROM stdin;
\.


--
-- TOC entry 1877 (class 0 OID 16664)
-- Dependencies: 1536
-- Data for Name: admin_role; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY admin_role (role_id, role_description, modified_date) FROM stdin;
\.


--
-- TOC entry 1885 (class 0 OID 17085)
-- Dependencies: 1552
-- Data for Name: admin_user; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY admin_user (user_id, user_login, user_name, email, crypted_password, salt, created_at, updated_at, remember_token, remember_token_expires_at, role_id) FROM stdin;
\.


--
-- TOC entry 1883 (class 0 OID 17061)
-- Dependencies: 1548
-- Data for Name: examreportstatus; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY examreportstatus (examreportstatus_id, exam_id, status, status_changed_timestamp, report_id, report_text) FROM stdin;
\.


--
-- TOC entry 1881 (class 0 OID 17040)
-- Dependencies: 1544
-- Data for Name: exams; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY exams (exam_id, accession_number, patient_id, modified_date) FROM stdin;
\.


--
-- TOC entry 1879 (class 0 OID 17018)
-- Dependencies: 1540
-- Data for Name: jobs; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY jobs (job_id, jobset_id, exam_id, status, status_message, documentset_id, modified_date) FROM stdin;
\.


--
-- TOC entry 1878 (class 0 OID 16999)
-- Dependencies: 1538
-- Data for Name: jobsets; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY jobsets (jobset_id, patient_id, security_question, security_answer, email_address, modified_date) FROM stdin;
\.


--
-- TOC entry 1880 (class 0 OID 17029)
-- Dependencies: 1542
-- Data for Name: patients; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY patients (patient_id, mrn, rsna_id, patient_name, dob, sex, street, city, state, zip_code, modified_date) FROM stdin;
\.


--
-- TOC entry 1884 (class 0 OID 17072)
-- Dependencies: 1550
-- Data for Name: reportauthors; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY reportauthors (reportauthor_id, examreportstatus_id, signer_name, dictator_name, transcriber_name, modified_date) FROM stdin;
\.


--
-- TOC entry 1882 (class 0 OID 17050)
-- Dependencies: 1546
-- Data for Name: studies; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY studies (study_id, study_uid, exam_id, study_description, study_date, modified_date) FROM stdin;
\.


--
-- TOC entry 1875 (class 0 OID 16624)
-- Dependencies: 1533
-- Data for Name: transactions; Type: TABLE DATA; Schema: sitedb; Owner: postgres
--

COPY transactions (transaction_id, job_id, status, status_message, modified_user, modified_date) FROM stdin;
\.


--
-- TOC entry 1851 (class 2606 OID 16663)
-- Dependencies: 1535 1535
-- Name: pk_device_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_devices
    ADD CONSTRAINT pk_device_id PRIMARY KEY (device_id);


--
-- TOC entry 1861 (class 2606 OID 17045)
-- Dependencies: 1544 1544
-- Name: pk_exam_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exams
    ADD CONSTRAINT pk_exam_id PRIMARY KEY (exam_id);


--
-- TOC entry 1867 (class 2606 OID 17069)
-- Dependencies: 1548 1548
-- Name: pk_examreportstatus_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY examreportstatus
    ADD CONSTRAINT pk_examreportstatus_id PRIMARY KEY (examreportstatus_id);


--
-- TOC entry 1857 (class 2606 OID 17026)
-- Dependencies: 1540 1540
-- Name: pk_job_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT pk_job_id PRIMARY KEY (job_id);


--
-- TOC entry 1855 (class 2606 OID 17008)
-- Dependencies: 1538 1538
-- Name: pk_jobset_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jobsets
    ADD CONSTRAINT pk_jobset_id PRIMARY KEY (jobset_id);


--
-- TOC entry 1847 (class 2606 OID 16572)
-- Dependencies: 1531 1531
-- Name: pk_key; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_config
    ADD CONSTRAINT pk_key PRIMARY KEY (key);


--
-- TOC entry 1859 (class 2606 OID 17037)
-- Dependencies: 1542 1542
-- Name: pk_patient_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patients
    ADD CONSTRAINT pk_patient_id PRIMARY KEY (patient_id);


--
-- TOC entry 1869 (class 2606 OID 17080)
-- Dependencies: 1550 1550
-- Name: pk_reportauthor_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reportauthors
    ADD CONSTRAINT pk_reportauthor_id PRIMARY KEY (reportauthor_id);


--
-- TOC entry 1853 (class 2606 OID 16668)
-- Dependencies: 1536 1536
-- Name: pk_role_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_role
    ADD CONSTRAINT pk_role_id PRIMARY KEY (role_id);


--
-- TOC entry 1865 (class 2606 OID 17058)
-- Dependencies: 1546 1546
-- Name: pk_study_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY studies
    ADD CONSTRAINT pk_study_id PRIMARY KEY (study_id);


--
-- TOC entry 1849 (class 2606 OID 16632)
-- Dependencies: 1533 1533
-- Name: pk_transaction_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT pk_transaction_id PRIMARY KEY (transaction_id);


--
-- TOC entry 1871 (class 2606 OID 17096)
-- Dependencies: 1552 1552
-- Name: pk_user_id; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_user
    ADD CONSTRAINT pk_user_id PRIMARY KEY (user_id);


--
-- TOC entry 1863 (class 2606 OID 17047)
-- Dependencies: 1544 1544 1544
-- Name: uq_exam; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exams
    ADD CONSTRAINT uq_exam UNIQUE (accession_number, patient_id);


--
-- TOC entry 1873 (class 2606 OID 17098)
-- Dependencies: 1552 1552
-- Name: uq_login; Type: CONSTRAINT; Schema: sitedb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_user
    ADD CONSTRAINT uq_login UNIQUE (user_login);


-- Completed on 2010-08-05 08:57:20

--
-- PostgreSQL database dump complete
--

