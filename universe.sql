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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    yr_discovered integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type character varying(20),
    need_telescope_to_view boolean,
    galaxy_group text
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
    name character varying(60) NOT NULL,
    planet_name text,
    diameter_in_miles numeric,
    planet_id integer
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
    name character varying(60) NOT NULL,
    name_origin text,
    has_moons boolean,
    number_of_moons integer,
    star_id integer
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
    name character varying(60) NOT NULL,
    spectral_star_type text,
    surface_temp_celcius integer,
    galaxy_name character varying(60),
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '433 Eros', 1898);
INSERT INTO public.asteroid VALUES (2, 'Asteroid Phyche', 1852);
INSERT INTO public.asteroid VALUES (3, '243 Mathilde', 1885);
INSERT INTO public.asteroid VALUES (4, '4 Vesta', 1807);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 'lenticular', true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', 'spiral', true, NULL);
INSERT INTO public.galaxy VALUES (7, 'Hoag Object', 'ring', true, NULL);
INSERT INTO public.galaxy VALUES (9, 'Medusa Merger', 'barred spiral', true, NULL);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', false, 'Local');
INSERT INTO public.galaxy VALUES (2, 'Backward', 'spiral', true, 'Cenataurus Cluster');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'spiral', true, 'Local');
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'starburst', true, 'M81');
INSERT INTO public.galaxy VALUES (8, 'Large Magellanic Cloud', 'irregular', false, 'Local');
INSERT INTO public.galaxy VALUES (10, 'Small Magellanic Cloud', 'dwarf irregular', false, 'Local');
INSERT INTO public.galaxy VALUES (11, 'Milky Way', 'spiral', false, 'Local');
INSERT INTO public.galaxy VALUES (12, 'Sunflower', 'spiral', true, 'M51');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'Earth', 2159, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Mars', 7.705, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Mars', 14.002, 4);
INSERT INTO public.moon VALUES (4, 'Enceladus', 'Saturn', 313.3, 6);
INSERT INTO public.moon VALUES (5, 'Titan', 'Saturn', 3199.7, 6);
INSERT INTO public.moon VALUES (6, 'Atlas', 'Saturn', 18.77, 6);
INSERT INTO public.moon VALUES (7, 'Calypso', 'Saturn', 18.8, 6);
INSERT INTO public.moon VALUES (8, 'Pandora', 'Saturn', 50.58, 6);
INSERT INTO public.moon VALUES (9, 'Prometheus', 'Saturn', 53.457, 6);
INSERT INTO public.moon VALUES (10, 'Callisto', 'Jupiter', 2995.4, 5);
INSERT INTO public.moon VALUES (11, 'Europa', 'Jupiter', 1939.7, 5);
INSERT INTO public.moon VALUES (12, 'Io', 'Jupiter', 2264, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Uranus', 719.42, 7);
INSERT INTO public.moon VALUES (14, 'Rosalind', 'Uranus', 44.74, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 'Uranus', 979.78, 7);
INSERT INTO public.moon VALUES (16, 'Psamathe', 'Neptune', 23.61, 8);
INSERT INTO public.moon VALUES (17, 'Larissa', 'Neptune', 120.55, 8);
INSERT INTO public.moon VALUES (18, 'Triton', 'Neptune', 1682, 8);
INSERT INTO public.moon VALUES (19, 'Hydra', 'Pluto', 70, 9);
INSERT INTO public.moon VALUES (20, 'Styx', 'Pluto', 9.94, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'god in roman mythology', false, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'roman goddess of love and beauty', false, 0, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'roman god of war', true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'principal god in roman mythology', true, 63, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'roman god of agriculture', true, 56, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'greek word for sky', true, 21, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'roman god of sea', true, 13, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'roman god of the underworld', true, 5, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 'roman goddess of corn and harvest', false, 0, NULL);
INSERT INTO public.planet VALUES (11, 'Charon', 'mythological ferryman who carried souls across rivers', false, 0, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', 'greek goddess of discord and strife', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'old english word that means soil', true, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'A', 25000, 'Milky Way', 11);
INSERT INTO public.star VALUES (2, 'Vega', 'A0V', 9329, 'Milky Way', 11);
INSERT INTO public.star VALUES (3, 'Castor', 'A1V', 10026, 'Milky Way', 11);
INSERT INTO public.star VALUES (4, 'Bellatrix', 'B2V', 21727, 'Milky Way', 11);
INSERT INTO public.star VALUES (5, 'Peacock', 'B3V', 17727, 'Milky Way', 11);
INSERT INTO public.star VALUES (6, 'Kappa Velorum', 'B2IV', 12927, 'Milky Way', 11);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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
