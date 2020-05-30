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

ALTER TABLE ONLY public.gallery DROP CONSTRAINT "FK_ed5c2fda2c71808b60d7bdb6b44";
ALTER TABLE ONLY public.staff DROP CONSTRAINT "FK_c130f827264c6677c9914aa640c";
ALTER TABLE ONLY public."clinicPreferences" DROP CONSTRAINT "FK_abbc035f298a67a612ed7f0d591";
ALTER TABLE ONLY public.clinics DROP CONSTRAINT "FK_9eff70f9557eeb21cb42be56051";
ALTER TABLE ONLY public.categories DROP CONSTRAINT "FK_9a6f051e66982b5f0318981bcaa";
ALTER TABLE ONLY public.amenities_clinics_clinics DROP CONSTRAINT "FK_972bff682487119465393e65668";
ALTER TABLE ONLY public.amenities_clinics_clinics DROP CONSTRAINT "FK_7d2ab11ae3aca1442aabe694a83";
ALTER TABLE ONLY public.clinics_amenities_amenities DROP CONSTRAINT "FK_6f6826f94e8a320af9a6190087c";
ALTER TABLE ONLY public.clinics_amenities_amenities DROP CONSTRAINT "FK_5fccbd852c3cd6e80b16ab001a6";
ALTER TABLE ONLY public.contact DROP CONSTRAINT "FK_5efe035ad819626ef1df8cd64f4";
ALTER TABLE ONLY public."userPreferences" DROP CONSTRAINT "FK_4f8d527eeb2409b3f726535b1e3";
ALTER TABLE ONLY public.clinics DROP CONSTRAINT "FK_40601e3a9b5c4325384c2947320";
ALTER TABLE ONLY public.treatments DROP CONSTRAINT "FK_3aafcf1717078787eebc1da8654";
ALTER TABLE ONLY public.reviews DROP CONSTRAINT "FK_0b99eea44bc9f00848d545ff928";
ALTER TABLE ONLY public.treatments DROP CONSTRAINT "FK_0185f070d41ad4e21ea707b4e6a";
DROP INDEX public."IDX_972bff682487119465393e6566";
DROP INDEX public."IDX_7d2ab11ae3aca1442aabe694a8";
DROP INDEX public."IDX_6f6826f94e8a320af9a6190087";
DROP INDEX public."IDX_5fccbd852c3cd6e80b16ab001a";
ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_username_unique;
ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_title_unique;
ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
ALTER TABLE ONLY public.categs DROP CONSTRAINT categs_pkey;
ALTER TABLE ONLY public.categs DROP CONSTRAINT categs_name_unique;
ALTER TABLE ONLY public.gallery DROP CONSTRAINT "REL_ed5c2fda2c71808b60d7bdb6b4";
ALTER TABLE ONLY public."clinicPreferences" DROP CONSTRAINT "REL_abbc035f298a67a612ed7f0d59";
ALTER TABLE ONLY public."userPreferences" DROP CONSTRAINT "REL_4f8d527eeb2409b3f726535b1e";
ALTER TABLE ONLY public.staff DROP CONSTRAINT "PK_e4ee98bb552756c180aec1e854a";
ALTER TABLE ONLY public.clinics_amenities_amenities DROP CONSTRAINT "PK_d7b5f2dde38fc16a74150ecddc5";
ALTER TABLE ONLY public.amenities DROP CONSTRAINT "PK_c0777308847b3556086f2fb233e";
ALTER TABLE ONLY public."userPreferences" DROP CONSTRAINT "PK_ab832218e01c883d2d0395f13fb";
ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
ALTER TABLE ONLY public.gallery DROP CONSTRAINT "PK_65d7a1ef91ddafb3e7071b188a0";
ALTER TABLE ONLY public."clinicPreferences" DROP CONSTRAINT "PK_656d7535c459a796b895922ccfb";
ALTER TABLE ONLY public.clinics DROP CONSTRAINT "PK_5513b659e4d12b01a8ab3956abc";
ALTER TABLE ONLY public.cities DROP CONSTRAINT "PK_4762ffb6e5d198cfec5606bc11e";
ALTER TABLE ONLY public.amenities_clinics_clinics DROP CONSTRAINT "PK_2f497aa098d6eb4561c6ff3eeef";
ALTER TABLE ONLY public.contact DROP CONSTRAINT "PK_2cbbe00f59ab6b3bb5b8d19f989";
ALTER TABLE ONLY public.categories DROP CONSTRAINT "PK_24dbc6126a28ff948da33e97d3b";
ALTER TABLE ONLY public.reviews DROP CONSTRAINT "PK_231ae565c273ee700b283f15c1d";
ALTER TABLE ONLY public.treatments DROP CONSTRAINT "PK_133f26d52c70b9fa3c2dbb3c89e";
ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."userPreferences" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.treatments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.staff ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gallery ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contact ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.clinics ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."clinicPreferences" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.categs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.amenities ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP SEQUENCE public."users-permissions_user_id_seq";
DROP TABLE public."users-permissions_user";
DROP SEQUENCE public."users-permissions_role_id_seq";
DROP TABLE public."users-permissions_role";
DROP SEQUENCE public."users-permissions_permission_id_seq";
DROP TABLE public."users-permissions_permission";
DROP TABLE public.users;
DROP SEQUENCE public."userPreferences_id_seq";
DROP TABLE public."userPreferences";
DROP SEQUENCE public.upload_file_morph_id_seq;
DROP TABLE public.upload_file_morph;
DROP SEQUENCE public.upload_file_id_seq;
DROP TABLE public.upload_file;
DROP SEQUENCE public.treatments_id_seq;
DROP TABLE public.treatments;
DROP SEQUENCE public.strapi_webhooks_id_seq;
DROP TABLE public.strapi_webhooks;
DROP SEQUENCE public.strapi_administrator_id_seq;
DROP TABLE public.strapi_administrator;
DROP SEQUENCE public.staff_id_seq;
DROP TABLE public.staff;
DROP SEQUENCE public.reviews_id_seq;
DROP TABLE public.reviews;
DROP SEQUENCE public.posts_id_seq;
DROP TABLE public.posts;
DROP SEQUENCE public.gallery_id_seq;
DROP TABLE public.gallery;
DROP SEQUENCE public.core_store_id_seq;
DROP TABLE public.core_store;
DROP SEQUENCE public.contact_id_seq;
DROP TABLE public.contact;
DROP SEQUENCE public.clinics_id_seq;
DROP TABLE public.clinics_amenities_amenities;
DROP TABLE public.clinics;
DROP SEQUENCE public."clinicPreferences_id_seq";
DROP TABLE public."clinicPreferences";
DROP SEQUENCE public.cities_id_seq;
DROP TABLE public.cities;
DROP SEQUENCE public.categs_id_seq;
DROP TABLE public.categs;
DROP SEQUENCE public.categories_id_seq;
DROP TABLE public.categories;
DROP SEQUENCE public.amenities_id_seq;
DROP TABLE public.amenities_clinics_clinics;
DROP TABLE public.amenities;
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
    images text NOT NULL,
    "clinicId" integer
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
    category integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
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
4	Uho grlo nos	\N
5	Butt lifts	\N
6	Dental	\N
\.


--
-- Data for Name: categs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categs (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, name) FROM stdin;
1	Zagreb
2	Rijeka
3	Bjelovar
4	Split
5	Osijek
6	Samobor
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
1	Polinklinika Ronik	Rakitje 17, 14000 Samobor	1	6
2	Polinklinika Zoomer	Ivanova Ulica 16	1	2
3	Polinklinika Coomer	Glanc Menorah 3A	1	4
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
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
1	db_model_core_store	{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}	object	\N	\N
2	db_model_users-permissions_permission	{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false}}	object	\N	\N
3	db_model_categs	{"name":{"type":"string","required":true,"unique":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
4	db_model_upload_file	{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
5	db_model_strapi_webhooks	{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}	object	\N	\N
6	db_model_users-permissions_role	{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true}}	object	\N	\N
7	db_model_posts	{"title":{"type":"string","required":true,"unique":true},"content":{"type":"richtext","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"published_at":{"type":"date"},"author":{"type":"string"},"category":{"model":"category"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
8	db_model_strapi_administrator	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"required":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"blocked":{"type":"boolean","default":false,"configurable":false}}	object	\N	\N
9	db_model_users-permissions_user	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
10	db_model_upload_file_morph	{"upload_file_id":{"type":"integer"},"related_id":{"type":"integer"},"related_type":{"type":"text"},"field":{"type":"text"},"order":{"type":"integer"}}	object	\N	\N
11	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","redirect_uri":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]}}	object		
12	plugin_email_provider	{"provider":"sendmail","name":"Sendmail","auth":{"sendmail_default_from":{"label":"Sendmail Default From","type":"text"},"sendmail_default_replyto":{"label":"Sendmail Default Reply-To","type":"text"}}}	object	development	
13	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
14	plugin_content_manager_configuration_content_types::application::category.category	{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object		
18	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
15	plugin_content_manager_configuration_content_types::application::post.post	{"uid":"application::post.post","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Category","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","image","published_at"],"editRelations":["category"],"edit":[[{"name":"title","size":6}],[{"name":"content","size":12}],[{"name":"image","size":6},{"name":"published_at","size":4}],[{"name":"author","size":6}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
17	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
19	plugin_content_manager_configuration_content_types::strapi::administrator	{"uid":"strapi::administrator","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","blocked"],"editRelations":[],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"blocked","size":4}]]}}	object		
20	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
22	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_confirmation_redirection":"http://blog:3002/admin","email_reset_password":"http://blog:3002/admin","default_role":"authenticated"}	object		
\.


--
-- Data for Name: gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gallery (id, images, "clinicId") FROM stdin;
1	https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png,https://medicro-images.s3.eu-central-1.amazonaws.com/1590220007247+-+Screenshot+from+2020-05-23+08-36-20.png,https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png,https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png	2
2	https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png,https://medicro-images.s3.eu-central-1.amazonaws.com/1590220007247+-+Screenshot+from+2020-05-23+08-36-20.png,https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png,https://medicro-images.s3.eu-central-1.amazonaws.com/Screenshot+from+2020-05-26+12-08-44.png	3
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, content, published_at, author, category, created_at, updated_at) FROM stdin;
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
2	Marko Marulić	Head of Memery	Very cool wow so good	3
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, username, email, password, "resetPasswordToken", blocked) FROM stdin;
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
1	Proširavanje grla	15000	Širim grlo jao jao jao	1	4
2	Sužavanje grla	12000	Smanjujem grlo jao jao jao	1	4
3	BBL	20000	Liftam butt jao jao jao	1	5
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
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
1	Juraj	Markešić	juraj@juraj.hr	dbc3254f2d0a8d1833237b01d577461a185d045579ed548e8365333cc00def70
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role) FROM stdin;
1	application	category	count	f		1
2	application	category	count	f		2
3	application	category	create	f		1
4	application	category	create	f		2
5	application	category	delete	f		1
6	application	category	delete	f		2
7	application	category	find	f		1
8	application	category	find	f		2
9	application	category	findone	f		1
10	application	category	findone	f		2
11	application	category	update	f		1
12	application	category	update	f		2
13	application	post	count	f		1
14	application	post	count	f		2
15	application	post	create	f		1
16	application	post	create	f		2
17	application	post	delete	f		1
18	application	post	delete	f		2
19	application	post	find	f		1
20	application	post	find	f		2
21	application	post	findone	f		1
22	application	post	findone	f		2
23	application	post	update	f		1
24	application	post	update	f		2
25	content-manager	components	findcomponent	f		1
26	content-manager	components	findcomponent	f		2
27	content-manager	components	listcomponents	f		1
28	content-manager	components	listcomponents	f		2
29	content-manager	components	updatecomponent	f		2
30	content-manager	components	updatecomponent	f		1
31	content-manager	contentmanager	checkuidavailability	f		1
32	content-manager	contentmanager	checkuidavailability	f		2
33	content-manager	contentmanager	count	f		1
34	content-manager	contentmanager	count	f		2
35	content-manager	contentmanager	create	f		1
36	content-manager	contentmanager	create	f		2
38	content-manager	contentmanager	delete	f		2
39	content-manager	contentmanager	deletemany	f		1
37	content-manager	contentmanager	delete	f		1
40	content-manager	contentmanager	deletemany	f		2
41	content-manager	contentmanager	find	f		1
42	content-manager	contentmanager	find	f		2
43	content-manager	contentmanager	findone	f		1
44	content-manager	contentmanager	generateuid	f		1
45	content-manager	contentmanager	findone	f		2
46	content-manager	contentmanager	generateuid	f		2
47	content-manager	contentmanager	update	f		1
48	content-manager	contentmanager	update	f		2
49	content-manager	contenttypes	findcontenttype	f		1
50	content-manager	contenttypes	findcontenttype	f		2
51	content-manager	contenttypes	listcontenttypes	f		1
52	content-manager	contenttypes	listcontenttypes	f		2
53	content-manager	contenttypes	updatecontenttype	f		1
54	content-manager	contenttypes	updatecontenttype	f		2
56	content-type-builder	componentcategories	deletecategory	f		1
57	content-type-builder	componentcategories	editcategory	f		1
55	content-type-builder	componentcategories	deletecategory	f		2
58	content-type-builder	componentcategories	editcategory	f		2
59	content-type-builder	components	createcomponent	f		1
61	content-type-builder	components	deletecomponent	f		1
62	content-type-builder	components	deletecomponent	f		2
63	content-type-builder	components	getcomponent	f		1
64	content-type-builder	components	getcomponent	f		2
65	content-type-builder	components	getcomponents	f		1
66	content-type-builder	components	getcomponents	f		2
67	content-type-builder	components	updatecomponent	f		1
68	content-type-builder	components	updatecomponent	f		2
69	content-type-builder	connections	getconnections	f		1
71	content-type-builder	contenttypes	createcontenttype	f		1
72	content-type-builder	contenttypes	createcontenttype	f		2
73	content-type-builder	contenttypes	deletecontenttype	f		1
74	content-type-builder	contenttypes	deletecontenttype	f		2
75	content-type-builder	contenttypes	getcontenttype	f		1
76	content-type-builder	contenttypes	getcontenttype	f		2
77	content-type-builder	contenttypes	getcontenttypes	f		1
78	content-type-builder	contenttypes	getcontenttypes	f		2
79	content-type-builder	contenttypes	updatecontenttype	f		1
81	email	email	getenvironments	f		1
82	email	email	getenvironments	f		2
83	email	email	getsettings	f		1
84	email	email	getsettings	f		2
85	email	email	send	f		1
86	email	email	send	f		2
87	email	email	updatesettings	f		1
88	email	email	updatesettings	f		2
89	upload	proxy	uploadproxy	f		1
91	upload	upload	count	f		1
92	upload	upload	count	f		2
93	upload	upload	destroy	f		1
94	upload	upload	destroy	f		2
95	upload	upload	find	f		1
96	upload	upload	find	f		2
97	upload	upload	findone	f		1
98	upload	upload	findone	f		2
101	upload	upload	search	f		1
111	users-permissions	auth	connect	t		1
122	users-permissions	user	create	f		2
132	users-permissions	user	me	t		2
141	users-permissions	userspermissions	getadvancedsettings	f		1
60	content-type-builder	components	createcomponent	f		2
70	content-type-builder	connections	getconnections	f		2
80	content-type-builder	contenttypes	updatecontenttype	f		2
90	upload	proxy	uploadproxy	f		2
100	upload	upload	getsettings	f		2
110	users-permissions	auth	callback	t		2
120	users-permissions	auth	sendemailconfirmation	f		2
130	users-permissions	user	findone	f		2
140	users-permissions	userspermissions	deleterole	f		2
151	users-permissions	userspermissions	getemailtemplate	f		1
152	users-permissions	userspermissions	getemailtemplate	f		2
161	users-permissions	userspermissions	getroles	f		1
162	users-permissions	userspermissions	getroles	f		2
171	users-permissions	userspermissions	updateadvancedsettings	f		1
172	users-permissions	userspermissions	updateadvancedsettings	f		2
99	upload	upload	getsettings	f		1
109	users-permissions	auth	changepassword	t		2
118	users-permissions	auth	register	t		2
129	users-permissions	user	findone	f		1
139	users-permissions	userspermissions	deleterole	f		1
153	users-permissions	userspermissions	getpermissions	f		1
166	users-permissions	userspermissions	index	f		2
175	users-permissions	userspermissions	updateproviders	f		1
102	upload	upload	search	f		2
112	users-permissions	auth	connect	t		2
121	users-permissions	user	create	f		1
131	users-permissions	user	me	t		1
142	users-permissions	userspermissions	getadvancedsettings	f		2
154	users-permissions	userspermissions	getpermissions	f		2
163	users-permissions	userspermissions	getroutes	f		1
174	users-permissions	userspermissions	updateemailtemplate	f		2
103	upload	upload	updatesettings	f		1
114	users-permissions	auth	emailconfirmation	t		2
124	users-permissions	user	destroy	f		2
134	users-permissions	user	update	f		2
155	users-permissions	userspermissions	getpolicies	f		1
165	users-permissions	userspermissions	index	f		1
176	users-permissions	userspermissions	updateproviders	f		2
104	upload	upload	updatesettings	f		2
113	users-permissions	auth	emailconfirmation	f		1
123	users-permissions	user	destroy	f		1
133	users-permissions	user	update	f		1
156	users-permissions	userspermissions	getpolicies	f		2
167	users-permissions	userspermissions	init	t		1
177	users-permissions	userspermissions	updaterole	f		1
105	upload	upload	upload	f		1
115	users-permissions	auth	forgotpassword	f		1
125	users-permissions	user	destroyall	f		1
135	users-permissions	userspermissions	createrole	f		1
157	users-permissions	userspermissions	getproviders	f		1
164	users-permissions	userspermissions	getroutes	f		2
173	users-permissions	userspermissions	updateemailtemplate	f		1
106	upload	upload	upload	f		2
117	users-permissions	auth	register	f		1
127	users-permissions	user	find	f		2
137	users-permissions	userspermissions	deleteprovider	f		1
158	users-permissions	userspermissions	getproviders	f		2
169	users-permissions	userspermissions	searchusers	f		1
107	users-permissions	auth	callback	f		1
116	users-permissions	auth	forgotpassword	t		2
128	users-permissions	user	destroyall	f		2
138	users-permissions	userspermissions	deleteprovider	f		2
159	users-permissions	userspermissions	getrole	f		1
168	users-permissions	userspermissions	init	t		2
178	users-permissions	userspermissions	updaterole	f		2
108	users-permissions	auth	changepassword	f		1
119	users-permissions	auth	sendemailconfirmation	f		1
126	users-permissions	user	find	f		1
136	users-permissions	userspermissions	createrole	f		2
160	users-permissions	userspermissions	getrole	f		2
170	users-permissions	userspermissions	searchusers	f		2
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

SELECT pg_catalog.setval('public.amenities_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: categs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categs_id_seq', 1, false);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 6, true);


--
-- Name: clinicPreferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clinicPreferences_id_seq"', 1, false);


--
-- Name: clinics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clinics_id_seq', 3, true);


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_id_seq', 1, false);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 22, true);


--
-- Name: gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gallery_id_seq', 2, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_seq', 2, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: treatments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatments_id_seq', 3, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- Name: userPreferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userPreferences_id_seq"', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);


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

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


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

