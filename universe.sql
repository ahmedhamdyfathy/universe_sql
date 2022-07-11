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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(150) NOT NULL,
    galaxy_num numeric(7,3) NOT NULL,
    galaxy_type character varying(150) NOT NULL,
    galaxy_shap character varying(150)
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
    brightness boolean NOT NULL,
    size integer NOT NULL,
    density integer NOT NULL,
    orbit_name character varying(90) NOT NULL
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
    name character varying(150) NOT NULL,
    num_of_moon integer NOT NULL,
    mass double precision NOT NULL,
    diameter integer NOT NULL
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
    brightness boolean NOT NULL,
    size integer NOT NULL,
    color character varying(50) NOT NULL,
    galaxy_id integer
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
-- Name: universall; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universall (
    universall_id bigint NOT NULL,
    name character varying(150) NOT NULL,
    univers_shape text NOT NULL,
    univers_size bigint
);


ALTER TABLE public.universall OWNER TO freecodecamp;

--
-- Name: univers_all_univers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.univers_all_univers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.univers_all_univers_id_seq OWNER TO freecodecamp;

--
-- Name: univers_all_univers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.univers_all_univers_id_seq OWNED BY public.universall.universall_id;


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
-- Name: universall universall_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universall ALTER COLUMN universall_id SET DEFAULT nextval('public.univers_all_univers_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1.000, 'type1', 'shap1');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2.000, 'type2', 'shap2');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3.000, 'type3', 'shap3');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4.000, 'type4', 'shap4');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5000.000, 'type5', 'shap5');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6000.000, 'type6', 'shap6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', false, 500, 66, 'orbit1');
INSERT INTO public.moon VALUES (2, 'm2', true, 600, 55, 'orbit2');
INSERT INTO public.moon VALUES (3, 'm3', false, 700, 80, 'orbit3');
INSERT INTO public.moon VALUES (4, 'm4', false, 5010, 466, 'orbit4');
INSERT INTO public.moon VALUES (5, 'm5', true, 1600, 455, 'orbit5');
INSERT INTO public.moon VALUES (6, 'm6', false, 8700, 890, 'orbit6');
INSERT INTO public.moon VALUES (7, 'm7', false, 7010, 456, 'orbit7');
INSERT INTO public.moon VALUES (8, 'm8', true, 16100, 4255, 'orbit8');
INSERT INTO public.moon VALUES (9, 'm9', false, 84700, 1890, 'orbit9');
INSERT INTO public.moon VALUES (10, 'm10', false, 701, 4856, 'orbit10');
INSERT INTO public.moon VALUES (11, 'm11', true, 1617, 4895, 'orbit11');
INSERT INTO public.moon VALUES (12, 'm12', false, 8474, 1870, 'orbit12');
INSERT INTO public.moon VALUES (13, 'm13', true, 54558, 56685, 'orbit13');
INSERT INTO public.moon VALUES (15, 'm14', false, 54522258, 56685, 'orbit14');
INSERT INTO public.moon VALUES (16, 'm15', true, 585899, 44444, 'orbit15');
INSERT INTO public.moon VALUES (17, 'm16', false, 77777, 88888, 'orbit16');
INSERT INTO public.moon VALUES (18, 'm17', true, 111111, 22222, 'orbit17');
INSERT INTO public.moon VALUES (19, 'm18', false, 8889898, 78797979, 'orbit18');
INSERT INTO public.moon VALUES (20, 'm19', true, 121212, 2525252, 'orbit19');
INSERT INTO public.moon VALUES (21, 'm20', false, 4445555, 8585859, 'orbit20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'emerson', 4100, 226.29, 12666);
INSERT INTO public.planet VALUES (2, 'kalbe', 55545, 585.58, 657485);
INSERT INTO public.planet VALUES (3, 'vina', 54557, 666.55, 547854);
INSERT INTO public.planet VALUES (4, 'kelper', 4444, 777.77, 88888);
INSERT INTO public.planet VALUES (5, 'thopre', 54875, 888.12, 66787);
INSERT INTO public.planet VALUES (6, 'kristin', 545454, 777.23, 11111);
INSERT INTO public.planet VALUES (7, 'A1', 12345, 123.45, 14789);
INSERT INTO public.planet VALUES (8, 'A2', 12369, 1598.6, 35741);
INSERT INTO public.planet VALUES (9, 'A3', 159875, 1458.36, 458789);
INSERT INTO public.planet VALUES (10, 'A4', 14245, 12375.22, 1471111);
INSERT INTO public.planet VALUES (11, 'A5', 11111, 12222.1, 333333);
INSERT INTO public.planet VALUES (12, 'A6', 44444, 444.558, 7778889);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', true, 100000, 'red', NULL);
INSERT INTO public.star VALUES (2, 'star2', false, 200000, 'yellow', NULL);
INSERT INTO public.star VALUES (3, 'star3', true, 300000, 'green', NULL);
INSERT INTO public.star VALUES (4, 'star4', false, 400000, 'blue', NULL);
INSERT INTO public.star VALUES (5, 'star5', true, 500000, 'black', NULL);
INSERT INTO public.star VALUES (6, 'star6', false, 600000, 'ceyain', NULL);


--
-- Data for Name: universall; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universall VALUES (1, 'univers1', 'round1', 1000000);
INSERT INTO public.universall VALUES (2, 'univers2', 'round2', 2000000);
INSERT INTO public.universall VALUES (3, 'univers3', 'round3', 3000000);
INSERT INTO public.universall VALUES (4, 'univers4', 'round4', 4000000);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: univers_all_univers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.univers_all_univers_id_seq', 4, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uc_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uc_galaxy UNIQUE (galaxy_shap);


--
-- Name: moon uc_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uc_moon UNIQUE (orbit_name);


--
-- Name: planet uc_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uc_planet UNIQUE (diameter);


--
-- Name: star uc_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uc_star UNIQUE (galaxy_id);


--
-- Name: universall uc_univers_all; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universall
    ADD CONSTRAINT uc_univers_all UNIQUE (univers_size);


--
-- Name: galaxy unique_galaxy_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_type UNIQUE (galaxy_type);


--
-- Name: planet unique_mass; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_mass UNIQUE (mass);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_orbit_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_orbit_name UNIQUE (orbit_name);


--
-- Name: moon unique_size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_size UNIQUE (size);


--
-- Name: universall universall_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universall
    ADD CONSTRAINT universall_pkey PRIMARY KEY (universall_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

