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
    name character varying(20) NOT NULL,
    diameter_in_light_years integer,
    star_quantity integer,
    age_in_millions_of_years numeric(20,2),
    description text,
    its_huge boolean,
    its_beautiful boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: life_unit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_unit (
    life_unit_id integer NOT NULL,
    name character varying(10) NOT NULL,
    race text,
    planet_id integer
);


ALTER TABLE public.life_unit OWNER TO freecodecamp;

--
-- Name: life_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_unit_id_seq OWNER TO freecodecamp;

--
-- Name: life_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_unit_id_seq OWNED BY public.life_unit.life_unit_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter_in_km integer,
    num_of_sisters integer,
    age_in_millions_of_years numeric(20,2),
    description text,
    its_huge boolean,
    its_beautiful boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    poblation integer,
    diameter_in_km integer,
    age_in_millions_of_years numeric(20,2),
    description text,
    its_beautiful boolean,
    its_huge boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter_in_km integer,
    brightness_lvl integer,
    age_in_millions_of_years numeric(20,2),
    description text,
    its_huge boolean,
    its_beautiful boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: life_unit life_unit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_unit ALTER COLUMN life_unit_id SET DEFAULT nextval('public.life_unit_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 200, 2, 394782.23, 'home swite home', true, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 300, 2, 4331431.76, 'its nice to be here', true, true);
INSERT INTO public.galaxy VALUES (3, 'Holak', 3920, 3, 574943.56, 'new galaxy found recently', true, true);
INSERT INTO public.galaxy VALUES (4, 'Milo', 472, 65, 8704534.57, 'in memory to mila', true, true);
INSERT INTO public.galaxy VALUES (5, 'Mila', 5, 2, 658043.67, 'in memory of a best friend', true, true);
INSERT INTO public.galaxy VALUES (6, 'kat', 432, 76, 58305.67, 'The best of all', true, true);


--
-- Data for Name: life_unit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_unit VALUES (1, 'Emonseito', 'humano', 1);
INSERT INTO public.life_unit VALUES (2, 'Zmaito', 'humano', 1);
INSERT INTO public.life_unit VALUES (3, 'Caterina', 'diosa', 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 200, 2, 394782.23, 'home swite home', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Muna', 300, 2, 4331431.76, 'its nice to be here', true, true, 1);
INSERT INTO public.moon VALUES (3, 'Kuna', 3920, 3, 574943.56, 'new galaxy found recently', true, true, 2);
INSERT INTO public.moon VALUES (4, 'Pluna', 472, 65, 8704534.57, 'in memory to mila', true, true, 3);
INSERT INTO public.moon VALUES (5, 'Kenua', 5, 2, 658043.67, 'in memory of a best friend', true, true, 1);
INSERT INTO public.moon VALUES (6, 'Lupla', 432, 76, 58305.67, 'The best of all', true, true, 3);
INSERT INTO public.moon VALUES (7, 'Numi', 1, 2, 3254.67, 'my home hhe', true, true, 1);
INSERT INTO public.moon VALUES (8, 'Junit', 123, 234, 345.56, 'nice place', true, false, 2);
INSERT INTO public.moon VALUES (9, 'Zuna', 123, 234, 345.56, 'ugly place', false, false, 1);
INSERT INTO public.moon VALUES (10, 'Nulina', 123, 234, 345.56, 'too hot here', false, true, 3);
INSERT INTO public.moon VALUES (11, 'Bastion', 123, 234, 345.56, 'too cold', false, true, 1);
INSERT INTO public.moon VALUES (12, 'Ceniton', 123, 234, 345.56, 'incredible', false, true, 2);
INSERT INTO public.moon VALUES (13, 'Calumnia', 200, 2, 394782.23, 'home swite home', true, true, 1);
INSERT INTO public.moon VALUES (14, 'Malunita', 300, 2, 4331431.76, 'its nice to be here', true, true, 1);
INSERT INTO public.moon VALUES (15, 'Azuna', 3920, 3, 574943.56, 'new galaxy found recently', true, true, 2);
INSERT INTO public.moon VALUES (16, 'Azul', 472, 65, 8704534.57, 'in memory to mila', true, true, 3);
INSERT INTO public.moon VALUES (17, 'Kirito', 5, 2, 658043.67, 'in memory of a best friend', true, true, 1);
INSERT INTO public.moon VALUES (18, 'Yui', 432, 76, 58305.67, 'The best of all', true, true, 3);
INSERT INTO public.moon VALUES (19, 'Rainer', 1, 2, 3254.67, 'my home hhe', true, true, 1);
INSERT INTO public.moon VALUES (20, 'Berethod', 123, 234, 345.56, 'nice place', true, false, 2);
INSERT INTO public.moon VALUES (21, 'Armin', 123, 234, 345.56, 'ugly place', false, false, 1);
INSERT INTO public.moon VALUES (22, 'Eren', 123, 234, 345.56, 'too hot here', false, true, 3);
INSERT INTO public.moon VALUES (23, 'Mikasa', 123, 234, 345.56, 'too cold', false, true, 1);
INSERT INTO public.moon VALUES (24, 'Ermin', 123, 234, 345.56, 'incredible', false, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 200, 2, 394782.23, 'home swite home', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 300, 2, 4331431.76, 'its nice to be here', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 3920, 3, 574943.56, 'new galaxy found recently', true, true, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 472, 65, 8704534.57, 'in memory to mila', true, true, 3);
INSERT INTO public.planet VALUES (5, 'Mrt', 5, 2, 658043.67, 'in memory of a best friend', true, true, 1);
INSERT INTO public.planet VALUES (6, 'Arty', 432, 76, 58305.67, 'The best of all', true, true, 3);
INSERT INTO public.planet VALUES (7, 'Laggy', 1, 2, 3254.67, 'my home hhe', true, true, 1);
INSERT INTO public.planet VALUES (8, 'Malenn', 123, 234, 345.56, 'nice place', false, true, 2);
INSERT INTO public.planet VALUES (9, 'Mall', 123, 234, 345.56, 'ugly place', false, false, 1);
INSERT INTO public.planet VALUES (10, 'Golo', 123, 234, 345.56, 'too hot here', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Ruty', 123, 234, 345.56, 'too cold', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Rammmi', 123, 234, 345.56, 'incredible', true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Maria', 200, 2, 394782.23, 'home swite home', true, true, 1);
INSERT INTO public.star VALUES (2, 'Crys', 300, 2, 4331431.76, 'its nice to be here', true, true, 1);
INSERT INTO public.star VALUES (3, 'Hoho', 3920, 3, 574943.56, 'new galaxy found recently', true, true, 2);
INSERT INTO public.star VALUES (4, 'Millk', 472, 65, 8704534.57, 'in memory to mila', true, true, 3);
INSERT INTO public.star VALUES (5, 'Mali', 5, 2, 658043.67, 'in memory of a best friend', true, true, 1);
INSERT INTO public.star VALUES (6, 'Kiiyt', 432, 76, 58305.67, 'The best of all', true, true, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: life_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_unit_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: life_unit life_unit_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_unit
    ADD CONSTRAINT life_unit_name_key UNIQUE (name);


--
-- Name: life_unit life_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_unit
    ADD CONSTRAINT life_unit_pkey PRIMARY KEY (life_unit_id);


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
-- Name: life_unit life_unit_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_unit
    ADD CONSTRAINT life_unit_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

