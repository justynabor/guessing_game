--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    secret_number integer,
    number_of_guesses integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_info_game_id_seq OWNED BY public.game_info.game_id;


--
-- Name: player_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player_info (
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.player_info OWNER TO freecodecamp;

--
-- Name: game_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info ALTER COLUMN game_id SET DEFAULT nextval('public.game_info_game_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (2, 'JUSTYNA', 801, 13);
INSERT INTO public.game_info VALUES (3, 'user_1728311248160', 219, 220);
INSERT INTO public.game_info VALUES (4, 'user_1728311248160', 235, 236);
INSERT INTO public.game_info VALUES (5, 'user_1728311248159', 665, 666);
INSERT INTO public.game_info VALUES (6, 'user_1728311248159', 480, 481);
INSERT INTO public.game_info VALUES (7, 'user_1728311248160', 334, 337);
INSERT INTO public.game_info VALUES (8, 'user_1728311248160', 808, 810);
INSERT INTO public.game_info VALUES (9, 'user_1728311248160', 226, 227);
INSERT INTO public.game_info VALUES (10, 'user_1728311890507', 583, 584);
INSERT INTO public.game_info VALUES (11, 'user_1728311890507', 594, 595);
INSERT INTO public.game_info VALUES (12, 'user_1728311890506', 443, 444);
INSERT INTO public.game_info VALUES (13, 'user_1728311890506', 306, 307);
INSERT INTO public.game_info VALUES (14, 'user_1728311890507', 978, 981);
INSERT INTO public.game_info VALUES (15, 'user_1728311890507', 874, 876);
INSERT INTO public.game_info VALUES (16, 'user_1728311890507', 28, 29);
INSERT INTO public.game_info VALUES (17, 'JUSTYNA', 744, 11);
INSERT INTO public.game_info VALUES (18, 'user_1728312021545', 27, 28);
INSERT INTO public.game_info VALUES (19, 'user_1728312021545', 54, 55);
INSERT INTO public.game_info VALUES (20, 'user_1728312021544', 699, 700);
INSERT INTO public.game_info VALUES (21, 'user_1728312021544', 753, 754);
INSERT INTO public.game_info VALUES (22, 'user_1728312021545', 9, 12);
INSERT INTO public.game_info VALUES (23, 'user_1728312021545', 243, 245);
INSERT INTO public.game_info VALUES (24, 'user_1728312021545', 75, 76);
INSERT INTO public.game_info VALUES (25, 'user_1728312059900', 828, 829);
INSERT INTO public.game_info VALUES (26, 'user_1728312059900', 541, 542);
INSERT INTO public.game_info VALUES (27, 'user_1728312059899', 88, 89);
INSERT INTO public.game_info VALUES (28, 'user_1728312059899', 874, 875);
INSERT INTO public.game_info VALUES (29, 'user_1728312059900', 308, 311);
INSERT INTO public.game_info VALUES (30, 'user_1728312059900', 891, 893);
INSERT INTO public.game_info VALUES (31, 'user_1728312059900', 428, 429);
INSERT INTO public.game_info VALUES (32, 'this', 429, 18);
INSERT INTO public.game_info VALUES (33, 'user_1728312308781', 207, 208);
INSERT INTO public.game_info VALUES (34, 'user_1728312308781', 580, 581);
INSERT INTO public.game_info VALUES (35, 'user_1728312308780', 731, 732);
INSERT INTO public.game_info VALUES (36, 'user_1728312308780', 783, 784);
INSERT INTO public.game_info VALUES (37, 'user_1728312308781', 249, 252);
INSERT INTO public.game_info VALUES (38, 'user_1728312308781', 227, 229);
INSERT INTO public.game_info VALUES (39, 'user_1728312308781', 878, 879);


--
-- Data for Name: player_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: game_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_info_game_id_seq', 39, true);


--
-- Name: game_info game_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (game_id);


--
-- Name: player_info player_info_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player_info
    ADD CONSTRAINT player_info_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

