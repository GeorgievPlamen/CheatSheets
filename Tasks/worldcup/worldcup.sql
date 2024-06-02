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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 371, 372, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 373, 374, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 372, 374, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 371, 373, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 372, 375, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 374, 376, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 373, 377, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 371, 378, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 374, 379, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 376, 380, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 373, 381, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 377, 382, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 372, 383, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 375, 384, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 378, 385, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 371, 386, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 387, 386, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 388, 377, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 386, 388, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 387, 377, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 388, 389, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 386, 373, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 377, 379, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 387, 371, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 377, 390, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 379, 378, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 371, 391, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 387, 392, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 388, 382, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 389, 393, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 386, 380, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 373, 394, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (371, 'France');
INSERT INTO public.teams VALUES (372, 'Croatia');
INSERT INTO public.teams VALUES (373, 'Belgium');
INSERT INTO public.teams VALUES (374, 'England');
INSERT INTO public.teams VALUES (375, 'Russia');
INSERT INTO public.teams VALUES (376, 'Sweden');
INSERT INTO public.teams VALUES (377, 'Brazil');
INSERT INTO public.teams VALUES (378, 'Uruguay');
INSERT INTO public.teams VALUES (379, 'Colombia');
INSERT INTO public.teams VALUES (380, 'Switzerland');
INSERT INTO public.teams VALUES (381, 'Japan');
INSERT INTO public.teams VALUES (382, 'Mexico');
INSERT INTO public.teams VALUES (383, 'Denmark');
INSERT INTO public.teams VALUES (384, 'Spain');
INSERT INTO public.teams VALUES (385, 'Portugal');
INSERT INTO public.teams VALUES (386, 'Argentina');
INSERT INTO public.teams VALUES (387, 'Germany');
INSERT INTO public.teams VALUES (388, 'Netherlands');
INSERT INTO public.teams VALUES (389, 'Costa Rica');
INSERT INTO public.teams VALUES (390, 'Chile');
INSERT INTO public.teams VALUES (391, 'Nigeria');
INSERT INTO public.teams VALUES (392, 'Algeria');
INSERT INTO public.teams VALUES (393, 'Greece');
INSERT INTO public.teams VALUES (394, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 394, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

