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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    galaxy_type character varying(13),
    dist_earth double precision,
    age_in_millions integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(35) NOT NULL,
    dist_earth double precision,
    age_in_millions integer,
    galaxy_id integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(35) NOT NULL,
    planet_type character varying(20),
    dist_earth double precision,
    age_in_millions integer,
    galaxy_id integer,
    descript text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_type character varying(2),
    dist_earth double precision,
    age_in_millions integer,
    galaxy_id integer,
    temp numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 13500);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, 14000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 29000000, 11000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 500000000, 8000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.00257, 4500, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 6.2e-05, 4500, 1, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.000156, 4500, 1, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 0.00448, 4500, 1, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 0.00715, 4500, 1, 3);
INSERT INTO public.moon VALUES (6, 'Io', 0.00282, 4500, 1, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 0.01258, 4500, 1, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 0.00816, 4500, 1, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.00352, 4500, 1, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0.0238, 4500, 1, 4);
INSERT INTO public.moon VALUES (11, 'Dione', 0.00252, 4500, 1, 4);
INSERT INTO public.moon VALUES (12, 'Tethys', 0.00197, 4500, 1, 4);
INSERT INTO public.moon VALUES (13, 'Enceladus', 0.00159, 4500, 1, 4);
INSERT INTO public.moon VALUES (14, 'Mimas', 0.00124, 4500, 1, 4);
INSERT INTO public.moon VALUES (15, 'Titania', 0.436, 4500, 1, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 0.584, 4500, 1, 5);
INSERT INTO public.moon VALUES (17, 'Umbriel', 0.267, 4500, 1, 5);
INSERT INTO public.moon VALUES (18, 'Ariel', 0.191, 4500, 1, 5);
INSERT INTO public.moon VALUES (19, 'Miranda', 0.13, 4500, 1, 5);
INSERT INTO public.moon VALUES (20, 'Triton', 0.00237, 4500, 1, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 0, 4500, 1, 'Home planet', true, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 0.52, 4500, 1, 'Red planet', false, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 5.2, 4500, 1, 'Largest planet in the Solar System', false, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 9.58, 4500, 1, 'Known for its ring system', false, false);
INSERT INTO public.planet VALUES (5, 'Venus', 'Terrestrial', 0.72, 4500, 1, 'Hottest planet in the Solar System', false, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Ice Giant', 30.1, 4500, 1, 'Farthest planet from the Sun in the Solar System', false, false);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', 'Exoplanet', 620, 4000, 2, 'Potentially habitable exoplanet', false, true);
INSERT INTO public.planet VALUES (8, 'Kepler-452b', 'Exoplanet', 1400, 6000, 2, 'Super-Earth exoplanet', false, true);
INSERT INTO public.planet VALUES (9, 'HD 209458 b', 'Gas Giant', 150, 7000, 2, 'First transiting exoplanet discovered', false, false);
INSERT INTO public.planet VALUES (10, 'GJ 1214 b', 'Mini-Neptune', 40, 6000, 2, 'Water world exoplanet', false, true);
INSERT INTO public.planet VALUES (11, 'Kepler-16b', 'Gas Giant', 200, 7000, 2, 'Circumbinary exoplanet', false, false);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 'Terrestrial', 39, 5000, 2, 'Potentially habitable exoplanet', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2', 0, 4600, 1, 5778);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'M5', 4.24, 4500, 1, 3042);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G2', 4.37, 5500, 1, 5790);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'K1', 4.37, 5600, 1, 5260);
INSERT INTO public.star VALUES (5, 'Sirius', 'A1', 8.6, 300, 1, 9940);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'M2', 642.5, 8000, 1, 3500);
INSERT INTO public.star VALUES (7, 'Rigel', 'B8', 863, 8000, 2, 11000);
INSERT INTO public.star VALUES (8, 'Vega', 'A0', 25, 455, 2, 9602);
INSERT INTO public.star VALUES (9, 'Arcturus', 'K1', 36.7, 7200, 2, 4286);
INSERT INTO public.star VALUES (10, 'Capella', 'G8', 42.9, 5900, 2, 4940);
INSERT INTO public.star VALUES (11, 'Altair', 'A7', 16.7, 1000, 3, 7550);
INSERT INTO public.star VALUES (12, 'Aldebaran', 'K5', 65.1, 6500, 3, 3910);


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
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id_moon UNIQUE (moon_id);


--
-- Name: planet unique_id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id_planet UNIQUE (planet_id);


--
-- Name: star unique_id_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id_star UNIQUE (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

