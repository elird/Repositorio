--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-10-27 07:39:19 PYST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2299 (class 0 OID 18390)
-- Dependencies: 199
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 198
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- TOC entry 2297 (class 0 OID 18374)
-- Dependencies: 197
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: usuario
--

INSERT INTO admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) VALUES (1, 'admin@example.com', '$2a$11$K0vwfVYpqZZDukdwdg5Y2.alt./l19TDM/Iu4BySwOSlRfuumO4VW', NULL, NULL, '2017-10-27 10:00:51.580923', 2, '2017-10-27 10:00:51.608279', '2017-10-24 14:11:20.495941', '127.0.0.1', '127.0.0.1', '2017-10-24 14:06:30.179647', '2017-10-27 10:00:51.612152');


--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 196
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- TOC entry 2289 (class 0 OID 18312)
-- Dependencies: 189
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2293 (class 0 OID 18343)
-- Dependencies: 193
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2295 (class 0 OID 18354)
-- Dependencies: 195
-- Data for Name: answer_institutions; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 194
-- Name: answer_institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('answer_institutions_id_seq', 1, false);


--
-- TOC entry 2287 (class 0 OID 18301)
-- Dependencies: 187
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2291 (class 0 OID 18323)
-- Dependencies: 191
-- Data for Name: answer_questions; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 190
-- Name: answer_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('answer_questions_id_seq', 1, false);


--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 188
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('answers_id_seq', 1, false);


--
-- TOC entry 2283 (class 0 OID 18273)
-- Dependencies: 183
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: usuario
--

INSERT INTO categories (id, titulo, descrip, estago, created_at, updated_at) VALUES (1, 'Noticias', 'Contiene todas las noticias relevantes del proyecto.', 1, '2017-10-27 10:02:01.000583', '2017-10-27 10:02:01.000583');
INSERT INTO categories (id, titulo, descrip, estago, created_at, updated_at) VALUES (2, 'Blog', 'Contiene los Artículos creados por los miembros del grupo.', 1, '2017-10-27 10:03:06.985583', '2017-10-27 10:03:06.985583');


--
-- TOC entry 2285 (class 0 OID 18284)
-- Dependencies: 185
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: usuario
--

INSERT INTO articles (id, titulo, contenido, fecha, estado, category_id, created_at, updated_at, image) VALUES (1, 'Médica colaboró para detener a padrastro golpeador en Ybycuí', '<p>Una médica de Santa Ángela, a 17 kilómetros de Ybycuí, ayudó a los policías a capturar a un hombre que torturó a su hijastro.</p>

La doctora Rebeca Escobar manifestó en Monumental AM que ella decidió colaborar con la Policía Nacional para capturar al hombre que torturó a su hijastro de 8 años, luego de ver las lesiones que presentaba la víctima.

"Le pesamos, le medimos, le tomamos la temperatura. Luego, cuando le pregunto dónde tiene los golpes, me levanta la remerita y lo que vi me impactó; fue impresionante ver esas lesiones en todo el cuerpo del chico", expresó. El niño tenía hematomas por todo el tórax, lesiones nuevas, viejas y cicatrices. A ella le tocó incluso como madre, porque tiene dos hijas pequeñas.

El padrastro admitió la golpiza, pero alegó que lo hizo porque el niño llegó a la vivienda con objetos ajenos más de una vez, que sospechaba eran robados. Sin embargo, el niño y vecinos dijeron que las golpizas eran constantes. En una ocasión ya se marchó de su casa y fue a lo de una vecina, a quien llama tía, donde se siente a gusto.

Escobar conoció el caso el viernes en horas de la mañana. Luego de hacerle la inspección a la víctima, supuso que nuevamente volvería a su casa con su padrastro maltratador. Entonces decidió ir a visitarlo, acompañada de agentes policiales.

No obstante, los efectivos solo tenían una orden de detención y no de allanamiento, por lo que necesitaban que el hombre saliera a la vía pública para poder aprehenderlo.

La propia médica, en compañía de una enfermera, se ofreció para participar del plan de captura y, mientras los uniformados permanecieron escondidos, logró persuadir al hombre para que saliera, y así se logró su aprehensión.

Pero la galena se llevó la sorpresa cuando la propia madre de la víctima le recriminó su acción, en tanto que el niño quedó a cargo de una vecina.

<h3>No es el primer caso de violencia</h3>

Escobar también recordó otro caso que tuvo hace unos años en Acahay. Un día una mujer llegó con un bebé en brazos, que presentaba quemaduras en un pie. Alegó que se quemó con una mecha casera para hacer fuego, lo cual a Escobar le pareció raro, porque aún no caminaba. Tenía que volver al centro de salud para la curación al día siguiente, pero no lo hizo.

Entonces la doctora decidió pasar por la vivienda durante un recorrido que hace para brindar atención. Vio que la casa tenía un fogón, por lo que preguntó nuevamente a la madre para que diga qué le pasó al bebé y, finalmente, ella admitió que su marido le había provocado esas heridas al hijastro.

Tanto el hombre como la mujer terminaron en la cárcel porque la madre tenía una causa abierta por violencia intrafamiliar contra una hija de 3 años.

En ese sentido, la entrevistada aseguró que hay más casos de violencia en la zona, pero no se denuncian. ', '2017-10-29', 1, 1, '2017-10-27 10:08:05.924709', '2017-10-27 10:08:56.349066', 'http://media.ultimahora.com/adjuntos/161/imagenes/007/514/0007514919.jpg');
INSERT INTO articles (id, titulo, contenido, fecha, estado, category_id, created_at, updated_at, image) VALUES (2, 'Confirman más de 4.800 casos de violencia intrafamiliar', 'En lo que va del año, más de 4.800 mujeres denunciaron ser víctimas de violencia intrafamiliar. Esta cifra que va en aumento en comparación a la del 2016, solo contemplan los casos denunciados ante las autoridades.
 La cantidad de denuncias realizadas por violencia intrafamiliar, en la que los agredidos son mujeres y niños, es sumamente alarmante. Según el Ministerio de la Mujer, más de 4.800 víctimas realizaron denuncias por casos de agresión en el seno familiar.
Esta cifra tiende a mostrar un aumento considerable, teniendo en cuenta la cantidad de casos presentados en un análisis realizado del 2014 al 2017. Los expertos del Ministerio de la Mujer, indican que las estadísticas sobre llamadas de denuncias recibidas, en el 2014 se registraron 12.139 casos; en el 2015 fueron 11.237 y en el 2016 se notó un descenso considerable, ya que se registraron 9.276 denuncias.
 
Por otra parte, el incremento en el 2017 es considerablemente alto al del año pasado, considerando que los reportes son de enero a julio, y estas ascienden a unas 4.868 denuncias vía llamadas telefónicas de supuestas víctimas. Estas informaciones aún no contemplan las situaciones registradas hasta la fecha.
 
El Ministerio de la Mujer, cuenta con la línea telefónica 137 SOS Mujer, habilitada para que las víctimas de violencia doméstica, sus familiares o cualquier persona que sepa de la agresión pueda solicitar ayuda para salir del cuadro represivo con ayuda profesional.', '2017-09-30', 1, 1, '2017-10-27 10:34:21.999746', '2017-10-27 10:34:21.999746', 'http://cdn.paraguay.com/photos/images/000/158/858/regular_violencia.jpg.jpg?1504694570');


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 184
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('articles_id_seq', 2, true);


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 182
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('categories_id_seq', 2, true);


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 192
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('institutions_id_seq', 1, false);


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 186
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- TOC entry 2281 (class 0 OID 18264)
-- Dependencies: 181
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: usuario
--

INSERT INTO schema_migrations (version) VALUES ('20171019145342');
INSERT INTO schema_migrations (version) VALUES ('20171019155246');
INSERT INTO schema_migrations (version) VALUES ('20171019155316');
INSERT INTO schema_migrations (version) VALUES ('20171019155336');
INSERT INTO schema_migrations (version) VALUES ('20171019155558');
INSERT INTO schema_migrations (version) VALUES ('20171019155634');
INSERT INTO schema_migrations (version) VALUES ('20171019155706');
INSERT INTO schema_migrations (version) VALUES ('20171019155830');
INSERT INTO schema_migrations (version) VALUES ('20171019155834');
INSERT INTO schema_migrations (version) VALUES ('20171026234728');


-- Completed on 2017-10-27 07:39:26 PYST

--
-- PostgreSQL database dump complete
--

