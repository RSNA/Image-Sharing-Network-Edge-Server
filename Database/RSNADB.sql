------ RSNA NIBIB Edge Device Table Definitions ------

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

-------------------------------------------------------
-------------------- Users Table ----------------------
-------------------------------------------------------
CREATE TABLE users (
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


CREATE SEQUENCE users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;

SELECT pg_catalog.setval('users_user_id_seq', 1, false);


-------------------------------------------------------
-------------------- Exams Table ----------------------
-------------------------------------------------------
CREATE TABLE exams (
    exam_id integer NOT NULL,
    accession_number character varying(50) NOT NULL,
    patient_id integer NOT NULL,
    modified_date timestamp with time zone
);


CREATE SEQUENCE exams_exam_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

ALTER SEQUENCE exams_exam_id_seq OWNED BY exams.exam_id;

SELECT pg_catalog.setval('exams_exam_id_seq', 1, false);

ALTER TABLE exams ALTER COLUMN exam_id SET DEFAULT nextval('exams_exam_id_seq'::regclass);

ALTER TABLE ONLY exams
    ADD CONSTRAINT pk_exam_id PRIMARY KEY (exam_id);

-------------------------------------------------------
-------------------- Jobs Table -----------------------
-------------------------------------------------------
CREATE TABLE jobs (
    job_id integer NOT NULL,
    job_set_id integer NOT NULL,
    exam_id integer NOT NULL,
    report_id integer NOT NULL,
    status integer NOT NULL,
    status_message character varying,
    documentset_id character varying(50),
    modified_date timestamp with time zone
);


CREATE SEQUENCE jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

ALTER SEQUENCE jobs_job_id_seq OWNED BY jobs.job_id;

SELECT pg_catalog.setval('jobs_job_id_seq', 1, false);

ALTER TABLE jobs ALTER COLUMN job_id SET DEFAULT nextval('jobs_job_id_seq'::regclass);

ALTER TABLE ONLY jobs
    ADD CONSTRAINT pk_job_id PRIMARY KEY (job_id);

-------------------------------------------------------
------------------- Job Sets Table --------------------
-------------------------------------------------------
CREATE TABLE job_sets (
    job_set_id integer NOT NULL,
    patient_id integer NOT NULL,
    user_id integer NOT NULL,
    security_question character varying,
    security_answer integer,
    email_address character varying,
    modified_date timestamp with time zone
);


CREATE SEQUENCE job_sets_job_set_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER SEQUENCE job_sets_job_set_id_seq OWNED BY job_sets.job_set_id;

SELECT pg_catalog.setval('job_sets_job_set_id_seq', 1, false);

ALTER TABLE job_sets ALTER COLUMN job_set_id SET DEFAULT nextval('job_sets_job_set_id_seq'::regclass);

ALTER TABLE ONLY job_sets
    ADD CONSTRAINT pk_job_set_id PRIMARY KEY (job_set_id);


-------------------------------------------------------
-------------------- Patients Table -------------------
-------------------------------------------------------
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


CREATE SEQUENCE patients_patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER SEQUENCE patients_patient_id_seq OWNED BY patients.patient_id;

SELECT pg_catalog.setval('patients_patient_id_seq', 1, false);

ALTER TABLE patients ALTER COLUMN patient_id SET DEFAULT nextval('patients_patient_id_seq'::regclass);

ALTER TABLE ONLY patients
    ADD CONSTRAINT pk_patient_id PRIMARY KEY (patient_id);


-------------------------------------------------------
-------------------- Reports Table --------------------
-------------------------------------------------------
CREATE TABLE reports (
    report_id integer NOT NULL,
    patient_id integer NOT NULL,
    exam_id integer NOT NULL,
    proc_code character varying,
    report_status character varying NOT NULL,
    report_text text NOT NULL,
    modified_date timestamp with time zone
);


CREATE SEQUENCE reports_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER SEQUENCE reports_report_id_seq OWNED BY reports.report_id;

SELECT pg_catalog.setval('reports_report_id_seq', 1, false);

ALTER TABLE reports ALTER COLUMN report_id SET DEFAULT nextval('reports_report_id_seq'::regclass);

ALTER TABLE ONLY reports
    ADD CONSTRAINT pk_report_id PRIMARY KEY (report_id);


-------------------------------------------------------
---------------- Report Authors Table -----------------
-------------------------------------------------------
CREATE TABLE report_authors (
    report_author_id integer NOT NULL,
    report_id integer NOT NULL,
    signer_name character varying,
    dictator_name character varying,
    transcriber_name character varying,
    modified_date timestamp with time zone
);


CREATE SEQUENCE report_authors_report_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER SEQUENCE report_authors_report_author_id_seq OWNED BY report_authors.report_author_id;

SELECT pg_catalog.setval('report_authors_report_author_id_seq', 1, false);

ALTER TABLE report_authors ALTER COLUMN report_author_id SET DEFAULT nextval('report_authors_report_author_id_seq'::regclass);

ALTER TABLE ONLY report_authors
    ADD CONSTRAINT pk_report_author_id PRIMARY KEY (report_author_id);


