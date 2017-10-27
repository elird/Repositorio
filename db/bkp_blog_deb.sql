--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-10-27 03:22:27 PYST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2327 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 41126)
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_id integer,
    resource_type character varying,
    author_id integer,
    author_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE active_admin_comments OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 41124)
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE active_admin_comments_id_seq OWNER TO postgres;

--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 198
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- TOC entry 197 (class 1259 OID 41110)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE admin_users OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 41108)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_users_id_seq OWNER TO postgres;

--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 196
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- TOC entry 195 (class 1259 OID 41090)
-- Name: answer_institutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE answer_institutions (
    id integer NOT NULL,
    answer_id integer,
    institution_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE answer_institutions OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 41088)
-- Name: answer_institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE answer_institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_institutions_id_seq OWNER TO postgres;

--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 194
-- Name: answer_institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE answer_institutions_id_seq OWNED BY answer_institutions.id;


--
-- TOC entry 191 (class 1259 OID 41059)
-- Name: answer_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE answer_questions (
    id integer NOT NULL,
    question_id integer,
    answer_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE answer_questions OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 41057)
-- Name: answer_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE answer_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_questions_id_seq OWNER TO postgres;

--
-- TOC entry 2331 (class 0 OID 0)
-- Dependencies: 190
-- Name: answer_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE answer_questions_id_seq OWNED BY answer_questions.id;


--
-- TOC entry 189 (class 1259 OID 41048)
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE answers (
    id integer NOT NULL,
    contenido text,
    estado integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE answers OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 41046)
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answers_id_seq OWNER TO postgres;

--
-- TOC entry 2332 (class 0 OID 0)
-- Dependencies: 188
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE answers_id_seq OWNED BY answers.id;


--
-- TOC entry 200 (class 1259 OID 41139)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 41020)
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE articles (
    id integer NOT NULL,
    titulo character varying,
    contenido text,
    fecha date,
    estado integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image character varying
);


ALTER TABLE articles OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 41018)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE articles_id_seq OWNER TO postgres;

--
-- TOC entry 2333 (class 0 OID 0)
-- Dependencies: 184
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- TOC entry 183 (class 1259 OID 41009)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categories (
    id integer NOT NULL,
    titulo character varying,
    descripcion text,
    estado integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categories OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 41007)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO postgres;

--
-- TOC entry 2334 (class 0 OID 0)
-- Dependencies: 182
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- TOC entry 193 (class 1259 OID 41079)
-- Name: institutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE institutions (
    id integer NOT NULL,
    nombre character varying,
    direccion character varying,
    ciudad character varying,
    telefono character varying,
    celular character varying,
    latitud double precision,
    longitud double precision,
    estado integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE institutions OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 41077)
-- Name: institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE institutions_id_seq OWNER TO postgres;

--
-- TOC entry 2335 (class 0 OID 0)
-- Dependencies: 192
-- Name: institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE institutions_id_seq OWNED BY institutions.id;


--
-- TOC entry 202 (class 1259 OID 41149)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying,
    body text,
    tags character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE posts OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 41147)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_id_seq OWNER TO postgres;

--
-- TOC entry 2336 (class 0 OID 0)
-- Dependencies: 201
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- TOC entry 187 (class 1259 OID 41037)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE questions (
    id integer NOT NULL,
    titulo character varying,
    estado integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE questions OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 41035)
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO postgres;

--
-- TOC entry 2337 (class 0 OID 0)
-- Dependencies: 186
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- TOC entry 181 (class 1259 OID 41000)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- TOC entry 2144 (class 2604 OID 41129)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- TOC entry 2140 (class 2604 OID 41113)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- TOC entry 2139 (class 2604 OID 41093)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_institutions ALTER COLUMN id SET DEFAULT nextval('answer_institutions_id_seq'::regclass);


--
-- TOC entry 2137 (class 2604 OID 41062)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_questions ALTER COLUMN id SET DEFAULT nextval('answer_questions_id_seq'::regclass);


--
-- TOC entry 2136 (class 2604 OID 41051)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answers ALTER COLUMN id SET DEFAULT nextval('answers_id_seq'::regclass);


--
-- TOC entry 2134 (class 2604 OID 41023)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- TOC entry 2133 (class 2604 OID 41012)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- TOC entry 2138 (class 2604 OID 41082)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institutions ALTER COLUMN id SET DEFAULT nextval('institutions_id_seq'::regclass);


--
-- TOC entry 2145 (class 2604 OID 41152)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- TOC entry 2135 (class 2604 OID 41040)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- TOC entry 2316 (class 0 OID 41126)
-- Dependencies: 199
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY active_admin_comments (id, namespace, body, resource_id, resource_type, author_id, author_type, created_at, updated_at) FROM stdin;
1	admin	Prueba recibida	1	Article	2	AdminUser	2017-10-24 02:07:34.358011	2017-10-24 02:07:34.358011
\.


--
-- TOC entry 2338 (class 0 OID 0)
-- Dependencies: 198
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, true);


--
-- TOC entry 2314 (class 0 OID 41110)
-- Dependencies: 197
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$11$rzU6ti0zcWVdNR3lPjUOcOzFVDDvZxfrY4WIRrpUUnHY8h9f6WIwq	\N	\N	\N	1	2017-10-23 18:48:26.817995	2017-10-23 18:48:26.817995	127.0.0.1	127.0.0.1	2017-10-23 18:48:08.609049	2017-10-23 18:48:26.820169
2	edgar.lird@gmail.com	$2a$11$b9aX/Wf.l7MQArocFCQ14ONNTV2BrvErKsAutF2x75MiGVtBsCsc2	\N	\N	\N	1	2017-10-24 01:56:11.056043	2017-10-24 01:56:11.056043	127.0.0.1	127.0.0.1	2017-10-23 18:48:42.637395	2017-10-24 01:56:11.058628
\.


--
-- TOC entry 2339 (class 0 OID 0)
-- Dependencies: 196
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 2, true);


--
-- TOC entry 2312 (class 0 OID 41090)
-- Dependencies: 195
-- Data for Name: answer_institutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY answer_institutions (id, answer_id, institution_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2340 (class 0 OID 0)
-- Dependencies: 194
-- Name: answer_institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('answer_institutions_id_seq', 1, false);


--
-- TOC entry 2308 (class 0 OID 41059)
-- Dependencies: 191
-- Data for Name: answer_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY answer_questions (id, question_id, answer_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2341 (class 0 OID 0)
-- Dependencies: 190
-- Name: answer_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('answer_questions_id_seq', 1, false);


--
-- TOC entry 2306 (class 0 OID 41048)
-- Dependencies: 189
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY answers (id, contenido, estado, created_at, updated_at) FROM stdin;
1	Todo maltrato que afecte la vida o la integridad física o síquica de quien tenga o haya tenido la calidad de cónyuge del ofensor o una relación de convivencia con él; o sea, pariente por consanguinidad o por afinidad en toda la línea recta o en la colateral hasta el tercer grado inclusive del ofensor, su cónyuge o su actual conviviente, o bien, cuando esta conducta ocurre entre los padres de un hijo común, o sobre un menor de edad, adulto mayor o discapacitado que se encuentre bajo el cuidado o dependencia de cualquiera de los integrantes del grupo familiar.	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
3	-Los Tribunales de familia, cuando los actos de violencia intrafamiliar no constituyan delito.\n-El Ministerio Público, cuando los actos de violencia intrafamiliar constituyan un delito. Este ministerio dará curso a la investigación pertinente en caso de que se presente el delito de maltrato habitual, si el respectivo Juzgado de Familia le ha remitido los antecedentes.\n	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
4	Sí. El Registro Civil e Identificación tiene la obligación de llevar un registro especial de las personas condenadas como autoras de violencia intrafamiliar, así como de las demás resoluciones que la ley ordene transcribir.	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
2	Crea el delito de maltrato habitual que castiga con cárcel la violencia psíquica y física ejercida habitualmente; aumenta las sanciones por este tipo de conductas; modifica el Código Penal, aumentando en un grado las penas de cárcel en caso de lesiones causadas por violencia intrafamiliar; otorga mayores garantías de obtener protección para quienes denuncien maltratos, así como la obligación del agresor de abandonar la casa; la prohibición de que se acerque a la víctima, a su casa o a su lugar de trabajo, así como, a cualquier otro lugar al que ésta concurra o visite habitualmente; la obligación de asistir a terapia; y la facultad concedida a las policías para incautarle toda clase de armas, aunque tenga autorización para tenerlas.	2	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
\.


--
-- TOC entry 2342 (class 0 OID 0)
-- Dependencies: 188
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('answers_id_seq', 1, false);


--
-- TOC entry 2317 (class 0 OID 41139)
-- Dependencies: 200
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-10-25 02:21:34.265969	2017-10-25 02:21:34.265969
\.


--
-- TOC entry 2302 (class 0 OID 41020)
-- Dependencies: 185
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY articles (id, titulo, contenido, fecha, estado, category_id, created_at, updated_at, image) FROM stdin;
1	Prueba	Hola 1	2017-10-23	1	\N	2017-10-24 02:07:21.200661	2017-10-24 02:07:21.200661	\N
\.


--
-- TOC entry 2343 (class 0 OID 0)
-- Dependencies: 184
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('articles_id_seq', 1, true);


--
-- TOC entry 2300 (class 0 OID 41009)
-- Dependencies: 183
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categories (id, titulo, descripcion, estado, created_at, updated_at) FROM stdin;
1	Programacion RoR	Rails	1	2017-10-24 02:40:43.772205	2017-10-24 02:40:43.772205
2	Redes	HOla	1	2017-10-24 02:42:36.081253	2017-10-24 02:42:36.081253
\.


--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 182
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categories_id_seq', 2, true);


--
-- TOC entry 2310 (class 0 OID 41079)
-- Dependencies: 193
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY institutions (id, nombre, direccion, ciudad, telefono, celular, latitud, longitud, estado, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 192
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('institutions_id_seq', 1, false);


--
-- TOC entry 2319 (class 0 OID 41149)
-- Dependencies: 202
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY posts (id, title, body, tags, created_at, updated_at) FROM stdin;
4	aaa	aaaaasssss	dddddd	2017-10-25 02:37:59.438524	2017-10-25 02:37:59.438524
\.


--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 201
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('posts_id_seq', 4, true);


--
-- TOC entry 2304 (class 0 OID 41037)
-- Dependencies: 187
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY questions (id, titulo, estado, created_at, updated_at) FROM stdin;
1	¿Qué es la violencia intrafamiliar?	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
3	¿Qué organismos judiciales se ocupan de la violencia intrafamiliar?	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
4	¿Existe algún registro de las personas que hayan sido condenadas por violencia intrafamiliar?	1	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
2	¿Qué garantías ofrece esta ley?	2	2017-10-24 03:06:55.371948	2017-10-24 03:06:55.371948
\.


--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 186
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('questions_id_seq', 1, true);


--
-- TOC entry 2298 (class 0 OID 41000)
-- Dependencies: 181
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20171019145342
20171019155246
20171019155316
20171019155336
20171019155558
20171019155634
20171019155706
20171019155830
20171019155834
20170406014643
20171026234728
\.


--
-- TOC entry 2171 (class 2606 OID 41134)
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 2167 (class 2606 OID 41121)
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2163 (class 2606 OID 41095)
-- Name: answer_institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_institutions
    ADD CONSTRAINT answer_institutions_pkey PRIMARY KEY (id);


--
-- TOC entry 2157 (class 2606 OID 41064)
-- Name: answer_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_questions
    ADD CONSTRAINT answer_questions_pkey PRIMARY KEY (id);


--
-- TOC entry 2155 (class 2606 OID 41056)
-- Name: answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- TOC entry 2176 (class 2606 OID 41146)
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2150 (class 2606 OID 41028)
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 2148 (class 2606 OID 41017)
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2161 (class 2606 OID 41087)
-- Name: institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);


--
-- TOC entry 2178 (class 2606 OID 41157)
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 2153 (class 2606 OID 41045)
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 2172 (class 1259 OID 41136)
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- TOC entry 2173 (class 1259 OID 41135)
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- TOC entry 2174 (class 1259 OID 41137)
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- TOC entry 2168 (class 1259 OID 41122)
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- TOC entry 2169 (class 1259 OID 41123)
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- TOC entry 2164 (class 1259 OID 41096)
-- Name: index_answer_institutions_on_answer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_answer_institutions_on_answer_id ON answer_institutions USING btree (answer_id);


--
-- TOC entry 2165 (class 1259 OID 41097)
-- Name: index_answer_institutions_on_institution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_answer_institutions_on_institution_id ON answer_institutions USING btree (institution_id);


--
-- TOC entry 2158 (class 1259 OID 41066)
-- Name: index_answer_questions_on_answer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_answer_questions_on_answer_id ON answer_questions USING btree (answer_id);


--
-- TOC entry 2159 (class 1259 OID 41065)
-- Name: index_answer_questions_on_question_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_answer_questions_on_question_id ON answer_questions USING btree (question_id);


--
-- TOC entry 2151 (class 1259 OID 41029)
-- Name: index_articles_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_articles_on_category_id ON articles USING btree (category_id);


--
-- TOC entry 2146 (class 1259 OID 41006)
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- TOC entry 2183 (class 2606 OID 41103)
-- Name: fk_rails_7cbd786550; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_institutions
    ADD CONSTRAINT fk_rails_7cbd786550 FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- TOC entry 2181 (class 2606 OID 41072)
-- Name: fk_rails_7f56ae34fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_questions
    ADD CONSTRAINT fk_rails_7f56ae34fe FOREIGN KEY (answer_id) REFERENCES answers(id);


--
-- TOC entry 2180 (class 2606 OID 41067)
-- Name: fk_rails_8ece0ea7f6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_questions
    ADD CONSTRAINT fk_rails_8ece0ea7f6 FOREIGN KEY (question_id) REFERENCES questions(id);


--
-- TOC entry 2179 (class 2606 OID 41030)
-- Name: fk_rails_af09d53ead; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT fk_rails_af09d53ead FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- TOC entry 2182 (class 2606 OID 41098)
-- Name: fk_rails_f93a3d7097; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY answer_institutions
    ADD CONSTRAINT fk_rails_f93a3d7097 FOREIGN KEY (answer_id) REFERENCES answers(id);


--
-- TOC entry 2326 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-10-27 03:22:28 PYST

--
-- PostgreSQL database dump complete
--

