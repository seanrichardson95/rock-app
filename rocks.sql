--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: rocks; Type: TABLE; Schema: public; Owner: sean
--

CREATE TABLE public.rocks (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    type character varying(11) NOT NULL,
    description character varying(1000)
);


ALTER TABLE public.rocks OWNER TO sean;

--
-- Name: rocks_id_seq; Type: SEQUENCE; Schema: public; Owner: sean
--

CREATE SEQUENCE public.rocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocks_id_seq OWNER TO sean;

--
-- Name: rocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sean
--

ALTER SEQUENCE public.rocks_id_seq OWNED BY public.rocks.id;


--
-- Name: rocks id; Type: DEFAULT; Schema: public; Owner: sean
--

ALTER TABLE ONLY public.rocks ALTER COLUMN id SET DEFAULT nextval('public.rocks_id_seq'::regclass);


--
-- Data for Name: rocks; Type: TABLE DATA; Schema: public; Owner: sean
--

INSERT INTO public.rocks VALUES (1, 'Gneiss', 'Metamorphic', 'Gneiss is a foliated metamorphic rock identified by its bands and lenses of varying mineral composition. Some of these bands (or lenses) contain granular minerals that are bound together in an interlocking texture. Other bands contain platy or elongated minerals that show a preferred orientation that parallels the overall banding in the rock. It is this banded appearance and texture - rather than composition - that define a gneiss.');
INSERT INTO public.rocks VALUES (2, 'Breccia', 'Sedimentary', 'Breccia is a term most often used for clastic sedimentary rocks that are composed of large angular fragments (over two millimeters in diameter). The spaces between the large angular fragments are filled with a matrix of smaller particles and a mineral cement that binds the rock together.');
INSERT INTO public.rocks VALUES (3, 'Granite', 'Igneous', 'Granite is a light-colored igneous rock with grains large enough to be visible with the unaided eye. It forms from the slow crystallization of magma below Earth\'s surface. Granite is composed mainly of quartz and feldspar with minor amounts of mica, amphiboles, and other minerals. This mineral composition usually gives granite a red, pink, gray, or white color with dark mineral grains visible throughout the rock.');
INSERT INTO public.rocks VALUES (4, 'Obsidian', 'Igneous', 'Obsidian is an igneous rock that forms when molten rock material cools so rapidly that atoms are unable to arrange themselves into a crystalline structure. It is an amorphous material known as a "mineraloid." The result is a volcanic glass with a smooth uniform texture that breaks with a conchoidal fracture.');
INSERT INTO public.rocks VALUES (5, 'Chert', 'Sedimentary', 'Chert is a sedimentary rock composed of microcrystalline or cryptocrystalline quartz, the mineral form of silicon dioxide (SiO2). It occurs as nodules, concretionary masses, and as layered deposits. Chert breaks with a conchoidal fracture, often producing very sharp edges. Early people took advantage of how chert breaks and used it to fashion cutting tools and weapons. "Chert" and "flint" are names used for the same material. Both are varieties of chalcedony.');
INSERT INTO public.rocks VALUES (6, 'Jasper', 'Sedimentary', 'The name "jasper" is more of a gemological term than the name of a material used by geologists. The name "jasper" is most often used by people who select excellent pieces of opaque microcrystalline quartz to produce cabochons, spheres, tumbled stones, or other lapidary projects. Their interest in the material is based upon its ability to be accurately cut; its ability to accept a bright polish; and, most importantly, its beautiful color, pattern or appearance when cutting is done. They intentionally select specimens from the high end of quality and appearance.');
INSERT INTO public.rocks VALUES (7, 'Rhyolite', 'Igneous', 'Rhyolite is an extrusive igneous rock with a very high silica content. It is usually pink or gray in color with grains so small that they are difficult to observe without a hand lens. Rhyolite is made up of quartz, plagioclase, and sanidine, with minor amounts of hornblende and biotite. Trapped gases often produce vugs in the rock. These often contain crystals, opal, or glassy material.');
INSERT INTO public.rocks VALUES (8, 'Marble', 'Metamorphic', 'A metamorphic rock that forms when limestone is subjected to the heat and pressure of metamorphism. It is composed primarily of the mineral calcite (CaCO3) and usually contains other minerals, such as clay minerals, micas, quartz, pyrite, iron oxides, and graphite. Under the conditions of metamorphism, the calcite in the limestone recrystallizes to form a rock that is a mass of interlocking calcite crystals.');


--
-- Name: rocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sean
--

SELECT pg_catalog.setval('public.rocks_id_seq', 8, true);


--
-- Name: rocks rocks_pkey; Type: CONSTRAINT; Schema: public; Owner: sean
--

ALTER TABLE ONLY public.rocks
    ADD CONSTRAINT rocks_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
