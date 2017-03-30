--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: configurations; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO configurations VALUES ('iti41-source-id', '1.3.6.1.4.1.19376.2.840.1.1.2.1', '2010-12-20 13:17:12.478876-06');
INSERT INTO configurations VALUES ('iti8-pix-uri', 'mllps://clearinghouse.lifeimage.com:8888', '2011-03-14 20:37:44.484487-05');
INSERT INTO configurations VALUES ('iti8-reg-uri', 'mllps://clearinghouse.lifeimage.com:8890', '2011-03-14 20:38:09.214142-05');
INSERT INTO configurations VALUES ('iti41-endpoint-uri-test', 'https://localhost:9443/', '2011-02-03 19:10:33.864317-06');
INSERT INTO configurations VALUES ('iti41-endpoint-uri', 'https://clearinghouse.lifeimage.com/services/xdsrepositoryb', '2011-03-14 20:41:19.216294-05');
INSERT INTO configurations VALUES ('iti41-socket-timeout', '120', '2011-04-05 12:10:46.354824-05');
INSERT INTO configurations VALUES ('scp-ae-title', 'RSNA-ISN', '2011-01-10 18:35:16.668828-06');
INSERT INTO configurations VALUES ('scu-ae-title', 'RSNA-ISN', '2011-01-10 18:43:13.369949-06');
INSERT INTO configurations VALUES ('consent-expired-days', '90', '2012-03-13 15:56:06.768-05');
INSERT INTO configurations VALUES ('scp-port', '4104', '2012-03-13 15:57:33.549-05');
INSERT INTO configurations VALUES ('scp-release-timeout', '5000', '2012-03-13 15:57:33.549-05');
INSERT INTO configurations VALUES ('scp-request-timeout', '5000', '2012-03-13 15:57:33.549-05');
INSERT INTO configurations VALUES ('max-retries', '10', '2013-02-26 14:57:33.549-06');
INSERT INTO configurations VALUES ('retry-delay-in-mins', '10', '2013-02-26 14:57:33.549-06');
INSERT INTO configurations VALUES ('fail-on-incomplete-study', 'false', '2013-03-04 14:57:33.549-06');
INSERT INTO configurations VALUES ('retrieve-timeout-in-secs', '600', '2013-03-04 14:57:33.549-06');
INSERT INTO configurations VALUES ('search-patient-lastname', 'false', '2014-02-21 12:05:05.933-06');
INSERT INTO configurations VALUES ('secondary-capture-report-enabled', 'true', '2014-02-21 12:05:05.933-06');
INSERT INTO configurations VALUES ('scp-idle-timeout', '60000', '2014-06-18 13:05:05.933-05');
INSERT INTO configurations VALUES ('submit-stats', 'false', '2014-10-16 15:58:33.549-05');
INSERT INTO configurations VALUES ('scp-max-send-pdu-length', '16364', '2015-03-20 13:00:05.933-05');
INSERT INTO configurations VALUES ('scp-max-receive-pdu-length', '16364', '2015-03-20 13:00:05.933-05');
INSERT INTO configurations VALUES ('site_id', 'TBD', '2015-03-31 17:35:16.668828-05');
INSERT INTO configurations VALUES ('tmp-dir-path', '/usr/local/edgeserver/tmp', '2017-02-17 16:05:11.840578-06');


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: devices_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('devices_device_id_seq', 1, true);


--
-- Data for Name: email_configurations; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO email_configurations VALUES ('mail.smtp.from', '', '2015-02-13 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('mail.smtp.host', '', '2015-02-13 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('enable_error_email', 'false', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('enable_patient_email', 'false', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('error_email_recipients', '', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('username', '', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('password', '', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('bounce_email', '', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('reply_to_email', '', '2014-02-21 12:05:05.933-06');
INSERT INTO email_configurations VALUES ('patient_email_subject', 'Your imaging records are ready for viewing', '2017-02-17 16:05:11.677561-06');
INSERT INTO email_configurations VALUES ('patient_email_body', 'Dear $patientname$,<br><br>Your imaging records from $site_id$ are ready for you to pick up online.<br><br> You will need to move them into your Personal Health Record (PHR) account to access your results. If you have not already done so, you can create a PHR account for this purpose using any of the services linked below.<br><br>DICOM Grid: <a href="http://imageshare.dicomgrid.com">http://imageshare.dicomgrid.com</a><br>itMD: <a href="http://share.itMD.net/claim">http://share.itMD.net/claim</a><br>lifeIMAGE: <a href="https://cloud.lifeimage.com/rsna/phr">https://cloud.lifeimage.com/rsna/phr</a><br><br>These PHR systems provide more detailed instructions about how to set up an account and access your images.  If you wish you can choose to try more than one- they’re free.<br><br>General instructions and further information about the Image Share network are available at <a href="http://www.rsna.org/Image_Share.aspx">http://www.rsna.org/Image_Share.aspx</a>. Help and technical support are available during business hours at  <a href="mailto:helpdesk@imsharing.org">helpdesk@imsharing.org</a> | Toll-free: 1-855-IM-SHARING (467-4274).<br><br>We hope you find this service helpful and convenient.<br><br>RSNA Image Share was developed by RSNA and its partners with funding from the National Institute of Biomedical Imaging and Bioengineering.<br><br>Thank you for using RSNA Image Share!', '2017-02-17 16:05:11.677893-06');
INSERT INTO email_configurations VALUES ('error_email_body', 'The following job failed to send to the clearinghouse:

Name: $patientname$
Accession: $accession$
Job ID: $jobid$
Status: $jobstatus$ ($jobstatuscode$)
Error Detail:

$errormsg$', '2017-02-17 16:05:11.678274-06');


--
-- Data for Name: email_jobs; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: email_jobs_email_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('email_jobs_email_job_id_seq', 1, false);


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO patients VALUES (91, 'A-5001-04-1', 'Walters^Edwin^', '1980-12-14', 'M', '5001-04-1 E Adams', 'Washington', 'AL', '41001', NULL, NULL, '2017-03-01 15:53:59.677237-06', NULL);
INSERT INTO patients VALUES (92, 'A-5001-04-2', 'Osgood^Walter^', '1980-12-15', 'M', '5001-04-2 E Adams', 'Warrensberg', 'AR', '41002-2112', NULL, NULL, '2017-03-01 15:53:59.98243-06', NULL);
INSERT INTO patients VALUES (93, 'A-5001-04-3', 'Dewalt^Kim^', '1979-12-14', 'F', '5001-04-3 E Adams', 'Wilderness', 'AL', '41003-2000', NULL, NULL, '2017-03-01 15:54:00.184587-06', NULL);
INSERT INTO patients VALUES (94, 'A-5001-04-4', 'Demarco^K^', '1979-02-11', 'F', '5001-04-4 E Adams', 'Western', 'CA', '41004-1000', NULL, NULL, '2017-03-01 15:54:00.31416-06', NULL);
INSERT INTO patients VALUES (95, 'A-5001-04-6', 'Image^One^', '1979-02-11', 'F', '5001-04-6 E Adams', 'Western', 'CA', '41004-1000', NULL, NULL, '2017-03-01 15:54:03.190456-06', NULL);


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO exams VALUES (102, 'A-5001-04-1F', 91, '', '2017-03-01 15:53:59.798391-06');
INSERT INTO exams VALUES (103, 'A-5001-04-2F', 92, '', '2017-03-01 15:54:00.027287-06');
INSERT INTO exams VALUES (104, 'A-5001-04-3F', 93, '', '2017-03-01 15:54:00.201086-06');
INSERT INTO exams VALUES (105, 'A-5001-04-4F', 94, '', '2017-03-01 15:54:00.330591-06');
INSERT INTO exams VALUES (106, 'A-5001-04-5F', 94, '', '2017-03-01 15:54:00.490324-06');
INSERT INTO exams VALUES (107, 'A-5001-04-6F', 95, '', '2017-03-01 15:54:03.205603-06');


--
-- Name: exams_exam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('exams_exam_id_seq', 107, true);


--
-- Data for Name: hipaa_audit_accession_numbers; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: hipaa_audit_accession_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('hipaa_audit_accession_numbers_id_seq', 388, true);


--
-- Data for Name: hipaa_audit_mrns; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: hipaa_audit_mrns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('hipaa_audit_mrns_id_seq', 2220, true);


--
-- Data for Name: hipaa_audit_views; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO hipaa_audit_views VALUES (1663, '10.242.100.32', 'anonymous', 'http://nibib-32.wustl.edu:3000/', '2017-03-16 09:36:32-05');


--
-- Name: hipaa_audit_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('hipaa_audit_views_id_seq', 1663, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO users VALUES (10, 'user1', 'One User', NULL, NULL, NULL, '2017-03-16 09:36:30.744-05', '2017-03-16 09:36:30.744-05', NULL, NULL, 0, '2017-03-16 09:36:31.206467-05', true);


--
-- Data for Name: job_sets; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: job_sets_job_set_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('job_sets_job_set_id_seq', 112, true);


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO reports VALUES (187, 102, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:53:59.843108-06');
INSERT INTO reports VALUES (188, 103, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:54:00.069207-06');
INSERT INTO reports VALUES (189, 104, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:54:00.22654-06');
INSERT INTO reports VALUES (190, 105, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:54:00.348736-06');
INSERT INTO reports VALUES (191, 106, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:54:00.605057-06');
INSERT INTO reports VALUES (192, 102, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:01.067453-06');
INSERT INTO reports VALUES (193, 103, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:02.695466-06');
INSERT INTO reports VALUES (194, 104, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:02.827192-06');
INSERT INTO reports VALUES (195, 105, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:03.032164-06');
INSERT INTO reports VALUES (196, 106, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:03.130857-06');
INSERT INTO reports VALUES (197, 107, NULL, 'SCHEDULED', '2017-03-01 15:53:00-06', '', '', '', '', '2017-03-01 15:54:03.222241-06');
INSERT INTO reports VALUES (198, 107, NULL, 'FINALIZED', '2017-03-01 15:53:00-06', 'Text report goes here
', '', '', '', '2017-03-01 15:54:03.338574-06');


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('jobs_job_id_seq', 114, true);


--
-- Data for Name: patient_merge_events; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: patient_merge_events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('patient_merge_events_event_id_seq', 1, false);


--
-- Name: patients_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('patients_patient_id_seq', 95, true);


--
-- Name: reports_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('reports_report_id_seq', 198, true);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Data for Name: schema_version; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO schema_version VALUES (0, '4.0.0', '2017-03-20 14:08:13.822883-05');


--
-- Name: schema_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('schema_version_id_seq', 1, false);


--
-- Data for Name: status_codes; Type: TABLE DATA; Schema: public; Owner: edge
--

INSERT INTO status_codes VALUES (31, 'Started processing input data', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (21, 'Waiting for report finalization', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (23, 'Started DICOM C-MOVE', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (30, 'Waiting to start transfer to clearinghouse', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (22, 'Waiting for job delay to expire', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (24, 'Waiting for exam completion', '2013-02-26 14:57:33.549-06');
INSERT INTO status_codes VALUES (32, 'Started KOS generation', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (33, 'Started patient registration', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (34, 'Started document submission', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (40, 'Completed transfer to clearinghouse', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (1, 'Waiting to retrieve images and report', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (-23, 'DICOM C-MOVE failed', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (-21, 'Unable to find images', '2010-10-22 11:59:15.243445-05');
INSERT INTO status_codes VALUES (-32, 'Failed to generate KOS', '2010-11-02 09:39:45.53873-05');
INSERT INTO status_codes VALUES (-30, 'Failed to transfer to clearinghouse', '2010-11-02 09:39:24.901369-05');
INSERT INTO status_codes VALUES (-20, 'Failed to prepare content', '2010-10-22 09:58:07.496506-05');
INSERT INTO status_codes VALUES (-33, 'Failed to register patient with clearinghouse', '2010-11-02 09:40:11.789371-05');
INSERT INTO status_codes VALUES (-34, 'Failed to submit documents to clearinghouse', '2010-11-02 09:40:28.488821-05');
INSERT INTO status_codes VALUES (-24, 'Exam has been canceled', '2014-09-03 15:41:37.99-05');


--
-- Data for Name: studies; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: studies_study_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('studies_study_id_seq', 236, true);


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: edge
--



--
-- Name: transactions_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('transactions_transaction_id_seq', 16078, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: edge
--

SELECT pg_catalog.setval('users_user_id_seq', 10, true);


--
-- PostgreSQL database dump complete
--

