--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 883, 2);
INSERT INTO public.games VALUES (2, 951, 2);
INSERT INTO public.games VALUES (3, 547, 3);
INSERT INTO public.games VALUES (4, 140, 3);
INSERT INTO public.games VALUES (5, 564, 2);
INSERT INTO public.games VALUES (6, 958, 2);
INSERT INTO public.games VALUES (7, 518, 2);
INSERT INTO public.games VALUES (8, 196, 4);
INSERT INTO public.games VALUES (9, 28, 4);
INSERT INTO public.games VALUES (10, 18, 5);
INSERT INTO public.games VALUES (11, 950, 5);
INSERT INTO public.games VALUES (12, 212, 4);
INSERT INTO public.games VALUES (13, 780, 4);
INSERT INTO public.games VALUES (14, 433, 4);
INSERT INTO public.games VALUES (15, 912, 6);
INSERT INTO public.games VALUES (16, 290, 6);
INSERT INTO public.games VALUES (17, 85, 7);
INSERT INTO public.games VALUES (18, 247, 7);
INSERT INTO public.games VALUES (19, 428, 6);
INSERT INTO public.games VALUES (20, 931, 6);
INSERT INTO public.games VALUES (21, 260, 6);
INSERT INTO public.games VALUES (22, 8, 8);
INSERT INTO public.games VALUES (23, 535, 9);
INSERT INTO public.games VALUES (24, 505, 9);
INSERT INTO public.games VALUES (25, 515, 10);
INSERT INTO public.games VALUES (26, 486, 10);
INSERT INTO public.games VALUES (27, 580, 9);
INSERT INTO public.games VALUES (28, 259, 9);
INSERT INTO public.games VALUES (29, 241, 9);
INSERT INTO public.games VALUES (30, 12, 8);
INSERT INTO public.games VALUES (31, 655, 11);
INSERT INTO public.games VALUES (32, 568, 11);
INSERT INTO public.games VALUES (33, 335, 12);
INSERT INTO public.games VALUES (34, 949, 12);
INSERT INTO public.games VALUES (35, 943, 11);
INSERT INTO public.games VALUES (36, 443, 11);
INSERT INTO public.games VALUES (37, 762, 11);
INSERT INTO public.games VALUES (38, 8, 13);
INSERT INTO public.games VALUES (39, 547, 13);
INSERT INTO public.games VALUES (40, 754, 14);
INSERT INTO public.games VALUES (41, 747, 14);
INSERT INTO public.games VALUES (42, 711, 13);
INSERT INTO public.games VALUES (43, 134, 13);
INSERT INTO public.games VALUES (44, 399, 13);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1793543691776');
INSERT INTO public.users VALUES (2, 'user_1793543723660');
INSERT INTO public.users VALUES (3, 'user_1793543723659');
INSERT INTO public.users VALUES (4, 'user_1793543823540');
INSERT INTO public.users VALUES (5, 'user_1793543823539');
INSERT INTO public.users VALUES (6, 'user_1793543902529');
INSERT INTO public.users VALUES (7, 'user_1793543902528');
INSERT INTO public.users VALUES (8, 'vrushabh');
INSERT INTO public.users VALUES (9, 'user_1793543957519');
INSERT INTO public.users VALUES (10, 'user_1793543957518');
INSERT INTO public.users VALUES (11, 'user_1793544325322');
INSERT INTO public.users VALUES (12, 'user_1793544325321');
INSERT INTO public.users VALUES (13, 'user_1793544353295');
INSERT INTO public.users VALUES (14, 'user_1793544353294');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

