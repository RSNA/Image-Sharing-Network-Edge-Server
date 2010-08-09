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
    user_id SERIAL PRIMARY KEY,
    user_login character varying(40) DEFAULT NULL::character varying,
    user_name character varying(100) DEFAULT ''::character varying,
    email character varying(100) DEFAULT NULL::character varying,
    crypted_password character varying(40) DEFAULT NULL::character varying,
    salt character varying(40) DEFAULT NULL::character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    remember_token character varying(40) DEFAULT NULL::character varying,
    remember_token_expires_at timestamp with time zone,
    role integer NOT NULL
);


-------------------------------------------------------
-------------------- Exams Table ----------------------
-------------------------------------------------------
CREATE TABLE exams (
    exam_id SERIAL PRIMARY KEY,
    accession_number character varying(50) NOT NULL,
    patient_id integer NOT NULL,
    modified_date timestamp with time zone
);


-------------------------------------------------------
-------------------- Jobs Table -----------------------
-------------------------------------------------------
CREATE TABLE jobs (
    job_id SERIAL PRIMARY KEY,
    job_set_id integer NOT NULL,
    exam_id integer NOT NULL,
    report_id integer NOT NULL,
    status integer NOT NULL,
    status_message character varying,
    documentset_id character varying(50),
    modified_date timestamp with time zone
);


-------------------------------------------------------
------------------- Job Sets Table --------------------
-------------------------------------------------------
CREATE TABLE job_sets (
    job_set_id SERIAL PRIMARY KEY,
    patient_id integer NOT NULL,
    user_id integer NOT NULL,
    security_question character varying,
    security_answer integer,
    email_address character varying,
    modified_date timestamp with time zone
);


-------------------------------------------------------
-------------------- Patients Table -------------------
-------------------------------------------------------
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
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


-------------------------------------------------------
-------------------- Reports Table --------------------
-------------------------------------------------------
CREATE TABLE reports (
    report_id SERIAL PRIMARY KEY,
    patient_id integer NOT NULL,
    exam_id integer NOT NULL,
    proc_code character varying,
    report_status character varying NOT NULL,
    report_text text NOT NULL,
    modified_date timestamp with time zone
);


-------------------------------------------------------
---------------- Report Authors Table -----------------
-------------------------------------------------------
CREATE TABLE report_authors (
    report_author_id SERIAL PRIMARY KEY,
    report_id integer NOT NULL,
    signer_name character varying,
    dictator_name character varying,
    transcriber_name character varying,
    modified_date timestamp with time zone
);


