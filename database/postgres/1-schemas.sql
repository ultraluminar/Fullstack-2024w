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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: answer; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.answer (
    id integer NOT NULL,
    body text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "userId" integer,
    "questionId" integer
);


ALTER TABLE public.answer OWNER TO "db-user";

--
-- Name: answer_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answer_id_seq OWNER TO "db-user";

--
-- Name: answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.answer_id_seq OWNED BY public.answer.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.question (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    body text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "userId" integer
);


ALTER TABLE public.question OWNER TO "db-user";

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_id_seq OWNER TO "db-user";

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    "isAdmin" boolean DEFAULT false NOT NULL,
    username character varying(30) NOT NULL,
    password_hash character varying NOT NULL,
    email text NOT NULL,
    createdAt timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public."user" OWNER TO "db-user";

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO "db-user";

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: answer id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.answer ALTER COLUMN id SET DEFAULT nextval('public.answer_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: question PK_21e5786aa0ea704ae185a79b2d5; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT "PK_21e5786aa0ea704ae185a79b2d5" PRIMARY KEY (id);


--
-- Name: answer PK_9232db17b63fb1e94f97e5c224f; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT "PK_9232db17b63fb1e94f97e5c224f" PRIMARY KEY (id);


--
-- Name: user PK_cace4a159ff9f2512dd42373760; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);


--
-- Name: answer FK_5a26907efcd78a856c8af5829e6; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT "FK_5a26907efcd78a856c8af5829e6" FOREIGN KEY ("userId") REFERENCES public."user"(id);


--
-- Name: question FK_80f29cc01d0bd1644e389cc13be; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT "FK_80f29cc01d0bd1644e389cc13be" FOREIGN KEY ("userId") REFERENCES public."user"(id);


--
-- Name: answer FK_a4013f10cd6924793fbd5f0d637; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT "FK_a4013f10cd6924793fbd5f0d637" FOREIGN KEY ("questionId") REFERENCES public.question(id);


--
-- PostgreSQL database dump complete
--
