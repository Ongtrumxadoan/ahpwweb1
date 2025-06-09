--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Debian 16.8-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2025-06-09 18:07:38

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
-- TOC entry 215 (class 1259 OID 16389)
-- Name: criteriacomparison; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.criteriacomparison (
    id integer NOT NULL,
    matrix_id text NOT NULL,
    criteria_row text NOT NULL,
    criteria_col text NOT NULL,
    value real NOT NULL
);


ALTER TABLE public.criteriacomparison OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16394)
-- Name: criteriacomparison_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.criteriacomparison_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.criteriacomparison_id_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 216
-- Name: criteriacomparison_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.criteriacomparison_id_seq OWNED BY public.criteriacomparison.id;


--
-- TOC entry 217 (class 1259 OID 16395)
-- Name: option_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.option_scores (
    option_id character varying(10) NOT NULL,
    score double precision,
    matrix_id character varying(50)
);


ALTER TABLE public.option_scores OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16398)
-- Name: options_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.options_data (
    option_id character varying(10) NOT NULL,
    pin double precision,
    performance double precision,
    camera double precision,
    screen double precision,
    weight double precision,
    connectivity double precision,
    memory double precision,
    id integer NOT NULL,
    matrix_id character varying(50)
);


ALTER TABLE public.options_data OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16401)
-- Name: options_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.options_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.options_data_id_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 219
-- Name: options_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.options_data_id_seq OWNED BY public.options_data.id;


--
-- TOC entry 220 (class 1259 OID 16402)
-- Name: pairwise_comparison; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pairwise_comparison (
    criterion character varying(50),
    option1 character varying(10),
    option2 character varying(10),
    pairwise_value double precision,
    weight double precision,
    matrix_id character varying(50)
);


ALTER TABLE public.pairwise_comparison OWNER TO postgres;

--
-- TOC entry 3216 (class 2604 OID 16405)
-- Name: criteriacomparison id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criteriacomparison ALTER COLUMN id SET DEFAULT nextval('public.criteriacomparison_id_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16406)
-- Name: options_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options_data ALTER COLUMN id SET DEFAULT nextval('public.options_data_id_seq'::regclass);


--
-- TOC entry 3367 (class 0 OID 16389)
-- Dependencies: 215
-- Data for Name: criteriacomparison; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.criteriacomparison (id, matrix_id, criteria_row, criteria_col, value) FROM stdin;
2819	matrix_20250517_135623	Pin	Pin	1
2820	matrix_20250517_135623	Hiệu Suất	Pin	0.5
2821	matrix_20250517_135623	Camera	Pin	0.3333
2822	matrix_20250517_135623	Màn Hình	Pin	0.25
2823	matrix_20250517_135623	Trọng Lượng	Pin	0.1667
2824	matrix_20250517_135623	Kết Nối	Pin	0.1429
2825	matrix_20250517_135623	Bộ Nhớ	Pin	0.1111
2826	matrix_20250517_135623	Pin	Hiệu Suất	2
2827	matrix_20250517_135623	Hiệu Suất	Hiệu Suất	1
2828	matrix_20250517_135623	Camera	Hiệu Suất	0.3333
2829	matrix_20250517_135623	Màn Hình	Hiệu Suất	0.3333
2830	matrix_20250517_135623	Trọng Lượng	Hiệu Suất	0.2
2831	matrix_20250517_135623	Kết Nối	Hiệu Suất	0.2
2832	matrix_20250517_135623	Bộ Nhớ	Hiệu Suất	0.1429
2833	matrix_20250517_135623	Pin	Camera	3
2834	matrix_20250517_135623	Hiệu Suất	Camera	3
2835	matrix_20250517_135623	Camera	Camera	1
2836	matrix_20250517_135623	Màn Hình	Camera	0.5
2837	matrix_20250517_135623	Trọng Lượng	Camera	0.3333
2838	matrix_20250517_135623	Kết Nối	Camera	0.25
2839	matrix_20250517_135623	Bộ Nhớ	Camera	0.2
2840	matrix_20250517_135623	Pin	Màn Hình	4
2841	matrix_20250517_135623	Hiệu Suất	Màn Hình	3
2842	matrix_20250517_135623	Camera	Màn Hình	2
2843	matrix_20250517_135623	Màn Hình	Màn Hình	1
2844	matrix_20250517_135623	Trọng Lượng	Màn Hình	0.5
2845	matrix_20250517_135623	Kết Nối	Màn Hình	0.3333
2846	matrix_20250517_135623	Bộ Nhớ	Màn Hình	0.25
2847	matrix_20250517_135623	Pin	Trọng Lượng	6
2848	matrix_20250517_135623	Hiệu Suất	Trọng Lượng	5
2849	matrix_20250517_135623	Camera	Trọng Lượng	3
2850	matrix_20250517_135623	Màn Hình	Trọng Lượng	2
2851	matrix_20250517_135623	Trọng Lượng	Trọng Lượng	1
2852	matrix_20250517_135623	Kết Nối	Trọng Lượng	0.5
2853	matrix_20250517_135623	Bộ Nhớ	Trọng Lượng	0.3333
2854	matrix_20250517_135623	Pin	Kết Nối	7
2855	matrix_20250517_135623	Hiệu Suất	Kết Nối	5
2856	matrix_20250517_135623	Camera	Kết Nối	4
2857	matrix_20250517_135623	Màn Hình	Kết Nối	3
2858	matrix_20250517_135623	Trọng Lượng	Kết Nối	2
2859	matrix_20250517_135623	Kết Nối	Kết Nối	1
2860	matrix_20250517_135623	Bộ Nhớ	Kết Nối	0.5
2861	matrix_20250517_135623	Pin	Bộ Nhớ	9
2862	matrix_20250517_135623	Hiệu Suất	Bộ Nhớ	7
2863	matrix_20250517_135623	Camera	Bộ Nhớ	5
2864	matrix_20250517_135623	Màn Hình	Bộ Nhớ	4
2865	matrix_20250517_135623	Trọng Lượng	Bộ Nhớ	3
2866	matrix_20250517_135623	Kết Nối	Bộ Nhớ	2
2867	matrix_20250517_135623	Bộ Nhớ	Bộ Nhớ	1
2868	matrix_20250518_173417	Pin	Pin	1
2869	matrix_20250518_173417	Hiệu Suất	Pin	0.5
2870	matrix_20250518_173417	Camera	Pin	0.3333
2871	matrix_20250518_173417	Màn Hình	Pin	0.25
2872	matrix_20250518_173417	Trọng Lượng	Pin	0.1667
2873	matrix_20250518_173417	Kết Nối	Pin	0.1429
2874	matrix_20250518_173417	Bộ Nhớ	Pin	0.1111
2875	matrix_20250518_173417	Pin	Hiệu Suất	2
2876	matrix_20250518_173417	Hiệu Suất	Hiệu Suất	1
2877	matrix_20250518_173417	Camera	Hiệu Suất	0.3333
2878	matrix_20250518_173417	Màn Hình	Hiệu Suất	0.3333
2879	matrix_20250518_173417	Trọng Lượng	Hiệu Suất	0.2
2880	matrix_20250518_173417	Kết Nối	Hiệu Suất	0.2
2881	matrix_20250518_173417	Bộ Nhớ	Hiệu Suất	0.1429
2882	matrix_20250518_173417	Pin	Camera	3
2883	matrix_20250518_173417	Hiệu Suất	Camera	3
2884	matrix_20250518_173417	Camera	Camera	1
2885	matrix_20250518_173417	Màn Hình	Camera	0.5
2886	matrix_20250518_173417	Trọng Lượng	Camera	0.3333
2887	matrix_20250518_173417	Kết Nối	Camera	0.25
2888	matrix_20250518_173417	Bộ Nhớ	Camera	0.2
2889	matrix_20250518_173417	Pin	Màn Hình	4
2890	matrix_20250518_173417	Hiệu Suất	Màn Hình	3
2891	matrix_20250518_173417	Camera	Màn Hình	2
2892	matrix_20250518_173417	Màn Hình	Màn Hình	1
2893	matrix_20250518_173417	Trọng Lượng	Màn Hình	0.5
2894	matrix_20250518_173417	Kết Nối	Màn Hình	0.3333
2895	matrix_20250518_173417	Bộ Nhớ	Màn Hình	0.25
2896	matrix_20250518_173417	Pin	Trọng Lượng	6
2897	matrix_20250518_173417	Hiệu Suất	Trọng Lượng	5
2898	matrix_20250518_173417	Camera	Trọng Lượng	3
2899	matrix_20250518_173417	Màn Hình	Trọng Lượng	2
2900	matrix_20250518_173417	Trọng Lượng	Trọng Lượng	1
2901	matrix_20250518_173417	Kết Nối	Trọng Lượng	0.5
2902	matrix_20250518_173417	Bộ Nhớ	Trọng Lượng	0.3333
2903	matrix_20250518_173417	Pin	Kết Nối	7
2904	matrix_20250518_173417	Hiệu Suất	Kết Nối	5
2905	matrix_20250518_173417	Camera	Kết Nối	4
2906	matrix_20250518_173417	Màn Hình	Kết Nối	3
2907	matrix_20250518_173417	Trọng Lượng	Kết Nối	2
2908	matrix_20250518_173417	Kết Nối	Kết Nối	1
2909	matrix_20250518_173417	Bộ Nhớ	Kết Nối	0.5
2910	matrix_20250518_173417	Pin	Bộ Nhớ	9
2911	matrix_20250518_173417	Hiệu Suất	Bộ Nhớ	7
2912	matrix_20250518_173417	Camera	Bộ Nhớ	5
2913	matrix_20250518_173417	Màn Hình	Bộ Nhớ	4
2914	matrix_20250518_173417	Trọng Lượng	Bộ Nhớ	3
2915	matrix_20250518_173417	Kết Nối	Bộ Nhớ	2
2916	matrix_20250518_173417	Bộ Nhớ	Bộ Nhớ	1
2917	matrix_20250518_173433	Pin	Pin	1
2918	matrix_20250518_173433	Hiệu Suất	Pin	0.5
2919	matrix_20250518_173433	Camera	Pin	0.3333
2920	matrix_20250518_173433	Màn Hình	Pin	0.25
2921	matrix_20250518_173433	Trọng Lượng	Pin	0.1667
2922	matrix_20250518_173433	Kết Nối	Pin	0.1429
2923	matrix_20250518_173433	Bộ Nhớ	Pin	0.1111
2924	matrix_20250518_173433	Pin	Hiệu Suất	2
2925	matrix_20250518_173433	Hiệu Suất	Hiệu Suất	1
2926	matrix_20250518_173433	Camera	Hiệu Suất	0.3333
2927	matrix_20250518_173433	Màn Hình	Hiệu Suất	0.3333
2928	matrix_20250518_173433	Trọng Lượng	Hiệu Suất	0.2
2929	matrix_20250518_173433	Kết Nối	Hiệu Suất	0.2
2930	matrix_20250518_173433	Bộ Nhớ	Hiệu Suất	0.1429
2931	matrix_20250518_173433	Pin	Camera	3
2932	matrix_20250518_173433	Hiệu Suất	Camera	3
2933	matrix_20250518_173433	Camera	Camera	1
2934	matrix_20250518_173433	Màn Hình	Camera	0.5
2935	matrix_20250518_173433	Trọng Lượng	Camera	0.3333
2936	matrix_20250518_173433	Kết Nối	Camera	0.25
2937	matrix_20250518_173433	Bộ Nhớ	Camera	0.2
2938	matrix_20250518_173433	Pin	Màn Hình	4
2939	matrix_20250518_173433	Hiệu Suất	Màn Hình	3
2940	matrix_20250518_173433	Camera	Màn Hình	2
2941	matrix_20250518_173433	Màn Hình	Màn Hình	1
2942	matrix_20250518_173433	Trọng Lượng	Màn Hình	0.5
2943	matrix_20250518_173433	Kết Nối	Màn Hình	0.3333
2944	matrix_20250518_173433	Bộ Nhớ	Màn Hình	0.25
2945	matrix_20250518_173433	Pin	Trọng Lượng	6
2946	matrix_20250518_173433	Hiệu Suất	Trọng Lượng	5
2947	matrix_20250518_173433	Camera	Trọng Lượng	3
2948	matrix_20250518_173433	Màn Hình	Trọng Lượng	2
2949	matrix_20250518_173433	Trọng Lượng	Trọng Lượng	1
2950	matrix_20250518_173433	Kết Nối	Trọng Lượng	0.5
2951	matrix_20250518_173433	Bộ Nhớ	Trọng Lượng	0.3333
2952	matrix_20250518_173433	Pin	Kết Nối	7
2953	matrix_20250518_173433	Hiệu Suất	Kết Nối	5
2954	matrix_20250518_173433	Camera	Kết Nối	4
2955	matrix_20250518_173433	Màn Hình	Kết Nối	3
2956	matrix_20250518_173433	Trọng Lượng	Kết Nối	2
2957	matrix_20250518_173433	Kết Nối	Kết Nối	1
2958	matrix_20250518_173433	Bộ Nhớ	Kết Nối	0.5
2959	matrix_20250518_173433	Pin	Bộ Nhớ	9
2960	matrix_20250518_173433	Hiệu Suất	Bộ Nhớ	7
2961	matrix_20250518_173433	Camera	Bộ Nhớ	5
2962	matrix_20250518_173433	Màn Hình	Bộ Nhớ	4
2963	matrix_20250518_173433	Trọng Lượng	Bộ Nhớ	3
2964	matrix_20250518_173433	Kết Nối	Bộ Nhớ	2
2965	matrix_20250518_173433	Bộ Nhớ	Bộ Nhớ	1
2966	matrix_20250519_125743	Pin	Pin	1
2967	matrix_20250519_125743	Hiệu Suất	Pin	0.5
2968	matrix_20250519_125743	Camera	Pin	0.3333
2969	matrix_20250519_125743	Màn Hình	Pin	0.25
2970	matrix_20250519_125743	Trọng Lượng	Pin	0.1667
2971	matrix_20250519_125743	Kết Nối	Pin	0.1429
2972	matrix_20250519_125743	Bộ Nhớ	Pin	0.1111
2973	matrix_20250519_125743	Pin	Hiệu Suất	2
2974	matrix_20250519_125743	Hiệu Suất	Hiệu Suất	1
2975	matrix_20250519_125743	Camera	Hiệu Suất	0.3333
2976	matrix_20250519_125743	Màn Hình	Hiệu Suất	0.3333
2977	matrix_20250519_125743	Trọng Lượng	Hiệu Suất	0.2
2978	matrix_20250519_125743	Kết Nối	Hiệu Suất	0.2
2979	matrix_20250519_125743	Bộ Nhớ	Hiệu Suất	0.1429
2980	matrix_20250519_125743	Pin	Camera	3
2981	matrix_20250519_125743	Hiệu Suất	Camera	3
2982	matrix_20250519_125743	Camera	Camera	1
2983	matrix_20250519_125743	Màn Hình	Camera	0.5
2984	matrix_20250519_125743	Trọng Lượng	Camera	0.3333
2985	matrix_20250519_125743	Kết Nối	Camera	0.25
2986	matrix_20250519_125743	Bộ Nhớ	Camera	0.2
2987	matrix_20250519_125743	Pin	Màn Hình	4
2988	matrix_20250519_125743	Hiệu Suất	Màn Hình	3
2989	matrix_20250519_125743	Camera	Màn Hình	2
2990	matrix_20250519_125743	Màn Hình	Màn Hình	1
2991	matrix_20250519_125743	Trọng Lượng	Màn Hình	0.5
2992	matrix_20250519_125743	Kết Nối	Màn Hình	0.3333
2993	matrix_20250519_125743	Bộ Nhớ	Màn Hình	0.25
2994	matrix_20250519_125743	Pin	Trọng Lượng	6
2995	matrix_20250519_125743	Hiệu Suất	Trọng Lượng	5
2996	matrix_20250519_125743	Camera	Trọng Lượng	3
2997	matrix_20250519_125743	Màn Hình	Trọng Lượng	2
2998	matrix_20250519_125743	Trọng Lượng	Trọng Lượng	1
2999	matrix_20250519_125743	Kết Nối	Trọng Lượng	0.5
3000	matrix_20250519_125743	Bộ Nhớ	Trọng Lượng	0.3333
3001	matrix_20250519_125743	Pin	Kết Nối	7
3002	matrix_20250519_125743	Hiệu Suất	Kết Nối	5
3003	matrix_20250519_125743	Camera	Kết Nối	4
3004	matrix_20250519_125743	Màn Hình	Kết Nối	3
3005	matrix_20250519_125743	Trọng Lượng	Kết Nối	2
3006	matrix_20250519_125743	Kết Nối	Kết Nối	1
3007	matrix_20250519_125743	Bộ Nhớ	Kết Nối	0.5
3008	matrix_20250519_125743	Pin	Bộ Nhớ	9
3009	matrix_20250519_125743	Hiệu Suất	Bộ Nhớ	7
3010	matrix_20250519_125743	Camera	Bộ Nhớ	5
3011	matrix_20250519_125743	Màn Hình	Bộ Nhớ	4
3012	matrix_20250519_125743	Trọng Lượng	Bộ Nhớ	3
3013	matrix_20250519_125743	Kết Nối	Bộ Nhớ	2
3014	matrix_20250519_125743	Bộ Nhớ	Bộ Nhớ	1
3015	matrix_20250519_131357	Pin	Pin	1
3016	matrix_20250519_131357	Hiệu Suất	Pin	0.5
3017	matrix_20250519_131357	Camera	Pin	0.3333
3018	matrix_20250519_131357	Màn Hình	Pin	0.25
3019	matrix_20250519_131357	Trọng Lượng	Pin	0.1667
3020	matrix_20250519_131357	Kết Nối	Pin	0.1429
3021	matrix_20250519_131357	Bộ Nhớ	Pin	0.1111
3022	matrix_20250519_131357	Pin	Hiệu Suất	2
3023	matrix_20250519_131357	Hiệu Suất	Hiệu Suất	1
3024	matrix_20250519_131357	Camera	Hiệu Suất	0.3333
3025	matrix_20250519_131357	Màn Hình	Hiệu Suất	0.3333
3026	matrix_20250519_131357	Trọng Lượng	Hiệu Suất	0.2
3027	matrix_20250519_131357	Kết Nối	Hiệu Suất	0.2
3028	matrix_20250519_131357	Bộ Nhớ	Hiệu Suất	0.1429
3029	matrix_20250519_131357	Pin	Camera	3
3030	matrix_20250519_131357	Hiệu Suất	Camera	3
3031	matrix_20250519_131357	Camera	Camera	1
3032	matrix_20250519_131357	Màn Hình	Camera	0.5
3033	matrix_20250519_131357	Trọng Lượng	Camera	0.3333
3034	matrix_20250519_131357	Kết Nối	Camera	0.25
3035	matrix_20250519_131357	Bộ Nhớ	Camera	0.2
3036	matrix_20250519_131357	Pin	Màn Hình	4
3037	matrix_20250519_131357	Hiệu Suất	Màn Hình	3
3038	matrix_20250519_131357	Camera	Màn Hình	2
3039	matrix_20250519_131357	Màn Hình	Màn Hình	1
3040	matrix_20250519_131357	Trọng Lượng	Màn Hình	0.5
3041	matrix_20250519_131357	Kết Nối	Màn Hình	0.3333
3042	matrix_20250519_131357	Bộ Nhớ	Màn Hình	0.25
3043	matrix_20250519_131357	Pin	Trọng Lượng	6
3044	matrix_20250519_131357	Hiệu Suất	Trọng Lượng	5
3045	matrix_20250519_131357	Camera	Trọng Lượng	3
3046	matrix_20250519_131357	Màn Hình	Trọng Lượng	2
3047	matrix_20250519_131357	Trọng Lượng	Trọng Lượng	1
3048	matrix_20250519_131357	Kết Nối	Trọng Lượng	0.5
3049	matrix_20250519_131357	Bộ Nhớ	Trọng Lượng	0.3333
3050	matrix_20250519_131357	Pin	Kết Nối	7
3051	matrix_20250519_131357	Hiệu Suất	Kết Nối	5
3052	matrix_20250519_131357	Camera	Kết Nối	4
3053	matrix_20250519_131357	Màn Hình	Kết Nối	3
3054	matrix_20250519_131357	Trọng Lượng	Kết Nối	2
3055	matrix_20250519_131357	Kết Nối	Kết Nối	1
3056	matrix_20250519_131357	Bộ Nhớ	Kết Nối	0.5
3057	matrix_20250519_131357	Pin	Bộ Nhớ	9
3058	matrix_20250519_131357	Hiệu Suất	Bộ Nhớ	7
3059	matrix_20250519_131357	Camera	Bộ Nhớ	5
3060	matrix_20250519_131357	Màn Hình	Bộ Nhớ	4
3061	matrix_20250519_131357	Trọng Lượng	Bộ Nhớ	3
3062	matrix_20250519_131357	Kết Nối	Bộ Nhớ	2
3063	matrix_20250519_131357	Bộ Nhớ	Bộ Nhớ	1
3064	matrix_20250519_161433	Pin	Pin	1
3065	matrix_20250519_161433	Hiệu Suất	Pin	0.5
3066	matrix_20250519_161433	Camera	Pin	0.3333
3067	matrix_20250519_161433	Màn Hình	Pin	0.25
3068	matrix_20250519_161433	Trọng Lượng	Pin	0.1667
3069	matrix_20250519_161433	Kết Nối	Pin	0.1429
3070	matrix_20250519_161433	Bộ Nhớ	Pin	0.1111
3071	matrix_20250519_161433	Pin	Hiệu Suất	2
3072	matrix_20250519_161433	Hiệu Suất	Hiệu Suất	1
3073	matrix_20250519_161433	Camera	Hiệu Suất	0.3333
3074	matrix_20250519_161433	Màn Hình	Hiệu Suất	0.3333
3075	matrix_20250519_161433	Trọng Lượng	Hiệu Suất	0.2
3076	matrix_20250519_161433	Kết Nối	Hiệu Suất	0.2
3077	matrix_20250519_161433	Bộ Nhớ	Hiệu Suất	0.1429
3078	matrix_20250519_161433	Pin	Camera	3
3079	matrix_20250519_161433	Hiệu Suất	Camera	3
3080	matrix_20250519_161433	Camera	Camera	1
3081	matrix_20250519_161433	Màn Hình	Camera	0.5
3082	matrix_20250519_161433	Trọng Lượng	Camera	0.3333
3083	matrix_20250519_161433	Kết Nối	Camera	0.25
3084	matrix_20250519_161433	Bộ Nhớ	Camera	0.2
3085	matrix_20250519_161433	Pin	Màn Hình	4
3086	matrix_20250519_161433	Hiệu Suất	Màn Hình	3
3087	matrix_20250519_161433	Camera	Màn Hình	2
3088	matrix_20250519_161433	Màn Hình	Màn Hình	1
3089	matrix_20250519_161433	Trọng Lượng	Màn Hình	0.5
3090	matrix_20250519_161433	Kết Nối	Màn Hình	0.3333
3091	matrix_20250519_161433	Bộ Nhớ	Màn Hình	0.25
3092	matrix_20250519_161433	Pin	Trọng Lượng	6
3093	matrix_20250519_161433	Hiệu Suất	Trọng Lượng	5
3094	matrix_20250519_161433	Camera	Trọng Lượng	3
3095	matrix_20250519_161433	Màn Hình	Trọng Lượng	2
3096	matrix_20250519_161433	Trọng Lượng	Trọng Lượng	1
3097	matrix_20250519_161433	Kết Nối	Trọng Lượng	0.5
3098	matrix_20250519_161433	Bộ Nhớ	Trọng Lượng	0.3333
3099	matrix_20250519_161433	Pin	Kết Nối	7
3100	matrix_20250519_161433	Hiệu Suất	Kết Nối	5
3101	matrix_20250519_161433	Camera	Kết Nối	4
3102	matrix_20250519_161433	Màn Hình	Kết Nối	3
3103	matrix_20250519_161433	Trọng Lượng	Kết Nối	2
3104	matrix_20250519_161433	Kết Nối	Kết Nối	1
3105	matrix_20250519_161433	Bộ Nhớ	Kết Nối	0.5
3106	matrix_20250519_161433	Pin	Bộ Nhớ	9
3107	matrix_20250519_161433	Hiệu Suất	Bộ Nhớ	7
3108	matrix_20250519_161433	Camera	Bộ Nhớ	5
3109	matrix_20250519_161433	Màn Hình	Bộ Nhớ	4
3110	matrix_20250519_161433	Trọng Lượng	Bộ Nhớ	3
3111	matrix_20250519_161433	Kết Nối	Bộ Nhớ	2
3112	matrix_20250519_161433	Bộ Nhớ	Bộ Nhớ	1
3113	matrix_20250526_161901	Pin	Pin	1
3114	matrix_20250526_161901	Hiệu Suất	Pin	0.5
3115	matrix_20250526_161901	Camera	Pin	0.3333
3116	matrix_20250526_161901	Màn Hình	Pin	0.25
3117	matrix_20250526_161901	Trọng Lượng	Pin	0.1667
3118	matrix_20250526_161901	Kết Nối	Pin	0.1429
3119	matrix_20250526_161901	Bộ Nhớ	Pin	0.1111
3120	matrix_20250526_161901	Pin	Hiệu Suất	2
3121	matrix_20250526_161901	Hiệu Suất	Hiệu Suất	1
3122	matrix_20250526_161901	Camera	Hiệu Suất	0.3333
3123	matrix_20250526_161901	Màn Hình	Hiệu Suất	0.3333
3124	matrix_20250526_161901	Trọng Lượng	Hiệu Suất	0.2
3125	matrix_20250526_161901	Kết Nối	Hiệu Suất	0.2
3126	matrix_20250526_161901	Bộ Nhớ	Hiệu Suất	0.1429
3127	matrix_20250526_161901	Pin	Camera	3
3128	matrix_20250526_161901	Hiệu Suất	Camera	3
3129	matrix_20250526_161901	Camera	Camera	1
3130	matrix_20250526_161901	Màn Hình	Camera	0.5
3131	matrix_20250526_161901	Trọng Lượng	Camera	0.3333
3132	matrix_20250526_161901	Kết Nối	Camera	0.25
3133	matrix_20250526_161901	Bộ Nhớ	Camera	0.2
3134	matrix_20250526_161901	Pin	Màn Hình	4
3135	matrix_20250526_161901	Hiệu Suất	Màn Hình	3
3136	matrix_20250526_161901	Camera	Màn Hình	2
3137	matrix_20250526_161901	Màn Hình	Màn Hình	1
3138	matrix_20250526_161901	Trọng Lượng	Màn Hình	0.5
3139	matrix_20250526_161901	Kết Nối	Màn Hình	0.3333
3140	matrix_20250526_161901	Bộ Nhớ	Màn Hình	0.25
3141	matrix_20250526_161901	Pin	Trọng Lượng	6
3142	matrix_20250526_161901	Hiệu Suất	Trọng Lượng	5
3143	matrix_20250526_161901	Camera	Trọng Lượng	3
3144	matrix_20250526_161901	Màn Hình	Trọng Lượng	2
3145	matrix_20250526_161901	Trọng Lượng	Trọng Lượng	1
3146	matrix_20250526_161901	Kết Nối	Trọng Lượng	0.5
3147	matrix_20250526_161901	Bộ Nhớ	Trọng Lượng	0.3333
3148	matrix_20250526_161901	Pin	Kết Nối	7
3149	matrix_20250526_161901	Hiệu Suất	Kết Nối	5
3150	matrix_20250526_161901	Camera	Kết Nối	4
3151	matrix_20250526_161901	Màn Hình	Kết Nối	3
3152	matrix_20250526_161901	Trọng Lượng	Kết Nối	2
3153	matrix_20250526_161901	Kết Nối	Kết Nối	1
3154	matrix_20250526_161901	Bộ Nhớ	Kết Nối	0.5
3155	matrix_20250526_161901	Pin	Bộ Nhớ	9
3156	matrix_20250526_161901	Hiệu Suất	Bộ Nhớ	7
3157	matrix_20250526_161901	Camera	Bộ Nhớ	5
3158	matrix_20250526_161901	Màn Hình	Bộ Nhớ	4
3159	matrix_20250526_161901	Trọng Lượng	Bộ Nhớ	3
3160	matrix_20250526_161901	Kết Nối	Bộ Nhớ	2
3161	matrix_20250526_161901	Bộ Nhớ	Bộ Nhớ	1
3162	matrix_20250602_062426	Pin	Pin	1
3163	matrix_20250602_062426	Hiệu Suất	Pin	0.5
3164	matrix_20250602_062426	Camera	Pin	0.3333
3165	matrix_20250602_062426	Màn Hình	Pin	0.25
3166	matrix_20250602_062426	Trọng Lượng	Pin	0.1667
3167	matrix_20250602_062426	Kết Nối	Pin	0.1429
3168	matrix_20250602_062426	Bộ Nhớ	Pin	0.1111
3169	matrix_20250602_062426	Pin	Hiệu Suất	2
3170	matrix_20250602_062426	Hiệu Suất	Hiệu Suất	1
3171	matrix_20250602_062426	Camera	Hiệu Suất	0.3333
3172	matrix_20250602_062426	Màn Hình	Hiệu Suất	0.3333
3173	matrix_20250602_062426	Trọng Lượng	Hiệu Suất	0.2
3174	matrix_20250602_062426	Kết Nối	Hiệu Suất	0.2
3175	matrix_20250602_062426	Bộ Nhớ	Hiệu Suất	0.1429
3176	matrix_20250602_062426	Pin	Camera	3
3177	matrix_20250602_062426	Hiệu Suất	Camera	3
3178	matrix_20250602_062426	Camera	Camera	1
3179	matrix_20250602_062426	Màn Hình	Camera	0.5
3180	matrix_20250602_062426	Trọng Lượng	Camera	0.3333
3181	matrix_20250602_062426	Kết Nối	Camera	0.25
3182	matrix_20250602_062426	Bộ Nhớ	Camera	0.2
3183	matrix_20250602_062426	Pin	Màn Hình	4
3184	matrix_20250602_062426	Hiệu Suất	Màn Hình	3
3185	matrix_20250602_062426	Camera	Màn Hình	2
3186	matrix_20250602_062426	Màn Hình	Màn Hình	1
3187	matrix_20250602_062426	Trọng Lượng	Màn Hình	0.5
3188	matrix_20250602_062426	Kết Nối	Màn Hình	0.3333
3189	matrix_20250602_062426	Bộ Nhớ	Màn Hình	0.25
3190	matrix_20250602_062426	Pin	Trọng Lượng	6
3191	matrix_20250602_062426	Hiệu Suất	Trọng Lượng	5
3192	matrix_20250602_062426	Camera	Trọng Lượng	3
3193	matrix_20250602_062426	Màn Hình	Trọng Lượng	2
3194	matrix_20250602_062426	Trọng Lượng	Trọng Lượng	1
3195	matrix_20250602_062426	Kết Nối	Trọng Lượng	0.5
3196	matrix_20250602_062426	Bộ Nhớ	Trọng Lượng	0.3333
3197	matrix_20250602_062426	Pin	Kết Nối	7
3198	matrix_20250602_062426	Hiệu Suất	Kết Nối	5
3199	matrix_20250602_062426	Camera	Kết Nối	4
3200	matrix_20250602_062426	Màn Hình	Kết Nối	3
3201	matrix_20250602_062426	Trọng Lượng	Kết Nối	2
3202	matrix_20250602_062426	Kết Nối	Kết Nối	1
3203	matrix_20250602_062426	Bộ Nhớ	Kết Nối	0.5
3204	matrix_20250602_062426	Pin	Bộ Nhớ	9
3205	matrix_20250602_062426	Hiệu Suất	Bộ Nhớ	7
3206	matrix_20250602_062426	Camera	Bộ Nhớ	5
3207	matrix_20250602_062426	Màn Hình	Bộ Nhớ	4
3208	matrix_20250602_062426	Trọng Lượng	Bộ Nhớ	3
3209	matrix_20250602_062426	Kết Nối	Bộ Nhớ	2
3210	matrix_20250602_062426	Bộ Nhớ	Bộ Nhớ	1
3211	matrix_20250602_111040	âccac	âccac	1
3212	matrix_20250609_105701	Pin	Pin	1
3213	matrix_20250609_105701	Hiệu Suất	Pin	0.5
3214	matrix_20250609_105701	Camera	Pin	0.3333
3215	matrix_20250609_105701	Màn Hình	Pin	0.25
3216	matrix_20250609_105701	Trọng Lượng	Pin	0.1667
3217	matrix_20250609_105701	Kết Nối	Pin	0.1429
3218	matrix_20250609_105701	Bộ Nhớ	Pin	0.1111
3219	matrix_20250609_105701	Pin	Hiệu Suất	2
3220	matrix_20250609_105701	Hiệu Suất	Hiệu Suất	1
3221	matrix_20250609_105701	Camera	Hiệu Suất	0.3333
3222	matrix_20250609_105701	Màn Hình	Hiệu Suất	0.3333
3223	matrix_20250609_105701	Trọng Lượng	Hiệu Suất	0.2
3224	matrix_20250609_105701	Kết Nối	Hiệu Suất	0.2
3225	matrix_20250609_105701	Bộ Nhớ	Hiệu Suất	0.1429
3226	matrix_20250609_105701	Pin	Camera	3
3227	matrix_20250609_105701	Hiệu Suất	Camera	3
3228	matrix_20250609_105701	Camera	Camera	1
3229	matrix_20250609_105701	Màn Hình	Camera	0.5
3230	matrix_20250609_105701	Trọng Lượng	Camera	0.3333
3231	matrix_20250609_105701	Kết Nối	Camera	0.25
3232	matrix_20250609_105701	Bộ Nhớ	Camera	0.2
3233	matrix_20250609_105701	Pin	Màn Hình	4
3234	matrix_20250609_105701	Hiệu Suất	Màn Hình	3
3235	matrix_20250609_105701	Camera	Màn Hình	2
3236	matrix_20250609_105701	Màn Hình	Màn Hình	1
3237	matrix_20250609_105701	Trọng Lượng	Màn Hình	0.5
3238	matrix_20250609_105701	Kết Nối	Màn Hình	0.3333
3239	matrix_20250609_105701	Bộ Nhớ	Màn Hình	0.25
3240	matrix_20250609_105701	Pin	Trọng Lượng	6
3241	matrix_20250609_105701	Hiệu Suất	Trọng Lượng	5
3242	matrix_20250609_105701	Camera	Trọng Lượng	3
3243	matrix_20250609_105701	Màn Hình	Trọng Lượng	2
3244	matrix_20250609_105701	Trọng Lượng	Trọng Lượng	1
3245	matrix_20250609_105701	Kết Nối	Trọng Lượng	0.5
3246	matrix_20250609_105701	Bộ Nhớ	Trọng Lượng	0.3333
3247	matrix_20250609_105701	Pin	Kết Nối	7
3248	matrix_20250609_105701	Hiệu Suất	Kết Nối	5
3249	matrix_20250609_105701	Camera	Kết Nối	4
3250	matrix_20250609_105701	Màn Hình	Kết Nối	3
3251	matrix_20250609_105701	Trọng Lượng	Kết Nối	2
3252	matrix_20250609_105701	Kết Nối	Kết Nối	1
3253	matrix_20250609_105701	Bộ Nhớ	Kết Nối	0.5
3254	matrix_20250609_105701	Pin	Bộ Nhớ	9
3255	matrix_20250609_105701	Hiệu Suất	Bộ Nhớ	7
3256	matrix_20250609_105701	Camera	Bộ Nhớ	5
3257	matrix_20250609_105701	Màn Hình	Bộ Nhớ	4
3258	matrix_20250609_105701	Trọng Lượng	Bộ Nhớ	3
3259	matrix_20250609_105701	Kết Nối	Bộ Nhớ	2
3260	matrix_20250609_105701	Bộ Nhớ	Bộ Nhớ	1
\.


--
-- TOC entry 3369 (class 0 OID 16395)
-- Dependencies: 217
-- Data for Name: option_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.option_scores (option_id, score, matrix_id) FROM stdin;
PA1	1439.3355	matrix_20250526_171526
PA2	906.2278	matrix_20250526_171526
PA3	1678.8123	matrix_20250526_171526
\.


--
-- TOC entry 3370 (class 0 OID 16398)
-- Dependencies: 218
-- Data for Name: options_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.options_data (option_id, pin, performance, camera, screen, weight, connectivity, memory, id, matrix_id) FROM stdin;
PA1	1230	3485	22	876	101	3	25	221	matrix_20250526_171525
PA2	1720	651	6	1009	171	7	90	222	matrix_20250526_171525
PA3	1500	3866	8	1336	80	4	55	223	matrix_20250526_171525
Weights	0.3622	0.2569	0.1458	0.1006	0.063	0.0431	0.0283	224	matrix_20250526_171525
\.


--
-- TOC entry 3372 (class 0 OID 16402)
-- Dependencies: 220
-- Data for Name: pairwise_comparison; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pairwise_comparison (criterion, option1, option2, pairwise_value, weight, matrix_id) FROM stdin;
Pin	PA1	PA1	1	\N	matrix_20250526_171525
Pin	PA1	PA2	0.5	\N	matrix_20250526_171525
Pin	PA1	PA3	0.5	\N	matrix_20250526_171525
Pin	PA2	PA1	2	\N	matrix_20250526_171525
Pin	PA2	PA2	1	\N	matrix_20250526_171525
Pin	PA2	PA3	2	\N	matrix_20250526_171525
Pin	PA3	PA1	2	\N	matrix_20250526_171525
Pin	PA3	PA2	0.5	\N	matrix_20250526_171525
Pin	PA3	PA3	1	\N	matrix_20250526_171525
Pin	PA1	Weight	\N	0.1976	matrix_20250526_171525
Pin	PA2	Weight	\N	0.4905	matrix_20250526_171525
Pin	PA3	Weight	\N	0.3119	matrix_20250526_171525
Bộ Nhớ	PA1	PA1	1	\N	matrix_20250526_171526
Bộ Nhớ	PA1	PA2	0.125	\N	matrix_20250526_171526
Bộ Nhớ	PA1	PA3	0.2	\N	matrix_20250526_171526
Bộ Nhớ	PA2	PA1	8	\N	matrix_20250526_171526
Bộ Nhớ	PA2	PA2	1	\N	matrix_20250526_171526
Bộ Nhớ	PA2	PA3	4	\N	matrix_20250526_171526
Bộ Nhớ	PA3	PA1	5	\N	matrix_20250526_171526
Bộ Nhớ	PA3	PA2	0.25	\N	matrix_20250526_171526
Bộ Nhớ	PA3	PA3	1	\N	matrix_20250526_171526
Bộ Nhớ	PA1	Weight	\N	0.0669	matrix_20250526_171526
Bộ Nhớ	PA2	Weight	\N	0.6893	matrix_20250526_171526
Bộ Nhớ	PA3	Weight	\N	0.2438	matrix_20250526_171526
Hiệu Suất	PA1	PA1	1	\N	matrix_20250526_171525
Hiệu Suất	PA1	PA2	9	\N	matrix_20250526_171525
Hiệu Suất	PA1	PA3	0.5	\N	matrix_20250526_171525
Hiệu Suất	PA2	PA1	0.1111111111111111	\N	matrix_20250526_171525
Hiệu Suất	PA2	PA2	1	\N	matrix_20250526_171525
Hiệu Suất	PA2	PA3	0.1111111111111111	\N	matrix_20250526_171525
Hiệu Suất	PA3	PA1	2	\N	matrix_20250526_171525
Hiệu Suất	PA3	PA2	9	\N	matrix_20250526_171525
Hiệu Suất	PA3	PA3	1	\N	matrix_20250526_171525
Hiệu Suất	PA1	Weight	\N	0.3685	matrix_20250526_171525
Hiệu Suất	PA2	Weight	\N	0.0524	matrix_20250526_171525
Hiệu Suất	PA3	Weight	\N	0.5791	matrix_20250526_171525
Camera	PA1	PA1	1	\N	matrix_20250526_171525
Camera	PA1	PA2	8	\N	matrix_20250526_171525
Camera	PA1	PA3	7	\N	matrix_20250526_171525
Camera	PA2	PA1	0.125	\N	matrix_20250526_171525
Camera	PA2	PA2	1	\N	matrix_20250526_171525
Camera	PA2	PA3	0.5	\N	matrix_20250526_171525
Camera	PA3	PA1	0.14285714285714285	\N	matrix_20250526_171525
Camera	PA3	PA2	2	\N	matrix_20250526_171525
Camera	PA3	PA3	1	\N	matrix_20250526_171525
Camera	PA1	Weight	\N	0.7798	matrix_20250526_171525
Camera	PA2	Weight	\N	0.0828	matrix_20250526_171525
Camera	PA3	Weight	\N	0.1374	matrix_20250526_171525
Màn Hình	PA1	PA1	1	\N	matrix_20250526_171525
Màn Hình	PA1	PA2	0.5	\N	matrix_20250526_171525
Màn Hình	PA1	PA3	0.3333333333333333	\N	matrix_20250526_171525
Màn Hình	PA2	PA1	2	\N	matrix_20250526_171525
Màn Hình	PA2	PA2	1	\N	matrix_20250526_171525
Màn Hình	PA2	PA3	0.5	\N	matrix_20250526_171525
Màn Hình	PA3	PA1	3	\N	matrix_20250526_171525
Màn Hình	PA3	PA2	2	\N	matrix_20250526_171525
Màn Hình	PA3	PA3	1	\N	matrix_20250526_171525
Màn Hình	PA1	Weight	\N	0.1638	matrix_20250526_171525
Màn Hình	PA2	Weight	\N	0.2973	matrix_20250526_171525
Màn Hình	PA3	Weight	\N	0.539	matrix_20250526_171525
Trọng Lượng	PA1	PA1	1	\N	matrix_20250526_171526
Trọng Lượng	PA1	PA2	0.25	\N	matrix_20250526_171526
Trọng Lượng	PA1	PA3	2	\N	matrix_20250526_171526
Trọng Lượng	PA2	PA1	4	\N	matrix_20250526_171526
Trọng Lượng	PA2	PA2	1	\N	matrix_20250526_171526
Trọng Lượng	PA2	PA3	5	\N	matrix_20250526_171526
Trọng Lượng	PA3	PA1	0.5	\N	matrix_20250526_171526
Trọng Lượng	PA3	PA2	0.2	\N	matrix_20250526_171526
Trọng Lượng	PA3	PA3	1	\N	matrix_20250526_171526
Trọng Lượng	PA1	Weight	\N	0.2014	matrix_20250526_171526
Trọng Lượng	PA2	Weight	\N	0.6806	matrix_20250526_171526
Trọng Lượng	PA3	Weight	\N	0.1179	matrix_20250526_171526
Kết Nối	PA1	PA1	1	\N	matrix_20250526_171526
Kết Nối	PA1	PA2	0.16666666666666666	\N	matrix_20250526_171526
Kết Nối	PA1	PA3	0.5	\N	matrix_20250526_171526
Kết Nối	PA2	PA1	6	\N	matrix_20250526_171526
Kết Nối	PA2	PA2	1	\N	matrix_20250526_171526
Kết Nối	PA2	PA3	4	\N	matrix_20250526_171526
Kết Nối	PA3	PA1	2	\N	matrix_20250526_171526
Kết Nối	PA3	PA2	0.25	\N	matrix_20250526_171526
Kết Nối	PA3	PA3	1	\N	matrix_20250526_171526
Kết Nối	PA1	Weight	\N	0.1066	matrix_20250526_171526
Kết Nối	PA2	Weight	\N	0.6999	matrix_20250526_171526
Kết Nối	PA3	Weight	\N	0.1935	matrix_20250526_171526
\.


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 216
-- Name: criteriacomparison_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.criteriacomparison_id_seq', 3260, true);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 219
-- Name: options_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.options_data_id_seq', 224, true);


--
-- TOC entry 3219 (class 2606 OID 16408)
-- Name: criteriacomparison criteriacomparison_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criteriacomparison
    ADD CONSTRAINT criteriacomparison_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16410)
-- Name: option_scores option_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option_scores
    ADD CONSTRAINT option_scores_pkey PRIMARY KEY (option_id);


--
-- TOC entry 3223 (class 2606 OID 16412)
-- Name: options_data options_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options_data
    ADD CONSTRAINT options_data_pkey PRIMARY KEY (id);


-- Completed on 2025-06-09 18:07:45

--
-- PostgreSQL database dump complete
--

