--
-- PostgreSQL database dump
--

\restrict Rg2fc7BanyARnpL4MfgZ67DgfCnkXcrKmY2IuciLlz5COlkhnGt6fSKIZxn2WSL

-- Dumped from database version 18.4 (Ubuntu 18.4-0ubuntu0.26.04.1)
-- Dumped by pg_dump version 18.4 (Ubuntu 18.4-0ubuntu0.26.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: admin; Type: TABLE; Schema: public; Owner: vivek
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    uid integer,
    email character varying(100),
    name character varying(100),
    password character varying(255),
    phone character varying(15)
);


ALTER TABLE public.admin OWNER TO vivek;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: vivek
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_id_seq OWNER TO vivek;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vivek
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: attendance; Type: TABLE; Schema: public; Owner: vivek
--

CREATE TABLE public.attendance (
    attendance_id integer NOT NULL,
    uid integer,
    attendance_date date DEFAULT CURRENT_DATE,
    login_time timestamp without time zone,
    logout_time timestamp without time zone,
    total_work_time interval,
    status character varying(20) DEFAULT 'Present'::character varying,
    remarks text
);


ALTER TABLE public.attendance OWNER TO vivek;

--
-- Name: attendance_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: vivek
--

CREATE SEQUENCE public.attendance_attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_attendance_id_seq OWNER TO vivek;

--
-- Name: attendance_attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vivek
--

ALTER SEQUENCE public.attendance_attendance_id_seq OWNED BY public.attendance.attendance_id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: vivek
--

CREATE TABLE public.employee (
    uid integer NOT NULL,
    name character varying(255),
    phone character varying(15),
    addr character varying(255),
    addhar character varying(15),
    "position" character varying(100),
    bank_account character varying(50),
    branch_name character varying(100),
    ifsc_code character varying(20),
    upi_id character varying(100),
    monthly_salary numeric(10,2)
);


ALTER TABLE public.employee OWNER TO vivek;

--
-- Name: employee_uid_seq; Type: SEQUENCE; Schema: public; Owner: vivek
--

CREATE SEQUENCE public.employee_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_uid_seq OWNER TO vivek;

--
-- Name: employee_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vivek
--

ALTER SEQUENCE public.employee_uid_seq OWNED BY public.employee.uid;


--
-- Name: leave_request; Type: TABLE; Schema: public; Owner: vivek
--

CREATE TABLE public.leave_request (
    leave_id integer NOT NULL,
    uid integer,
    leave_date date,
    reason text,
    leave_type character varying(20),
    remarks text
);


ALTER TABLE public.leave_request OWNER TO vivek;

--
-- Name: leave_request_leave_id_seq; Type: SEQUENCE; Schema: public; Owner: vivek
--

CREATE SEQUENCE public.leave_request_leave_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.leave_request_leave_id_seq OWNER TO vivek;

--
-- Name: leave_request_leave_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vivek
--

ALTER SEQUENCE public.leave_request_leave_id_seq OWNED BY public.leave_request.leave_id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: vivek
--

CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    uid integer,
    pay_month integer,
    pay_year integer,
    total_work_days integer,
    total_work_hours numeric(10,2),
    monthly_salary numeric(10,2),
    per_day_salary numeric(10,2),
    per_hour_salary numeric(10,2),
    calculated_salary numeric(10,2),
    paid_amount numeric(10,2),
    payment_date timestamp without time zone,
    payment_status character varying(20) DEFAULT 'Pending'::character varying,
    bank_account character varying(50),
    branch_name character varying(100),
    upi_id character varying(100),
    remarks text
);


ALTER TABLE public.payment OWNER TO vivek;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: vivek
--

CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payment_payment_id_seq OWNER TO vivek;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vivek
--

ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: attendance attendance_id; Type: DEFAULT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.attendance ALTER COLUMN attendance_id SET DEFAULT nextval('public.attendance_attendance_id_seq'::regclass);


--
-- Name: employee uid; Type: DEFAULT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.employee ALTER COLUMN uid SET DEFAULT nextval('public.employee_uid_seq'::regclass);


--
-- Name: leave_request leave_id; Type: DEFAULT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.leave_request ALTER COLUMN leave_id SET DEFAULT nextval('public.leave_request_leave_id_seq'::regclass);


--
-- Name: payment payment_id; Type: DEFAULT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: vivek
--

COPY public.admin (id, uid, email, name, password, phone) FROM stdin;
1	1	admin@gmail.com	Admin	12345	9876543210
\.


--
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: vivek
--

COPY public.attendance (attendance_id, uid, attendance_date, login_time, logout_time, total_work_time, status, remarks) FROM stdin;
1	1	2026-06-11	\N	\N	\N	Paid Leave	pata nai
2	2	2026-06-18	\N	\N	\N	Paid Leave	pata nai
3	1	2026-06-18	2026-06-18 20:54:01.266406	2026-06-18 20:54:35.649223	00:00:34.382817	Half Day	\N
4	3	2026-06-18	2026-06-18 21:03:25.026634	2026-06-18 21:03:25.026636	\N	Unpaid Leave	hwllo
5	1	2026-06-19	2026-06-19 07:11:22.17158	\N	\N	Present	\N
6	2	2026-06-19	2026-06-19 07:13:33.404584	\N	\N	Present	\N
7	3	2026-06-19	2026-06-19 13:41:01.602765	\N	\N	Present	\N
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: vivek
--

COPY public.employee (uid, name, phone, addr, addhar, "position", bank_account, branch_name, ifsc_code, upi_id, monthly_salary) FROM stdin;
3	don	123456789	home	123456789012	king	4567891234567890	Mumbai Branch	ICIC0001111	don@ybl	50000.00
1	admin	6545635725	home	12345678912	admin	1234567890123456	Sangmeshwar Branch	SBIN0001234	rutikavhad2211-1@okaxis	25000.00
2	vivek	1234567890	home	123456789012	manager	9876543210123456	Ratnagiri Branch	HDFC0005678	vivekavhad28@oksbi	35000.00
\.


--
-- Data for Name: leave_request; Type: TABLE DATA; Schema: public; Owner: vivek
--

COPY public.leave_request (leave_id, uid, leave_date, reason, leave_type, remarks) FROM stdin;
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: vivek
--

COPY public.payment (payment_id, uid, pay_month, pay_year, total_work_days, total_work_hours, monthly_salary, per_day_salary, per_hour_salary, calculated_salary, paid_amount, payment_date, payment_status, bank_account, branch_name, upi_id, remarks) FROM stdin;
1	1	6	2026	\N	\N	\N	\N	\N	\N	1.02	2026-06-19 11:37:36.18911	Paid	1234567890123456	Sangmeshwar Branch	\N	Salary Paid
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vivek
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Name: attendance_attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vivek
--

SELECT pg_catalog.setval('public.attendance_attendance_id_seq', 7, true);


--
-- Name: employee_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: vivek
--

SELECT pg_catalog.setval('public.employee_uid_seq', 3, true);


--
-- Name: leave_request_leave_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vivek
--

SELECT pg_catalog.setval('public.leave_request_leave_id_seq', 1, false);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vivek
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (uid);


--
-- Name: leave_request leave_request_pkey; Type: CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.leave_request
    ADD CONSTRAINT leave_request_pkey PRIMARY KEY (leave_id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);


--
-- Name: admin admin_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_uid_fkey FOREIGN KEY (uid) REFERENCES public.employee(uid);


--
-- Name: attendance attendance_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_uid_fkey FOREIGN KEY (uid) REFERENCES public.employee(uid);


--
-- Name: leave_request leave_request_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.leave_request
    ADD CONSTRAINT leave_request_uid_fkey FOREIGN KEY (uid) REFERENCES public.employee(uid);


--
-- Name: payment payment_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vivek
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_uid_fkey FOREIGN KEY (uid) REFERENCES public.employee(uid);


--
-- PostgreSQL database dump complete
--

\unrestrict Rg2fc7BanyARnpL4MfgZ67DgfCnkXcrKmY2IuciLlz5COlkhnGt6fSKIZxn2WSL

