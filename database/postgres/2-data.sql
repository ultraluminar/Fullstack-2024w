--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

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

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public."user" (id, "isAdmin", username, password_hash, email, "createdAt") FROM stdin;
1	t	admin	$2b$10$dGB1X48Kr2VlnlBlyXXDd.ezbAtp3HnRU026ohqCpErO0UjsZVe7u	admin@example.com	2025-01-19 21:47:16.083377
2	f	user1	$2b$10$PWKjAzyH3FzeU5LKa6bYg.wJSPku5.wmEvLrY6nCJLCX3HO1N/h7C	user1@example.com	2025-01-19 21:50:23.078189
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.question (id, title, body, "createdAt", "updatedAt", "userId") FROM stdin;
1	Wie mache ich ein Fullstack Projekt in kurzer Zeit?	Hab morgen meine Prüfung. Lässt sich das bis dahin machen? War nicht in den Lesungen und hab auch keine anderen Vorkentnisse. LG user1	2025-01-19 21:53:50.70753	2025-01-19 21:53:50.70753	2
\.


--
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.answer (id, body, "createdAt", "updatedAt", "userId", "questionId") FROM stdin;
1	Wie kannst du es wagst so etwas hier zu fragen?	2025-01-19 21:56:53.063669	2025-01-19 21:56:53.063669	1	1
2	Ich werde diese Frage löschen!	2025-01-19 21:57:20.553152	2025-01-19 21:57:20.553152	1	1
\.


--
-- Name: answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.answer_id_seq', 2, true);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.question_id_seq', 1, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.user_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--
