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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    name character varying(30) NOT NULL,
    fifth_table_id character varying(30) NOT NULL,
    email character varying(30)
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_types character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    seas integer,
    mass numeric(9,4),
    formation character varying(30),
    planet_id character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    years integer,
    composition character varying(30),
    star_id character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    lenght numeric(9,3),
    star_sign boolean,
    active boolean,
    description text,
    galaxy_id character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES ('CarolinaG', 'ID1', 'carolinag@gmail.com');
INSERT INTO public.fifth_table VALUES ('MarioR', 'ID2', 'marior@gmail.com');
INSERT INTO public.fifth_table VALUES ('LucaV', 'ID3', 'LucaV@gmail.com');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 'Andromeda', 'A spiral galaxy and the closest large galaxy to the Milky Way.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES ('galaxy2', 'Milky Way', 'The galaxy that contains our Solar System.', 13600, 'Barred Spiral');
INSERT INTO public.galaxy VALUES ('galaxy3', 'Sombrero Galaxy', 'A spiral galaxy with a bright nucleus and an unusually large central bulge.', 9000, 'Spiral');
INSERT INTO public.galaxy VALUES ('galaxy4', 'Whirlpool Galaxy', 'A classic spiral galaxy that interacts with a smaller companion galaxy.', 300, 'Spiral');
INSERT INTO public.galaxy VALUES ('galaxy5', 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', 13500, 'Dwarf');
INSERT INTO public.galaxy VALUES ('galaxy6', 'Triangulum Galaxy', 'A member of the Local Group and a companion to Andromeda.', 12000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 'Luna', 0, 7350.0000, 'Impact', 'planet3');
INSERT INTO public.moon VALUES ('moon2', 'Phobos', 0, 1071.0000, 'Captured Asteroid', 'planet4');
INSERT INTO public.moon VALUES ('moon3', 'Deimos', 0, 1480.0000, 'Captured Asteroid', 'planet4');
INSERT INTO public.moon VALUES ('moon4', 'Io', 0, 893.0000, 'Accretion', 'planet5');
INSERT INTO public.moon VALUES ('moon5', 'Europa', 0, 480.0000, 'Accretion', 'planet5');
INSERT INTO public.moon VALUES ('moon6', 'Ganymede', 0, 1482.0000, 'Accretion', 'planet5');
INSERT INTO public.moon VALUES ('moon7', 'Callisto', 0, 1086.0000, 'Accretion', 'planet5');
INSERT INTO public.moon VALUES ('moon8', 'Titan', 0, 13540.0000, 'Accretion', 'planet6');
INSERT INTO public.moon VALUES ('moon9', 'Enceladus', 0, 1080.0000, 'Accretion', 'planet6');
INSERT INTO public.moon VALUES ('moon10', 'Mimas', 0, 3750.0000, 'Accretion', 'planet6');
INSERT INTO public.moon VALUES ('moon11', 'Triton', 0, 2140.0000, 'Captured Object', 'planet8');
INSERT INTO public.moon VALUES ('moon12', 'Nereid', 0, 308.0000, 'Captured Object', 'planet8');
INSERT INTO public.moon VALUES ('moon13', 'Oberon', 0, 30100.0000, 'Accretion', 'planet7');
INSERT INTO public.moon VALUES ('moon14', 'Titania', 0, 34200.0000, 'Accretion', 'planet7');
INSERT INTO public.moon VALUES ('moon15', 'Proxima c', 0, 500.0000, 'Unknown', 'planet9');
INSERT INTO public.moon VALUES ('moon16', 'Alpha Centauri Bb I', 0, 3000.0000, 'Unknown', 'planet10');
INSERT INTO public.moon VALUES ('moon17', 'Betelgeuse I-a', 0, 80000.0000, 'Accretion', 'planet11');
INSERT INTO public.moon VALUES ('moon18', 'Betelgeuse I-b', 0, 75000.0000, 'Accretion', 'planet11');
INSERT INTO public.moon VALUES ('moon19', 'Polaris A-1a', 0, 2500.0000, 'Accretion', 'planet12');
INSERT INTO public.moon VALUES ('moon20', 'Polaris A-1b', 0, 120.0000, 'Accretion', 'planet12');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 'Mercury', 24397, 24, 'Rocky', 'star2');
INSERT INTO public.planet VALUES ('planet2', 'Venus', 60518, 62, 'Rocky', 'star2');
INSERT INTO public.planet VALUES ('planet3', 'Earth', 6371, 100, 'Rocky', 'star2');
INSERT INTO public.planet VALUES ('planet4', 'Mars', 33895, 188, 'Rocky', 'star2');
INSERT INTO public.planet VALUES ('planet5', 'Jupiter', 69911, 1186, 'Gas Giant', 'star2');
INSERT INTO public.planet VALUES ('planet6', 'Saturn', 58232, 2946, 'Gas Giant', 'star2');
INSERT INTO public.planet VALUES ('planet7', 'Uranus', 25362, 8401, 'Ice Giant', 'star2');
INSERT INTO public.planet VALUES ('planet8', 'Neptune', 24622, 1648, 'Ice Giant', 'star2');
INSERT INTO public.planet VALUES ('planet9', 'Proxima b', 7150, 11, 'Rocky', 'star6');
INSERT INTO public.planet VALUES ('planet10', 'Alpha Centauri Bb', 7000, 20, 'Rocky', 'star3');
INSERT INTO public.planet VALUES ('planet11', 'Betelgeuse I', 90000, 4500, 'Gas Giant', 'star2');
INSERT INTO public.planet VALUES ('planet12', 'Polaris A-1', 5000, 1050, 'Rocky', 'star4');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 'Sirius', 1.710, true, true, 'The brightest star in the night sky, part of the Canis Major constellation.', 'galaxy2');
INSERT INTO public.star VALUES ('star2', 'Betelgeuse', 887.000, true, true, 'A red supergiant star located in the Orion constellation.', 'galaxy2');
INSERT INTO public.star VALUES ('star3', 'Alpha Centauri A', 1.220, true, true, 'One of the closest stars to Earth, part of the Alpha Centauri system.', 'galaxy3');
INSERT INTO public.star VALUES ('star4', 'Polaris', 50.000, true, true, 'Also known as the North Star, located in the Ursa Minor constellation.', 'galaxy1');
INSERT INTO public.star VALUES ('star5', 'Rigel', 79.000, true, true, 'A blue supergiant star in the Orion constellation.', 'galaxy2');
INSERT INTO public.star VALUES ('star6', 'Proxima Centauri', 0.154, true, true, 'The closest known star to the Sun, part of the Alpha Centauri system.', 'galaxy3');


--
-- Name: fifth_table fifth_table_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_email_key UNIQUE (email);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

