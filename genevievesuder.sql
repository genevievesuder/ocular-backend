--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO genevievesuder;

--
-- Name: definitions; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.definitions (
    id bigint NOT NULL,
    term text,
    definition text,
    category text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.definitions OWNER TO genevievesuder;

--
-- Name: definitions_id_seq; Type: SEQUENCE; Schema: public; Owner: genevievesuder
--

CREATE SEQUENCE public.definitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.definitions_id_seq OWNER TO genevievesuder;

--
-- Name: definitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genevievesuder
--

ALTER SEQUENCE public.definitions_id_seq OWNED BY public.definitions.id;


--
-- Name: favorites; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.favorites (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    definition_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.favorites OWNER TO genevievesuder;

--
-- Name: favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: genevievesuder
--

CREATE SEQUENCE public.favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_id_seq OWNER TO genevievesuder;

--
-- Name: favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genevievesuder
--

ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title text,
    content text,
    image text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO genevievesuder;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: genevievesuder
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO genevievesuder;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genevievesuder
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO genevievesuder;

--
-- Name: users; Type: TABLE; Schema: public; Owner: genevievesuder
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email text,
    username text,
    password_digest text,
    education text,
    title text,
    field text,
    about text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO genevievesuder;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: genevievesuder
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO genevievesuder;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genevievesuder
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: definitions id; Type: DEFAULT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.definitions ALTER COLUMN id SET DEFAULT nextval('public.definitions_id_seq'::regclass);


--
-- Name: favorites id; Type: DEFAULT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-03-28 18:44:18.737226	2023-03-28 18:44:18.737226
\.


--
-- Data for Name: definitions; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.definitions (id, term, definition, category, created_at, updated_at) FROM stdin;
1	Amblyopia	When vision in one or both eyes does not develop properly during childhood. It is sometimes called lazy eye. Amblyopia is a common problem in babies and young children.	Vision Impairments	2023-03-30 00:45:37.884089	2023-03-30 00:45:37.884089
2	Aqueous Humor	The clear liquid inside the front part of the eye. It nourishes the eye and keeps it inflated. The eye constantly produces a small amount of aqueous humor while an equal amount flows out through the trabecular meshwork in the drainage angle.	Anatomy	2023-03-30 00:45:37.890707	2023-03-30 00:45:37.890707
3	Astigmatism	An imperfection in the curvature of the eye's cornea or lens.	Vision Impairments	2023-03-30 00:45:37.896189	2023-03-30 00:45:37.896189
4	Blepharitis	Inflammation of the eyelids which causes them appear red, swollen, or feel like they are burning or sore. Blepharitis is very common, especially among people who have oily skin, dandruff or rosacea.	Infections & Irritations	2023-03-30 00:45:37.901176	2023-03-30 00:45:37.901176
5	Cataracts	A cataract is when your eye's natural lens becomes cloudy. Proteins in your lens break down and cause things to look blurry, hazy or less colorful.	Vision Impairments	2023-03-30 00:45:37.906284	2023-03-30 00:45:37.906284
6	Ciliary Body	A part of the uvea. The ciliary body produces aqueous humor.	Anatomy	2023-03-30 00:45:37.91182	2023-03-30 00:45:37.91182
7	Conjunctivitis	Often called pink eye, conjunctivitis is when the conjunctiva is irritated by an infection or allergies. Your eyes are red and swollen (inflamed), and sometimes they have a sticky discharge. You can have conjunctivitis in one or both eyes. Some types of pink eye are very contagious.	Infections & Irritations	2023-03-30 00:45:37.917159	2023-03-30 00:45:37.917159
8	Dilating Eye Drops	Dilating eye drops (Tropicamide) enlarge the pupils and keep them from getting smaller to assist in proper examination or ocular procedures when shining light in the eyes	Drugs	2023-03-30 00:45:37.921867	2023-03-30 00:45:37.921867
9	Endothelium	The inner layer of cells that make up the cornea. These cells remove extra fluid from the cornea	Anatomy	2023-03-30 00:45:37.926386	2023-03-30 00:45:37.926386
10	Farsightedness (Hyperopia)	Farsightedness (also called hyperopia) is a refractive error. This is when the eye does not refract—or bend—light properly. Generally, a farsighted person sees distant objects clearly, but near vision is blurry.	Vision Impairments	2023-03-30 00:45:37.930904	2023-03-30 00:45:37.930904
11	Fuchs' Dystrophy	Fuchs' dystrophy is a disease of the cornea. It is when cells in the corneal layer called the endothelium gradually die off. These cells normally pump fluid from the cornea to keep it clear. When they die, fluid builds up and the cornea gets swollen and puffy. Vision becomes cloudy or hazy.	Diseases and Syndromes	2023-03-30 00:45:37.935389	2023-03-30 00:45:37.935389
12	Glaucoma	Glaucoma is a disease that damages the eye's optic nerve. It usually happens when fluid builds up in the front part of the eye. That extra fluid increases the pressure in the eye, damaging the optic nerve.	Diseases and Syndromes	2023-03-30 00:45:37.939922	2023-03-30 00:45:37.939922
13	Gonioscopy	Gonioscopy is a painless exam in which an ophthalmologist uses to check a part of the eye called the drainage angle. This area is at the front of the eye between the iris and the cornea. It is where fluid called aqueous humor naturally drains out of the eye. The gonioscopy is performed to check to see if this drainage angle is functioning properly.	Exams	2023-03-30 00:45:37.944364	2023-03-30 00:45:37.944364
14	Hemangioma	A hemangioma is a non-cancerous (benign) tumor caused by abnormal growth of blood vessels. Hemangiomas can occur anywhere on the body, but are most commonly found on the face and neck. While they can be present at birth, hemangiomas more often appear during the first six months of life.	Abnormalities	2023-03-30 00:45:37.94889	2023-03-30 00:45:37.94889
15	Hyphema	A hyphema is when blood collects inside the front of the eye. This happens between the cornea (the clear, dome-shaped window at the front of the eye) and the iris (the colored part of the eye). The blood may cover part or all of the iris and the pupil (the round, dark circle in the middle of your eye). If you have a hyphema, your vision might be partly or totally blocked in that eye.	Injuries	2023-03-30 00:45:37.953878	2023-03-30 00:45:37.953878
16	Iridocorneal Endothelial Syndrome (ICE)	Iridocorneal endothelial syndrome (ICE) is a rare eye condition. The three main features of ICE include: swelling of the cornea, changes in the iris, and a form of glaucoma.	Diseases and Syndromes	2023-03-30 00:45:37.95848	2023-03-30 00:45:37.95848
17	Keratoconus	When the cornea thins out and bulges like a cone. Changing the shape of the cornea brings light rays out of focus. As a result, vision is blurry and distorted.	Abnormalities	2023-03-30 00:45:37.962945	2023-03-30 00:45:37.962945
18	Lucentis	The brand name for Ranibizumab, Lucentis is a drug used to treat wet age-related macular degeneration (AMD). It is also used to treat diabetic eye disease and other problems of the retina. It is injected into the eye to help slow vision loss from these diseases.	Drugs	2023-03-30 00:45:37.967259	2023-03-30 00:45:37.967259
19	Macular Edema	Often occuring in Diabetic patients, Macular edema happens when fluid builds up in the macula, causing swelling. This can distort vision, making things look blurry and colors look washed out. Without treatment, macular edema can lead to permanent vision loss.	Abnormalities	2023-03-30 00:45:37.971953	2023-03-30 00:45:37.971953
20	Myopia	Nearsightedness (myopia) is when close-up objects look clear but distant objects are blurry. For instance, you can read a map clearly but have trouble seeing well enough to drive a car	Vision Impairments	2023-03-30 00:45:37.97671	2023-03-30 00:45:37.97671
\.


--
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.favorites (id, user_id, definition_id, created_at, updated_at) FROM stdin;
1	1	1	2023-03-30 00:45:37.993169	2023-03-30 00:45:37.993169
2	1	4	2023-03-30 00:45:37.99929	2023-03-30 00:45:37.99929
3	1	12	2023-03-30 00:45:38.004626	2023-03-30 00:45:38.004626
4	2	19	2023-03-30 00:45:38.009429	2023-03-30 00:45:38.009429
5	2	8	2023-03-30 00:45:38.014034	2023-03-30 00:45:38.014034
6	3	16	2023-03-30 00:45:38.018394	2023-03-30 00:45:38.018394
7	3	13	2023-03-30 00:45:38.02415	2023-03-30 00:45:38.02415
8	4	2	2023-03-30 00:45:38.028954	2023-03-30 00:45:38.028954
9	5	15	2023-03-30 00:45:38.033327	2023-03-30 00:45:38.033327
10	8	3	2023-03-30 00:45:38.037612	2023-03-30 00:45:38.037612
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.posts (id, title, content, image, user_id, created_at, updated_at) FROM stdin;
1	Interesting patient case	Friday's patient: 51 YO healthy M presents with bilateral chronic angle closure glaucoma CATS IOP 38 OU. Large clumps of non-adherent WBCs(?) in A/C and anterior Iris stromal fissures, bilaterally. No mass on U/S. Uveitis Masquerade Syndrome? leukemia infiltrates?	https://preview.redd.it/136w17uln4ga1.jpg?width=640&crop=smart&auto=webp&v=enabled&s=7a7d90c942abc2d5ebb1afbeaf76f68b9c3750cd	1	2023-03-30 00:45:37.816361	2023-03-30 00:45:37.816361
2	starting optometric tech position	hi everyone! ill be starting an optometric tech position soon and im wondering if anyone has any tips/advice before i start or chime in w their experience. :) i have no prior experience in optometry but the field has always interested me and im super excited to learn. thank u so much! book recs are also greatly appreciated.		7	2023-03-30 00:45:37.825231	2023-03-30 00:45:37.825231
3	Scope of practice and future of optometry	Hello everyone, One thing that I've been thinking a lot about lately is the scope of practice for optometry.\n    In comparison to the health care fields of practice we have med school, optometry, dentistry and a few other schools as well. With dentistry a dentist goes through 4 years of dental school and then can practice as a general dentist but then they also practice dental surgery like implants. Technically, (or so I thought) a dentist can only do implants if they do med school after dental school and get an MD DDS. There is a pathway where after dental school they do three years of med school and then go into OMFS type of surgery which includes implants. But technically general dentists do it too. For optometry the biggest hurdle we face in growing our profession is the medical counter part of Ophthalmology. The biggest argument we face with adding lasers and surgical procedures to our career is that we aren't trained enough. This is true because an optometrist does 4 years of optometry school and then practices general optometry but then we are trying to add surgery as well, why not increase the length of our training? OMFS originally required dentists to go through additional training, why not add to our optometry field. We can have a pathway that allows those with OD degrees to also do three of med schools. You can take the Step exams and the USML but skip the clerkships and then do residencies where you learn more about surgery. Then you can practice surgery. There is no pathway that exists currently. Yes a dentist can do implants without the med school pathway but that pathway does exist. I think this pathway will go a long way in increasing our credibility worldwide. The biggest argument we face is that we aren't trained enough but we can change that. This doesn't take away from Ophthalmology the same way OMFS doesn't take away from plastic surgery. It also gives another pathway to those who wish to explore eye health with the traditional med school pathway. Schools that have medical schools and optometry schools should consider adding pathways to increase the scope of our field. This makes more sense then just having 4 years of optometry and certificates when it comes to surgery.		6	2023-03-30 00:45:37.83237	2023-03-30 00:45:37.83237
4	How do *you* prescribe ADDs for presbyopes	What's your prescribing philosophy for presbyopes? There is so much testing you can do for ADD determination, but I find that prescribing age-estimated adds works just as well as NRA/PRA balancing, FCC, etc., the majority of the time. So much so that I virtually never do near testing in the phoropter anymore. Occasionally, for patients that I know have unusual working distances (especially concert musicians), I'll stick it in a trial frame and add plus until they're happy.\n    Side question — who here has ever prescribed different ADDs between eyes? And if so, how'd that go for you?		5	2023-03-30 00:45:37.849747	2023-03-30 00:45:37.849747
5	Nbeo part 2 tmod	Hi. I'm looking for some guidance. I passed nbeo part 1 PAM but failed the TMOD section. Anyone have guidance on how to study for the section/ what seemed to work. Thank you!	https://media4.giphy.com/media/P8X4lemg5Iphe/giphy.gif	8	2023-03-30 00:45:37.85623	2023-03-30 00:45:37.85623
6	What do you use and why? - tonometry measuring devices.	What intra-ocular measuring device do you use in your practice? My practice has a Nidek non-contact tonometer, an I-Care 100, Perkins applanation tonometer and a Pascal dynamic contour tonometry. I mostly use non-contact because its fast and I get an auto-refraction. I-care 100 if I need to remeasure IOP or px cannot access the autoref machine/machine could not measure IOP. I am thinking of utilising the Pascal dynamic contour tonometry more as it does not get influeced by corneal biometry unlike all the other methods listed above. The hospital seems to rely on tonopen or Goldman applanation tonometry. So perhaps for best patiebt outcomes, I should get one of these devices so that my measurements are more in line with the hospitals measurement. So what do you use to measure intra-ocular pressure and why?	https://i.ebayimg.com/images/g/joYAAOSwV5BjjmIl/s-l1600.jpg	1	2023-03-30 00:45:37.862485	2023-03-30 00:45:37.862485
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.schema_migrations (version) FROM stdin;
20230202154742
20230202155240
20230202163542
20230202164308
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: genevievesuder
--

COPY public.users (id, email, username, password_digest, education, title, field, about, created_at, updated_at) FROM stdin;
1	akeyeguy@msn.com	ak_eye_guy	$2a$12$nwZWFle8/nLpYl1OVFvoBO2OZ2mI72qIeQ9zoQwDkIYcA1Wao5gT2	Pacific university College of Optometry Alumni	Doctor of Optometry	Optometry	Optometrist by weekday. Father, fisherman, & beer enthusiast by weekend.	2023-03-30 00:45:36.409971	2023-03-30 00:45:36.409971
2	bellad6@gmail.com	belladonna	$2a$12$AIAG/m23TuqhqAwzEJDs1Ow/c6YWJ4yaHTP3R1puWSiIAwzD2DM/u	University of California - Berkeley	Student of Optometry	Pediatric Optometry & Vision Therapy	I love all things eyes, optometry, and vision!! My passion is working with the youth & educating people on eye health and disease prevention. Always down for a study session. :)	2023-03-30 00:45:36.600258	2023-03-30 00:45:36.600258
3	aurors@gmail.com	ak_optic_chic	$2a$12$ZSMad2MtD/VCsU5UrVSIY./LGririSJ45erm1pYOEkFvwk8LQ3Zd2	U of O	PUCO first year student	Optometry	First year student starting this fall at PU, would love any advice & recommendations from other optometry students and graduates.	2023-03-30 00:45:36.787676	2023-03-30 00:45:36.787676
4	krune49@hotmail.com	killianrune49	$2a$12$VmnC3MDQjSDDiS28VlesvOLf9fpN5mIRd2V0qk6f9aOn8pneYDNHi	Nova Southeastern University	3rd year student	Neuro-optometry	Born and raised in Austin, TX. Currently studying neuro-opt at NSU 🤘	2023-03-30 00:45:36.978356	2023-03-30 00:45:36.978356
5	ors@gmail.com	orion_robert	$2a$12$6N0o239IQkpN9tWF7jJIU.i3ainbIR8TuPHRj1ZbS90BIrX602XTe	Duke University Eye Center		Opthamology	Hi	2023-03-30 00:45:37.171355	2023-03-30 00:45:37.171355
6	sumiregalilahi@icloud.com	sumire_gee	$2a$12$1icUaKHyH6Ewfmm4y6o0muvUR9yIrnUzO5ek/jp/CSUNYiGrzLgom	Chicago College of Optometry	Doctor of Optometry	Geriatric optometry		2023-03-30 00:45:37.363471	2023-03-30 00:45:37.363471
7	meow@gmail.com	scholarlyfireplace	$2a$12$ZrMSBAfZRY73s9UXSFaD8eHMRJQg4QBuXq/nrE3Qo8P2pBtXp9F9y	Farmingdale State	freshman at FSC		Undeclared freshman curious about an education/career in optometry	2023-03-30 00:45:37.57553	2023-03-30 00:45:37.57553
8	hello@hotmail.com	user3836479	$2a$12$dK/PFHzeZaAFtPbpNwT3Lu28gPYL7mPv7CXAVC7gOAdCK6.6v49bK					2023-03-30 00:45:37.773368	2023-03-30 00:45:37.773368
\.


--
-- Name: definitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genevievesuder
--

SELECT pg_catalog.setval('public.definitions_id_seq', 20, true);


--
-- Name: favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genevievesuder
--

SELECT pg_catalog.setval('public.favorites_id_seq', 14, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genevievesuder
--

SELECT pg_catalog.setval('public.posts_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genevievesuder
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: definitions definitions_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);


--
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_favorites_on_definition_id; Type: INDEX; Schema: public; Owner: genevievesuder
--

CREATE INDEX index_favorites_on_definition_id ON public.favorites USING btree (definition_id);


--
-- Name: index_favorites_on_user_id; Type: INDEX; Schema: public; Owner: genevievesuder
--

CREATE INDEX index_favorites_on_user_id ON public.favorites USING btree (user_id);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: genevievesuder
--

CREATE INDEX index_posts_on_user_id ON public.posts USING btree (user_id);


--
-- Name: posts fk_rails_5b5ddfd518; Type: FK CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_5b5ddfd518 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: favorites fk_rails_d15744e438; Type: FK CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT fk_rails_d15744e438 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: favorites fk_rails_dc9745deb0; Type: FK CONSTRAINT; Schema: public; Owner: genevievesuder
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT fk_rails_dc9745deb0 FOREIGN KEY (definition_id) REFERENCES public.definitions(id);


--
-- PostgreSQL database dump complete
--

