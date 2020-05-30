--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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
-- Name: amenities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.amenities (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.amenities OWNER TO postgres;

--
-- Name: amenities_clinics_clinics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.amenities_clinics_clinics (
    "amenitiesId" integer NOT NULL,
    "clinicsId" integer NOT NULL
);


ALTER TABLE public.amenities_clinics_clinics OWNER TO postgres;

--
-- Name: amenities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amenities_id_seq OWNER TO postgres;

--
-- Name: amenities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.amenities_id_seq OWNED BY public.amenities.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "parentId" integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: categs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categs (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.categs OWNER TO postgres;

--
-- Name: categs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categs_id_seq OWNER TO postgres;

--
-- Name: categs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categs_id_seq OWNED BY public.categs.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: clinicPreferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clinicPreferences" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "clinicId" integer
);


ALTER TABLE public."clinicPreferences" OWNER TO postgres;

--
-- Name: clinicPreferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clinicPreferences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clinicPreferences_id_seq" OWNER TO postgres;

--
-- Name: clinicPreferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clinicPreferences_id_seq" OWNED BY public."clinicPreferences".id;


--
-- Name: clinics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clinics (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(500) NOT NULL,
    "userId" integer,
    "cityId" integer
);


ALTER TABLE public.clinics OWNER TO postgres;

--
-- Name: clinics_amenities_amenities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clinics_amenities_amenities (
    "clinicsId" integer NOT NULL,
    "amenitiesId" integer NOT NULL
);


ALTER TABLE public.clinics_amenities_amenities OWNER TO postgres;

--
-- Name: clinics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clinics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clinics_id_seq OWNER TO postgres;

--
-- Name: clinics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clinics_id_seq OWNED BY public.clinics.id;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    body text NOT NULL,
    "clinicId" integer
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_id_seq OWNER TO postgres;

--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: gallery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gallery (
    id integer NOT NULL,
    "clinicId" integer,
    images text NOT NULL
);


ALTER TABLE public.gallery OWNER TO postgres;

--
-- Name: gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gallery_id_seq OWNER TO postgres;

--
-- Name: gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gallery_id_seq OWNED BY public.gallery.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    published_at date,
    author character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    category integer
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    body text NOT NULL,
    stars integer NOT NULL,
    "clinicId" integer
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    description text NOT NULL,
    "clinicId" integer
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Name: staff_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_id_seq OWNER TO postgres;

--
-- Name: staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staff_id_seq OWNED BY public.staff.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "resetPasswordToken" character varying(255),
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: treatments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treatments (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    description text NOT NULL,
    "clinicId" integer,
    "categoryId" integer
);


ALTER TABLE public.treatments OWNER TO postgres;

--
-- Name: treatments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.treatments_id_seq OWNER TO postgres;

--
-- Name: treatments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatments_id_seq OWNED BY public.treatments.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: userPreferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userPreferences" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "userId" integer
);


ALTER TABLE public."userPreferences" OWNER TO postgres;

--
-- Name: userPreferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userPreferences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."userPreferences_id_seq" OWNER TO postgres;

--
-- Name: userPreferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userPreferences_id_seq" OWNED BY public."userPreferences".id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255)
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: amenities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenities ALTER COLUMN id SET DEFAULT nextval('public.amenities_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categs ALTER COLUMN id SET DEFAULT nextval('public.categs_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: clinicPreferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clinicPreferences" ALTER COLUMN id SET DEFAULT nextval('public."clinicPreferences_id_seq"'::regclass);


--
-- Name: clinics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics ALTER COLUMN id SET DEFAULT nextval('public.clinics_id_seq'::regclass);


--
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: gallery id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gallery ALTER COLUMN id SET DEFAULT nextval('public.gallery_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: staff id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff ALTER COLUMN id SET DEFAULT nextval('public.staff_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: treatments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments ALTER COLUMN id SET DEFAULT nextval('public.treatments_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: userPreferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userPreferences" ALTER COLUMN id SET DEFAULT nextval('public."userPreferences_id_seq"'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: amenities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.amenities (id, name) FROM stdin;
2	wer
3	fwdsf
4	sdsdsd
5	sdsdsddd
6	eeeeee
7	eeeeyfsc
8	eeeeyfsfffc
9	eeeeyfsfffaac
\.


--
-- Data for Name: amenities_clinics_clinics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.amenities_clinics_clinics ("amenitiesId", "clinicsId") FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, "parentId") FROM stdin;
1	uho aa	1
2	uho bb	1
\.


--
-- Data for Name: categs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categs (id, name, created_at, updated_at) FROM stdin;
1	News	2020-05-25 16:20:40.236+00	2020-05-25 16:20:40.236+00
2	Tips&Tricks	2020-05-25 16:20:51.036+00	2020-05-25 16:20:51.036+00
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, name) FROM stdin;
2	bjelovar
\.


--
-- Data for Name: clinicPreferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clinicPreferences" (id, name, "clinicId") FROM stdin;
\.


--
-- Data for Name: clinics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clinics (id, name, address, "userId", "cityId") FROM stdin;
2	aaaaaaa	bbbbbbb	1	2
3	cccc	ddddd	1	2
4	Polinklinika Baagatin	Josipa Langa 1	2	2
\.


--
-- Data for Name: clinics_amenities_amenities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clinics_amenities_amenities ("clinicsId", "amenitiesId") FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (id, name, email, body, "clinicId") FROM stdin;
2	Juraj markešoć	jurajmarkesic@gmail.com	asdkl kdj lskdjal sdkja sasd lkasdj laksd jlak sjdal skdal skdj alskd alsk djasl	\N
3	Juraj markešoć	jurajmarkesic@gmail.com	asdkl kdj lskdjal sdkja sasd lkasdj laksd jlak sjdal skdal skdj alskd alsk djasl	\N
4	Juraj Markešić	jurajmarkesic@gmail.com	sdlkfjs dlfk jslfdk jsldkfj fls s\nsd fs df \ns f sf d\n	4
5	Juraj Markešić	jurajerepublic@gmail.com	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	4
6	Juraj Markešić	jurajmarkesic@gmail.com	Hi i was wondering ifwek flsk fhjls .kdfjl sdk?	4
7	Juraj Markešić	jurajmarkesic@gmail.com	Hi ia sda asd da	4
8	Juraj Markešić	jurajmarkesic@gmail.com	Aaaaa aa 	4
9	Juraj Markešić	jurajmarkesic@gmail.com	BBBBbbbb	4
10	Juraj Markešić	jurajmarkesic@gmail.com	Cccc cc c 	4
11	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \nDdddd d d dd	4
12	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \n EEEeeeee e e	4
13	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: undefined. \n mnbnm	4
14	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \n dsf	4
15	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \n sad	4
16	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \n nn	4
17	Juraj Markešić	jurajmarkesic@gmail.com	Contacted for treatment: Uho aaa. \n nn	4
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
1	db_model_users-permissions_permission	{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false}}	object	\N	\N
2	db_model_strapi_webhooks	{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}	object	\N	\N
3	db_model_core_store	{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}	object	\N	\N
5	db_model_users-permissions_role	{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true}}	object	\N	\N
6	db_model_strapi_administrator	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"required":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"blocked":{"type":"boolean","default":false,"configurable":false}}	object	\N	\N
4	db_model_upload_file	{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
7	db_model_users-permissions_user	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
8	db_model_upload_file_morph	{"upload_file_id":{"type":"integer"},"related_id":{"type":"integer"},"related_type":{"type":"text"},"field":{"type":"text"},"order":{"type":"integer"}}	object	\N	\N
9	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","redirect_uri":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]}}	object		
10	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
11	plugin_email_provider	{"provider":"sendmail","name":"Sendmail","auth":{"sendmail_default_from":{"label":"Sendmail Default From","type":"text"},"sendmail_default_replyto":{"label":"Sendmail Default Reply-To","type":"text"}}}	object	development	
12	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
13	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
15	plugin_content_manager_configuration_content_types::strapi::administrator	{"uid":"strapi::administrator","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","blocked"],"editRelations":[],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"blocked","size":4}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
17	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
18	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_confirmation_redirection":"http://0.0.0.0:1337/admin","email_reset_password":"http://0.0.0.0:1337/admin","default_role":"authenticated"}	object		
21	db_model_categories	{"name":{"type":"string","required":true,"unique":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::application::category.category	{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object		
19	db_model_posts	{"title":{"type":"string","required":true,"unique":true},"content":{"type":"richtext","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"published_at":{"type":"date"},"author":{"type":"string"},"category":{"model":"category"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::application::post.post	{"uid":"application::post.post","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Category","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","image","published_at"],"edit":[[{"name":"title","size":6}],[{"name":"content","size":12}],[{"name":"image","size":6},{"name":"published_at","size":4}],[{"name":"author","size":6}]],"editRelations":["category"]}}	object		
23	db_model_categs	{"name":{"type":"string","required":true,"unique":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
\.


--
-- Data for Name: gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gallery (id, "clinicId", images) FROM stdin;
1	4	https://medicro-images.s3.eu-central-1.amazonaws.com/1590220007247+-+Screenshot+from+2020-05-23+08-36-20.png,https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-23+08-36-20.png
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, content, published_at, author, created_at, updated_at, category) FROM stdin;
1	Launching soon!	# aaaaaaaaaaaaaaaa\nssdf sdf\nsd \nfs\n df\n sdf	2020-05-26	Juraj Markešić	2020-05-25 16:21:45.679+00	2020-05-25 16:21:45.693+00	1
2	DO memes aaaa	fdsd fs fd sd	2020-05-16	\N	2020-05-25 16:22:39.311+00	2020-05-25 16:22:39.321+00	2
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, name, body, stars, "clinicId") FROM stdin;
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (id, name, role, description, "clinicId") FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, username, email, password, "resetPasswordToken", blocked) FROM stdin;
1	JurajMarkesic	jurajmarkesic@gmail.com	$2a$10$q/vzIYCgK/X7.rjBtvAWreaHraE2Ou3PkC3DlZcQQqas.8ByWzF0G	\N	\N
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: treatments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.treatments (id, name, price, description, "clinicId", "categoryId") FROM stdin;
1	Uho rez jao	1500	sdfs ddfs df sd decription.	2	2
5	JEsus aaa Uho rez jao	1560	sdfs ddfs df sd decription.	2	2
6	Uho aaa	230	Decription aasd a da sda sd as da sd ad	4	2
8	AAAA bb btretman	400	sdsfsdfs	4	2
9	CCCCCCC bb btretman	500	sdsfsdfs	4	2
10	DDDD bb btretman	500	sdsfsdfs	4	2
11	EEEE bb btretman	500	sdsfsdfs	4	2
12	FFFFFF bb btretman	500	sdsfsdfs	4	2
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_at, updated_at) FROM stdin;
1	Screenshot from 2020-05-23 08-36-20			1920	1080	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4.png", "hash": "large_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4", "mime": "image/png", "path": null, "size": 120.44, "width": 1000, "height": 563}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4.png", "hash": "small_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4", "mime": "image/png", "path": null, "size": 43.47, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4.png", "hash": "medium_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4", "mime": "image/png", "path": null, "size": 78.78, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4.png", "hash": "thumbnail_Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4", "mime": "image/png", "path": null, "size": 16.68, "width": 245, "height": 138}}	Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4	.png	image/png	153.26	/uploads/Screenshot_from_2020-05-23_08-36-20_bfbf7c4ce4.png	\N	local	\N	2020-05-25 16:21:30.138+00	2020-05-25 16:21:30.138+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	posts	image	1
2	1	2	posts	image	1
\.


--
-- Data for Name: userPreferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userPreferences" (id, name, "userId") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "firstName", "lastName", email, password) FROM stdin;
2	string	string	string@asdfda.hr	c90f86e09c3461da52b3d8bc80ccd6a0d0cb893b1a41bd461e8ed31fa21c9b6e
1	Juraj	Markesic	juraj@juraj.hr	dbc3254f2d0a8d1833237b01d577461a185d045579ed548e8365333cc00def70
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role) FROM stdin;
1	content-manager	components	findcomponent	f		1
2	content-manager	components	findcomponent	f		2
3	content-manager	components	listcomponents	f		1
4	content-manager	components	listcomponents	f		2
5	content-manager	components	updatecomponent	f		1
6	content-manager	components	updatecomponent	f		2
7	content-manager	contentmanager	checkuidavailability	f		1
8	content-manager	contentmanager	checkuidavailability	f		2
9	content-manager	contentmanager	count	f		1
10	content-manager	contentmanager	count	f		2
11	content-manager	contentmanager	create	f		1
12	content-manager	contentmanager	create	f		2
13	content-manager	contentmanager	delete	f		1
14	content-manager	contentmanager	delete	f		2
15	content-manager	contentmanager	deletemany	f		1
16	content-manager	contentmanager	deletemany	f		2
17	content-manager	contentmanager	find	f		1
18	content-manager	contentmanager	find	f		2
19	content-manager	contentmanager	findone	f		1
20	content-manager	contentmanager	findone	f		2
21	content-manager	contentmanager	generateuid	f		1
22	content-manager	contentmanager	generateuid	f		2
23	content-manager	contentmanager	update	f		1
24	content-manager	contentmanager	update	f		2
25	content-manager	contenttypes	findcontenttype	f		1
26	content-manager	contenttypes	findcontenttype	f		2
27	content-manager	contenttypes	listcontenttypes	f		1
28	content-manager	contenttypes	listcontenttypes	f		2
29	content-manager	contenttypes	updatecontenttype	f		1
30	content-manager	contenttypes	updatecontenttype	f		2
31	content-type-builder	componentcategories	deletecategory	f		1
32	content-type-builder	componentcategories	deletecategory	f		2
33	content-type-builder	componentcategories	editcategory	f		1
34	content-type-builder	componentcategories	editcategory	f		2
35	content-type-builder	components	createcomponent	f		1
36	content-type-builder	components	createcomponent	f		2
37	content-type-builder	components	deletecomponent	f		1
38	content-type-builder	components	deletecomponent	f		2
39	content-type-builder	components	getcomponent	f		1
40	content-type-builder	components	getcomponent	f		2
41	content-type-builder	components	getcomponents	f		1
42	content-type-builder	components	getcomponents	f		2
43	content-type-builder	components	updatecomponent	f		1
44	content-type-builder	components	updatecomponent	f		2
45	content-type-builder	connections	getconnections	f		1
46	content-type-builder	connections	getconnections	f		2
47	content-type-builder	contenttypes	createcontenttype	f		1
48	content-type-builder	contenttypes	createcontenttype	f		2
49	content-type-builder	contenttypes	deletecontenttype	f		1
50	content-type-builder	contenttypes	deletecontenttype	f		2
51	content-type-builder	contenttypes	getcontenttype	f		1
52	content-type-builder	contenttypes	getcontenttype	f		2
53	content-type-builder	contenttypes	getcontenttypes	f		1
54	content-type-builder	contenttypes	getcontenttypes	f		2
55	content-type-builder	contenttypes	updatecontenttype	f		1
56	content-type-builder	contenttypes	updatecontenttype	f		2
57	email	email	getenvironments	f		1
58	email	email	getenvironments	f		2
59	email	email	getsettings	f		1
60	email	email	getsettings	f		2
61	email	email	send	f		1
62	email	email	send	f		2
63	email	email	updatesettings	f		1
64	email	email	updatesettings	f		2
65	upload	proxy	uploadproxy	f		1
66	upload	proxy	uploadproxy	f		2
67	upload	upload	count	f		1
68	upload	upload	count	f		2
69	upload	upload	destroy	f		1
70	upload	upload	destroy	f		2
71	upload	upload	find	f		1
72	upload	upload	find	f		2
73	upload	upload	findone	f		1
74	upload	upload	findone	f		2
75	upload	upload	getsettings	f		1
76	upload	upload	getsettings	f		2
77	upload	upload	search	f		1
78	upload	upload	search	f		2
79	upload	upload	updatesettings	f		1
80	upload	upload	updatesettings	f		2
81	upload	upload	upload	f		1
82	upload	upload	upload	f		2
83	users-permissions	auth	callback	f		1
84	users-permissions	auth	callback	t		2
85	users-permissions	auth	changepassword	f		1
86	users-permissions	auth	changepassword	t		2
87	users-permissions	auth	connect	t		1
88	users-permissions	auth	connect	t		2
89	users-permissions	auth	emailconfirmation	f		1
90	users-permissions	auth	emailconfirmation	t		2
147	application	post	count	f		1
157	application	post	update	f		1
160	application	category	count	f		2
91	users-permissions	auth	forgotpassword	f		1
101	users-permissions	user	destroyall	f		1
111	users-permissions	userspermissions	createrole	f		1
121	users-permissions	userspermissions	getpermissions	f		1
131	users-permissions	userspermissions	getroutes	f		1
141	users-permissions	userspermissions	updateemailtemplate	f		1
148	application	post	count	f		2
161	application	category	create	f		1
92	users-permissions	auth	forgotpassword	t		2
102	users-permissions	user	destroyall	f		2
112	users-permissions	userspermissions	createrole	f		2
122	users-permissions	userspermissions	getpermissions	f		2
132	users-permissions	userspermissions	getroutes	f		2
142	users-permissions	userspermissions	updateemailtemplate	f		2
149	application	post	create	f		1
162	application	category	create	f		2
170	application	category	update	f		2
93	users-permissions	auth	register	f		1
104	users-permissions	user	find	f		2
114	users-permissions	userspermissions	deleteprovider	f		2
125	users-permissions	userspermissions	getproviders	f		1
133	users-permissions	userspermissions	index	f		1
143	users-permissions	userspermissions	updateproviders	f		1
150	application	post	create	f		2
158	application	post	update	f		2
163	application	category	delete	f		1
94	users-permissions	auth	register	t		2
103	users-permissions	user	find	f		1
113	users-permissions	userspermissions	deleteprovider	f		1
124	users-permissions	userspermissions	getpolicies	f		2
134	users-permissions	userspermissions	index	f		2
144	users-permissions	userspermissions	updateproviders	f		2
151	application	post	delete	f		1
164	application	category	delete	f		2
95	users-permissions	auth	sendemailconfirmation	f		1
105	users-permissions	user	findone	f		1
115	users-permissions	userspermissions	deleterole	f		1
123	users-permissions	userspermissions	getpolicies	f		1
135	users-permissions	userspermissions	init	t		1
145	users-permissions	userspermissions	updaterole	f		1
152	application	post	delete	f		2
165	application	category	find	f		1
96	users-permissions	auth	sendemailconfirmation	f		2
106	users-permissions	user	findone	f		2
116	users-permissions	userspermissions	deleterole	f		2
126	users-permissions	userspermissions	getproviders	f		2
136	users-permissions	userspermissions	init	t		2
146	users-permissions	userspermissions	updaterole	f		2
153	application	post	find	f		1
166	application	category	find	t		2
97	users-permissions	user	create	f		1
107	users-permissions	user	me	t		1
117	users-permissions	userspermissions	getadvancedsettings	f		1
128	users-permissions	userspermissions	getrole	f		2
138	users-permissions	userspermissions	searchusers	f		2
154	application	post	find	t		2
167	application	category	findone	f		1
98	users-permissions	user	create	f		2
108	users-permissions	user	me	t		2
118	users-permissions	userspermissions	getadvancedsettings	f		2
127	users-permissions	userspermissions	getrole	f		1
137	users-permissions	userspermissions	searchusers	f		1
155	application	post	findone	f		1
168	application	category	findone	t		2
99	users-permissions	user	destroy	f		1
109	users-permissions	user	update	f		1
119	users-permissions	userspermissions	getemailtemplate	f		1
129	users-permissions	userspermissions	getroles	f		1
139	users-permissions	userspermissions	updateadvancedsettings	f		1
156	application	post	findone	t		2
100	users-permissions	user	destroy	f		2
110	users-permissions	user	update	f		2
120	users-permissions	userspermissions	getemailtemplate	f		2
130	users-permissions	userspermissions	getroles	f		2
140	users-permissions	userspermissions	updateadvancedsettings	f		2
159	application	category	count	f		1
169	application	category	update	f		1
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated
2	Public	Default role given to unauthenticated user.	public
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", confirmed, blocked, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: amenities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.amenities_id_seq', 9, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- Name: categs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categs_id_seq', 2, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 2, true);


--
-- Name: clinicPreferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clinicPreferences_id_seq"', 1, false);


--
-- Name: clinics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clinics_id_seq', 4, true);


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_id_seq', 17, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 23, true);


--
-- Name: gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gallery_id_seq', 1, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 2, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, true);


--
-- Name: staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: treatments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatments_id_seq', 12, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 2, true);


--
-- Name: userPreferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userPreferences_id_seq"', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 170, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: treatments PK_133f26d52c70b9fa3c2dbb3c89e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT "PK_133f26d52c70b9fa3c2dbb3c89e" PRIMARY KEY (id);


--
-- Name: reviews PK_231ae565c273ee700b283f15c1d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "PK_231ae565c273ee700b283f15c1d" PRIMARY KEY (id);


--
-- Name: categories PK_24dbc6126a28ff948da33e97d3b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "PK_24dbc6126a28ff948da33e97d3b" PRIMARY KEY (id);


--
-- Name: contact PK_2cbbe00f59ab6b3bb5b8d19f989; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT "PK_2cbbe00f59ab6b3bb5b8d19f989" PRIMARY KEY (id);


--
-- Name: amenities_clinics_clinics PK_2f497aa098d6eb4561c6ff3eeef; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenities_clinics_clinics
    ADD CONSTRAINT "PK_2f497aa098d6eb4561c6ff3eeef" PRIMARY KEY ("amenitiesId", "clinicsId");


--
-- Name: cities PK_4762ffb6e5d198cfec5606bc11e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT "PK_4762ffb6e5d198cfec5606bc11e" PRIMARY KEY (id);


--
-- Name: clinics PK_5513b659e4d12b01a8ab3956abc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT "PK_5513b659e4d12b01a8ab3956abc" PRIMARY KEY (id);


--
-- Name: clinicPreferences PK_656d7535c459a796b895922ccfb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clinicPreferences"
    ADD CONSTRAINT "PK_656d7535c459a796b895922ccfb" PRIMARY KEY (id);


--
-- Name: gallery PK_65d7a1ef91ddafb3e7071b188a0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT "PK_65d7a1ef91ddafb3e7071b188a0" PRIMARY KEY (id);


--
-- Name: users PK_a3ffb1c0c8416b9fc6f907b7433; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);


--
-- Name: userPreferences PK_ab832218e01c883d2d0395f13fb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userPreferences"
    ADD CONSTRAINT "PK_ab832218e01c883d2d0395f13fb" PRIMARY KEY (id);


--
-- Name: amenities PK_c0777308847b3556086f2fb233e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenities
    ADD CONSTRAINT "PK_c0777308847b3556086f2fb233e" PRIMARY KEY (id);


--
-- Name: clinics_amenities_amenities PK_d7b5f2dde38fc16a74150ecddc5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics_amenities_amenities
    ADD CONSTRAINT "PK_d7b5f2dde38fc16a74150ecddc5" PRIMARY KEY ("clinicsId", "amenitiesId");


--
-- Name: staff PK_e4ee98bb552756c180aec1e854a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT "PK_e4ee98bb552756c180aec1e854a" PRIMARY KEY (id);


--
-- Name: userPreferences REL_4f8d527eeb2409b3f726535b1e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userPreferences"
    ADD CONSTRAINT "REL_4f8d527eeb2409b3f726535b1e" UNIQUE ("userId");


--
-- Name: clinicPreferences REL_abbc035f298a67a612ed7f0d59; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clinicPreferences"
    ADD CONSTRAINT "REL_abbc035f298a67a612ed7f0d59" UNIQUE ("clinicId");


--
-- Name: gallery REL_ed5c2fda2c71808b60d7bdb6b4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT "REL_ed5c2fda2c71808b60d7bdb6b4" UNIQUE ("clinicId");


--
-- Name: categs categs_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categs
    ADD CONSTRAINT categs_name_unique UNIQUE (name);


--
-- Name: categs categs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categs
    ADD CONSTRAINT categs_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts posts_title_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_title_unique UNIQUE (title);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_username_unique UNIQUE (username);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: IDX_5fccbd852c3cd6e80b16ab001a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_5fccbd852c3cd6e80b16ab001a" ON public.clinics_amenities_amenities USING btree ("clinicsId");


--
-- Name: IDX_6f6826f94e8a320af9a6190087; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_6f6826f94e8a320af9a6190087" ON public.clinics_amenities_amenities USING btree ("amenitiesId");


--
-- Name: IDX_7d2ab11ae3aca1442aabe694a8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_7d2ab11ae3aca1442aabe694a8" ON public.amenities_clinics_clinics USING btree ("clinicsId");


--
-- Name: IDX_972bff682487119465393e6566; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_972bff682487119465393e6566" ON public.amenities_clinics_clinics USING btree ("amenitiesId");


--
-- Name: treatments FK_0185f070d41ad4e21ea707b4e6a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT "FK_0185f070d41ad4e21ea707b4e6a" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- Name: reviews FK_0b99eea44bc9f00848d545ff928; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "FK_0b99eea44bc9f00848d545ff928" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- Name: treatments FK_3aafcf1717078787eebc1da8654; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT "FK_3aafcf1717078787eebc1da8654" FOREIGN KEY ("categoryId") REFERENCES public.categories(id);


--
-- Name: clinics FK_40601e3a9b5c4325384c2947320; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT "FK_40601e3a9b5c4325384c2947320" FOREIGN KEY ("cityId") REFERENCES public.cities(id);


--
-- Name: userPreferences FK_4f8d527eeb2409b3f726535b1e3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userPreferences"
    ADD CONSTRAINT "FK_4f8d527eeb2409b3f726535b1e3" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: contact FK_5efe035ad819626ef1df8cd64f4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT "FK_5efe035ad819626ef1df8cd64f4" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- Name: clinics_amenities_amenities FK_5fccbd852c3cd6e80b16ab001a6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics_amenities_amenities
    ADD CONSTRAINT "FK_5fccbd852c3cd6e80b16ab001a6" FOREIGN KEY ("clinicsId") REFERENCES public.clinics(id) ON DELETE CASCADE;


--
-- Name: clinics_amenities_amenities FK_6f6826f94e8a320af9a6190087c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics_amenities_amenities
    ADD CONSTRAINT "FK_6f6826f94e8a320af9a6190087c" FOREIGN KEY ("amenitiesId") REFERENCES public.amenities(id) ON DELETE CASCADE;


--
-- Name: amenities_clinics_clinics FK_7d2ab11ae3aca1442aabe694a83; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenities_clinics_clinics
    ADD CONSTRAINT "FK_7d2ab11ae3aca1442aabe694a83" FOREIGN KEY ("clinicsId") REFERENCES public.clinics(id) ON DELETE CASCADE;


--
-- Name: amenities_clinics_clinics FK_972bff682487119465393e65668; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenities_clinics_clinics
    ADD CONSTRAINT "FK_972bff682487119465393e65668" FOREIGN KEY ("amenitiesId") REFERENCES public.amenities(id) ON DELETE CASCADE;


--
-- Name: categories FK_9a6f051e66982b5f0318981bcaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "FK_9a6f051e66982b5f0318981bcaa" FOREIGN KEY ("parentId") REFERENCES public.categories(id);


--
-- Name: clinics FK_9eff70f9557eeb21cb42be56051; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT "FK_9eff70f9557eeb21cb42be56051" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: clinicPreferences FK_abbc035f298a67a612ed7f0d591; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clinicPreferences"
    ADD CONSTRAINT "FK_abbc035f298a67a612ed7f0d591" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- Name: staff FK_c130f827264c6677c9914aa640c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT "FK_c130f827264c6677c9914aa640c" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- Name: gallery FK_ed5c2fda2c71808b60d7bdb6b44; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT "FK_ed5c2fda2c71808b60d7bdb6b44" FOREIGN KEY ("clinicId") REFERENCES public.clinics(id);


--
-- PostgreSQL database dump complete
--

