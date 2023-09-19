--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constelacao; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelacao (
    constelacao_id integer NOT NULL,
    name character varying(50) NOT NULL,
    descricao text
);


ALTER TABLE public.constelacao OWNER TO freecodecamp;

--
-- Name: constelacao_const_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelacao_const_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelacao_const_id_seq OWNER TO freecodecamp;

--
-- Name: constelacao_const_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelacao_const_id_seq OWNED BY public.constelacao.constelacao_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    distance_from_earth integer,
    galaxy_type character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    has_life boolean,
    moon_type character varying(60)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer,
    distance_from_earth integer,
    star_id integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    size numeric(10,2),
    star_type character varying(59)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelacao constelacao_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelacao ALTER COLUMN constelacao_id SET DEFAULT nextval('public.constelacao_const_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelacao; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelacao VALUES (1, 'Gemini', 'Anchored by dual stars Castor and Pollux');
INSERT INTO public.constelacao VALUES (2, 'Aquarius', 'was said to represent a cup bearer or water bearer');
INSERT INTO public.constelacao VALUES (3, 'Virgo', 'Is the largest constellation of the Zodiac');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'vista a olho nu de dia e de noite', 100, NULL);
INSERT INTO public.galaxy VALUES (2, 'Via Lactea', 'Uma galaxia leitosa com queijos e manteigas a orbitarem', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Tem origem no Mexico', 50000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Buttlerfly', 'constelacao de Virgo.', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'parece um formato de cigarro', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bodes', 'nome do descobridor', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', 9, true, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 7, false, NULL);
INSERT INTO public.moon VALUES (4, 'io', 4, false, NULL);
INSERT INTO public.moon VALUES (5, 'europa', 10, true, NULL);
INSERT INTO public.moon VALUES (6, 'ganymede', 6, false, NULL);
INSERT INTO public.moon VALUES (7, 'callisto', 1, true, NULL);
INSERT INTO public.moon VALUES (8, 'amalthea', 6, false, NULL);
INSERT INTO public.moon VALUES (9, 'himalia', 11, false, NULL);
INSERT INTO public.moon VALUES (10, 'elara', 7, false, NULL);
INSERT INTO public.moon VALUES (11, 'pasiphae', 8, false, NULL);
INSERT INTO public.moon VALUES (12, 'sinope', 1, false, NULL);
INSERT INTO public.moon VALUES (13, 'lysithea', 7, false, NULL);
INSERT INTO public.moon VALUES (14, 'carme', 3, true, NULL);
INSERT INTO public.moon VALUES (15, 'ananke', 3, false, NULL);
INSERT INTO public.moon VALUES (16, 'leda', 7, true, NULL);
INSERT INTO public.moon VALUES (17, 'thebe', 6, false, NULL);
INSERT INTO public.moon VALUES (18, 'adrastea', 3, false, NULL);
INSERT INTO public.moon VALUES (19, 'meltis', 9, false, NULL);
INSERT INTO public.moon VALUES (20, 'callirrhoe', 11, false, NULL);
INSERT INTO public.moon VALUES (21, 'themisto', 4, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Marte', 23, 90, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 7520, NULL, 3, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 86881, NULL, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 3031, NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 72367, NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 31511, NULL, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', 7917, NULL, 3, NULL);
INSERT INTO public.planet VALUES (8, 'Neptuno', 30599, NULL, 3, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1476, NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, 'A.Centauri', 8, NULL, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Lalande', 4, NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, 'ross', 12, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ursa', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sol', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Canis', 3, 1450.00, NULL);
INSERT INTO public.star VALUES (4, 'Scorpii', 3, 1411.00, NULL);
INSERT INTO public.star VALUES (5, 'Cephei', 3, 1263.00, NULL);
INSERT INTO public.star VALUES (6, 'Westerlund', 3, 1241.00, NULL);
INSERT INTO public.star VALUES (7, 'Cassiopeiae', 3, 1190.00, NULL);


--
-- Name: constelacao_const_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelacao_const_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constelacao constelacao_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelacao
    ADD CONSTRAINT constelacao_name_key UNIQUE (name);


--
-- Name: constelacao constelacao_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelacao
    ADD CONSTRAINT constelacao_pkey PRIMARY KEY (constelacao_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_type_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_type_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_type_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

