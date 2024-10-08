PGDMP                         {           postgres    15.2    15.3 �    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                azure_pg_admin    false            p           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   azure_pg_admin    false    4207                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                azure_pg_admin    false                        3079    24777    pg_cron 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_cron WITH SCHEMA public;
    DROP EXTENSION pg_cron;
                   false    8            q           0    0    EXTENSION pg_cron    COMMENT     @   COMMENT ON EXTENSION pg_cron IS 'Job scheduler for PostgreSQL';
                        false    3            r           0    0    SCHEMA cron    ACL     .   GRANT USAGE ON SCHEMA cron TO azure_pg_admin;
                   azuresu    false    9                        3079    24825    azure 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS azure WITH SCHEMA pg_catalog;
    DROP EXTENSION azure;
                   false            s           0    0    EXTENSION azure    COMMENT     H   COMMENT ON EXTENSION azure IS 'azure extension for PostgreSQL service';
                        false    4                        3079    24577 	   pgaadauth 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS pgaadauth WITH SCHEMA pg_catalog;
    DROP EXTENSION pgaadauth;
                   false            t           0    0    EXTENSION pgaadauth    COMMENT     K   COMMENT ON EXTENSION pgaadauth IS 'Azure Active Directory Authentication';
                        false    2            u           0    0 l   FUNCTION alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    306            v           0    0    FUNCTION job_cache_invalidate()    ACL     E   GRANT ALL ON FUNCTION cron.job_cache_invalidate() TO azure_pg_admin;
          cron          azuresu    false    303            w           0    0 .   FUNCTION schedule(schedule text, command text)    ACL     T   GRANT ALL ON FUNCTION cron.schedule(schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    301            x           0    0 =   FUNCTION schedule(job_name text, schedule text, command text)    ACL     c   GRANT ALL ON FUNCTION cron.schedule(job_name text, schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    305            y           0    0 w   FUNCTION schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    307            z           0    0 "   FUNCTION unschedule(job_id bigint)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_id bigint) TO azure_pg_admin;
          cron          azuresu    false    302            {           0    0 "   FUNCTION unschedule(job_name name)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_name name) TO azure_pg_admin;
          cron          azuresu    false    304            |           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    277            }           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    279            ~           0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     U   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    276                       0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     T   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    280            �           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     b   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    278            �           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    286            �           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     d   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    287            �           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    288            �           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     ^   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    289            �           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    290            �           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     w   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    291            �           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    292            �           0    0    FUNCTION pg_stat_reset()    ACL     D   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    281            �           0    0 #   FUNCTION pg_stat_reset_shared(text)    ACL     O   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    274            �           0    0 4   FUNCTION pg_stat_reset_single_function_counters(oid)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    282            �           0    0 1   FUNCTION pg_stat_reset_single_table_counters(oid)    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    275            �           0    0    COLUMN pg_config.name    ACL     D   GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    104            �           0    0    COLUMN pg_config.setting    ACL     G   GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    104            �           0    0 $   COLUMN pg_hba_file_rules.line_number    ACL     S   GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0    COLUMN pg_hba_file_rules.type    ACL     L   GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0 !   COLUMN pg_hba_file_rules.database    ACL     P   GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0 "   COLUMN pg_hba_file_rules.user_name    ACL     Q   GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0     COLUMN pg_hba_file_rules.address    ACL     O   GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0     COLUMN pg_hba_file_rules.netmask    ACL     O   GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0 $   COLUMN pg_hba_file_rules.auth_method    ACL     S   GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0     COLUMN pg_hba_file_rules.options    ACL     O   GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0    COLUMN pg_hba_file_rules.error    ACL     M   GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    100            �           0    0 ,   COLUMN pg_replication_origin_status.local_id    ACL     [   GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    149            �           0    0 /   COLUMN pg_replication_origin_status.external_id    ACL     ^   GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    149            �           0    0 .   COLUMN pg_replication_origin_status.remote_lsn    ACL     ]   GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    149            �           0    0 -   COLUMN pg_replication_origin_status.local_lsn    ACL     \   GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    149            �           0    0     COLUMN pg_shmem_allocations.name    ACL     O   GRANT SELECT(name) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    105            �           0    0    COLUMN pg_shmem_allocations.off    ACL     N   GRANT SELECT(off) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    105            �           0    0     COLUMN pg_shmem_allocations.size    ACL     O   GRANT SELECT(size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    105            �           0    0 *   COLUMN pg_shmem_allocations.allocated_size    ACL     Y   GRANT SELECT(allocated_size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    105            �           0    0    COLUMN pg_statistic.starelid    ACL     K   GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staattnum    ACL     L   GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stainherit    ACL     M   GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanullfrac    ACL     N   GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stawidth    ACL     K   GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stadistinct    ACL     N   GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stakind1    ACL     K   GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stakind2    ACL     K   GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stakind3    ACL     K   GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stakind4    ACL     K   GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stakind5    ACL     K   GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staop1    ACL     I   GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staop2    ACL     I   GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staop3    ACL     I   GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staop4    ACL     I   GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.staop5    ACL     I   GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stacoll1    ACL     K   GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stacoll2    ACL     K   GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stacoll3    ACL     K   GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stacoll4    ACL     K   GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stacoll5    ACL     K   GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanumbers1    ACL     N   GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanumbers2    ACL     N   GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanumbers3    ACL     N   GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanumbers4    ACL     N   GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stanumbers5    ACL     N   GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stavalues1    ACL     M   GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stavalues2    ACL     M   GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stavalues3    ACL     M   GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stavalues4    ACL     M   GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_statistic.stavalues5    ACL     M   GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    45            �           0    0    COLUMN pg_subscription.oid    ACL     I   GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0    COLUMN pg_subscription.subdbid    ACL     M   GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0    COLUMN pg_subscription.subname    ACL     M   GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0    COLUMN pg_subscription.subowner    ACL     N   GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0 !   COLUMN pg_subscription.subenabled    ACL     P   GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0 "   COLUMN pg_subscription.subconninfo    ACL     Q   GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0 "   COLUMN pg_subscription.subslotname    ACL     Q   GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0 $   COLUMN pg_subscription.subsynccommit    ACL     S   GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            �           0    0 &   COLUMN pg_subscription.subpublications    ACL     U   GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    70            	           1259    25392    asset    TABLE     �  CREATE TABLE public.asset (
    asset_id integer NOT NULL,
    city_id integer,
    client_id integer,
    company_id integer,
    customer_id integer,
    device_id integer,
    inventory_id integer,
    device_list_id integer,
    location_id integer,
    warranty_id integer,
    asset_tag_id integer,
    device_type_id integer,
    deployment_id integer,
    installation_id integer
);
    DROP TABLE public.asset;
       public         heap    dbadmin    false    8                       1259    25391    asset_asset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asset_asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.asset_asset_id_seq;
       public          dbadmin    false    265    8            �           0    0    asset_asset_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.asset_asset_id_seq OWNED BY public.asset.asset_id;
          public          dbadmin    false    264                       1259    25383 	   asset_tag    TABLE     `   CREATE TABLE public.asset_tag (
    asset_tag_id integer NOT NULL,
    tag character varying
);
    DROP TABLE public.asset_tag;
       public         heap    dbadmin    false    8                       1259    25382    asset_tags_asset_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asset_tags_asset_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.asset_tags_asset_tag_id_seq;
       public          dbadmin    false    263    8            �           0    0    asset_tags_asset_tag_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.asset_tags_asset_tag_id_seq OWNED BY public.asset_tag.asset_tag_id;
          public          dbadmin    false    262            �            1259    24831    association    TABLE     f   CREATE TABLE public.association (
    association_id smallint NOT NULL,
    type character varying
);
    DROP TABLE public.association;
       public         heap    dbadmin    false    8            �            1259    24830    association_asc_id_seq    SEQUENCE     �   ALTER TABLE public.association ALTER COLUMN association_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.association_asc_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    225            �            1259    25111    city    TABLE     "  CREATE TABLE public.city (
    city_id integer NOT NULL,
    created_at timestamp without time zone,
    name character varying(255),
    latitude character varying(255),
    longitude character varying(255),
    population character varying(255),
    open_orders character varying(255)
);
    DROP TABLE public.city;
       public         heap    dbadmin    false    8            �            1259    25116    city_client_id_seq    SEQUENCE     �   ALTER TABLE public.city ALTER COLUMN city_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.city_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    243    8            �            1259    25226    client    TABLE     [   CREATE TABLE public.client (
    name character varying,
    client_id integer NOT NULL
);
    DROP TABLE public.client;
       public         heap    dbadmin    false    8            �            1259    25225    client_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          dbadmin    false    8    252            �           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client.client_id;
          public          dbadmin    false    251            �            1259    24839    company    TABLE     �   CREATE TABLE public.company (
    company_id integer NOT NULL,
    name character varying,
    email character varying,
    phone integer,
    date_founded integer,
    date_ended integer,
    "co-owned-with" integer,
    "co-owned-with-too" integer
);
    DROP TABLE public.company;
       public         heap    dbadmin    false    8            �            1259    24838    company_company_id_seq    SEQUENCE     �   ALTER TABLE public.company ALTER COLUMN company_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.company_company_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    227            �            1259    25131    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    client_id integer,
    company_id integer,
    name character varying,
    person_id integer
);
    DROP TABLE public.customer;
       public         heap    dbadmin    false    8                       1259    25455 
   deployment    TABLE     �   CREATE TABLE public.deployment (
    deployment_id integer NOT NULL,
    start_date date,
    end_date date,
    role character varying,
    deployment_type_id integer
);
    DROP TABLE public.deployment;
       public         heap    dbadmin    false    8            
           1259    25454    deployment_deployment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deployment_deployment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.deployment_deployment_id_seq;
       public          dbadmin    false    8    267            �           0    0    deployment_deployment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.deployment_deployment_id_seq OWNED BY public.deployment.deployment_id;
          public          dbadmin    false    266                       1259    25464    deployment_type    TABLE     m   CREATE TABLE public.deployment_type (
    deployment_type_id integer NOT NULL,
    role character varying
);
 #   DROP TABLE public.deployment_type;
       public         heap    dbadmin    false    8                       1259    25463 &   deployment_type_deployment_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deployment_type_deployment_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.deployment_type_deployment_type_id_seq;
       public          dbadmin    false    269    8            �           0    0 &   deployment_type_deployment_type_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.deployment_type_deployment_type_id_seq OWNED BY public.deployment_type.deployment_type_id;
          public          dbadmin    false    268            �            1259    24843    device    TABLE     �  CREATE TABLE public.device (
    device_id smallint NOT NULL,
    model_id smallint,
    manufacturer_id smallint,
    category_id smallint,
    serial_id smallint,
    hostname character varying,
    warranty_id smallint,
    location_id smallint,
    device_type_id smallint,
    did_id integer,
    sip_id integer,
    inventory_id integer,
    person_device_list_id integer,
    device_list_id integer,
    ipv4 inet,
    mac macaddr8
);
    DROP TABLE public.device;
       public         heap    dbadmin    false    8            �            1259    24842    device_device_id_seq    SEQUENCE     �   ALTER TABLE public.device ALTER COLUMN device_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.device_device_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    229            �            1259    25183    device_list    TABLE     I   CREATE TABLE public.device_list (
    device_list_id integer NOT NULL
);
    DROP TABLE public.device_list;
       public         heap    dbadmin    false    8            �            1259    25182    device_list_device_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_list_device_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.device_list_device_list_id_seq;
       public          dbadmin    false    250    8            �           0    0    device_list_device_list_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.device_list_device_list_id_seq OWNED BY public.device_list.device_list_id;
          public          dbadmin    false    249            �            1259    25136    device_type    TABLE     �   CREATE TABLE public.device_type (
    device_type_id integer NOT NULL,
    category character varying,
    function character varying,
    deployed_as character varying
);
    DROP TABLE public.device_type;
       public         heap    dbadmin    false    8                       1259    25505    installation    TABLE     �   CREATE TABLE public.installation (
    installation_id integer NOT NULL,
    start_date date,
    end_date date,
    installation_type_id integer,
    asset_id integer,
    deployment_id integer,
    asset_tag_id integer
);
     DROP TABLE public.installation;
       public         heap    dbadmin    false    8                       1259    25504     installation_installation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.installation_installation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.installation_installation_id_seq;
       public          dbadmin    false    8    273            �           0    0     installation_installation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.installation_installation_id_seq OWNED BY public.installation.installation_id;
          public          dbadmin    false    272                       1259    25492    installation_type    TABLE     �   CREATE TABLE public.installation_type (
    installation_type_id integer NOT NULL,
    role character varying,
    number character varying,
    type character varying
);
 %   DROP TABLE public.installation_type;
       public         heap    dbadmin    false    8                       1259    25491 *   installation_type_installation_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.installation_type_installation_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.installation_type_installation_type_id_seq;
       public          dbadmin    false    8    271            �           0    0 *   installation_type_installation_type_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.installation_type_installation_type_id_seq OWNED BY public.installation_type.installation_type_id;
          public          dbadmin    false    270            �            1259    25119 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    client_id integer,
    customer_id integer,
    site_id integer,
    company_id integer,
    inventory_id_pk integer NOT NULL,
    device_list_id integer
);
    DROP TABLE public.inventory;
       public         heap    dbadmin    false    8            �            1259    25268    inventory_inventory_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_inventory_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.inventory_inventory_id_pk_seq;
       public          dbadmin    false    245    8            �           0    0    inventory_inventory_id_pk_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inventory_inventory_id_pk_seq OWNED BY public.inventory.inventory_id_pk;
          public          dbadmin    false    253            �            1259    24849    location    TABLE       CREATE TABLE public.location (
    location_id smallint NOT NULL,
    address character varying,
    address_two character varying,
    city character varying,
    state character varying,
    lat real,
    long real,
    company_id smallint,
    location_type_id integer
);
    DROP TABLE public.location;
       public         heap    dbadmin    false    8            �            1259    24848    location_location_id_seq    SEQUENCE     �   ALTER TABLE public.location ALTER COLUMN location_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.location_location_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    231    8            �            1259    25291    location_type    TABLE     i   CREATE TABLE public.location_type (
    location_type_id integer NOT NULL,
    name character varying
);
 !   DROP TABLE public.location_type;
       public         heap    dbadmin    false    8            �            1259    25290 "   location_type_location_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.location_type_location_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.location_type_location_type_id_seq;
       public          dbadmin    false    255    8            �           0    0 "   location_type_location_type_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.location_type_location_type_id_seq OWNED BY public.location_type.location_type_id;
          public          dbadmin    false    254            �            1259    24855    manufacturer    TABLE     h   CREATE TABLE public.manufacturer (
    manufacturer_id smallint NOT NULL,
    name character varying
);
     DROP TABLE public.manufacturer;
       public         heap    dbadmin    false    8            �            1259    24854     manufacturer_manufacturer_id_seq    SEQUENCE     �   ALTER TABLE public.manufacturer ALTER COLUMN manufacturer_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.manufacturer_manufacturer_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    233            �            1259    24861    model    TABLE     Z   CREATE TABLE public.model (
    model_id smallint NOT NULL,
    name character varying
);
    DROP TABLE public.model;
       public         heap    dbadmin    false    8            �            1259    24860    model_model_id_seq    SEQUENCE     �   ALTER TABLE public.model ALTER COLUMN model_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    235    8            �            1259    24867    person    TABLE     �  CREATE TABLE public.person (
    person_id smallint NOT NULL,
    company_id smallint,
    location_id smallint,
    phone character varying,
    asc_id smallint,
    first_name character varying,
    last_name character varying,
    middle_initial character(1),
    birthday date,
    hire_date date,
    term_date date,
    last_contacted date,
    device_list_id integer,
    mobile character varying,
    email character varying,
    username character varying,
    password character varying
);
    DROP TABLE public.person;
       public         heap    dbadmin    false    8            �            1259    24884    person_device_list    TABLE     �   CREATE TABLE public.person_device_list (
    person_id smallint,
    company_id smallint,
    person_device_list_id integer NOT NULL
);
 &   DROP TABLE public.person_device_list;
       public         heap    dbadmin    false    8            �            1259    25163 ,   person_device_list_person_device_list_id_seq    SEQUENCE     	  ALTER TABLE public.person_device_list ALTER COLUMN person_device_list_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.person_device_list_person_device_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    242    8            �            1259    24866    person_person_id_seq    SEQUENCE     �   ALTER TABLE public.person ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    237    8                       1259    25320    phone    TABLE     o  CREATE TABLE public.phone (
    phone_id integer NOT NULL,
    person_id integer,
    location_id integer,
    phone_type_id integer,
    company_id integer,
    customer_id integer,
    device_id integer,
    manufacturer_id integer,
    serial_id integer,
    sip_id integer,
    phone_list_id integer,
    number character varying,
    location_type_id integer
);
    DROP TABLE public.phone;
       public         heap    dbadmin    false    8                       1259    25305 
   phone_list    TABLE     G   CREATE TABLE public.phone_list (
    phone_list_id integer NOT NULL
);
    DROP TABLE public.phone_list;
       public         heap    dbadmin    false    8                        1259    25304    phone_list_phone_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phone_list_phone_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.phone_list_phone_list_id_seq;
       public          dbadmin    false    8    257            �           0    0    phone_list_phone_list_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.phone_list_phone_list_id_seq OWNED BY public.phone_list.phone_list_id;
          public          dbadmin    false    256                       1259    25323    phone_phone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phone_phone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.phone_phone_id_seq;
       public          dbadmin    false    8    260            �           0    0    phone_phone_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.phone_phone_id_seq OWNED BY public.phone.phone_id;
          public          dbadmin    false    261                       1259    25312 
   phone_type    TABLE     c   CREATE TABLE public.phone_type (
    phone_type_id integer NOT NULL,
    name character varying
);
    DROP TABLE public.phone_type;
       public         heap    dbadmin    false    8                       1259    25311    phone_type_phone_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phone_type_phone_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.phone_type_phone_type_id_seq;
       public          dbadmin    false    259    8            �           0    0    phone_type_phone_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.phone_type_phone_type_id_seq OWNED BY public.phone_type.phone_type_id;
          public          dbadmin    false    258            �            1259    24873    serial    TABLE     a   CREATE TABLE public.serial (
    serial_id smallint NOT NULL,
    serial_no character varying
);
    DROP TABLE public.serial;
       public         heap    dbadmin    false    8            �            1259    24872    serial_serial_id_seq    SEQUENCE     �   ALTER TABLE public.serial ALTER COLUMN serial_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.serial_serial_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    239            �            1259    24879    sip    TABLE     O   CREATE TABLE public.sip (
    sip_id smallint NOT NULL,
    sip_no smallint
);
    DROP TABLE public.sip;
       public         heap    dbadmin    false    8            �            1259    24878    sip_sip_id_seq    SEQUENCE     �   ALTER TABLE public.sip ALTER COLUMN sip_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sip_sip_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public          dbadmin    false    8    241            f           2604    25395    asset asset_id    DEFAULT     p   ALTER TABLE ONLY public.asset ALTER COLUMN asset_id SET DEFAULT nextval('public.asset_asset_id_seq'::regclass);
 =   ALTER TABLE public.asset ALTER COLUMN asset_id DROP DEFAULT;
       public          dbadmin    false    265    264    265            e           2604    25386    asset_tag asset_tag_id    DEFAULT     �   ALTER TABLE ONLY public.asset_tag ALTER COLUMN asset_tag_id SET DEFAULT nextval('public.asset_tags_asset_tag_id_seq'::regclass);
 E   ALTER TABLE public.asset_tag ALTER COLUMN asset_tag_id DROP DEFAULT;
       public          dbadmin    false    262    263    263            `           2604    25229    client client_id    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN client_id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN client_id DROP DEFAULT;
       public          dbadmin    false    252    251    252            g           2604    25458    deployment deployment_id    DEFAULT     �   ALTER TABLE ONLY public.deployment ALTER COLUMN deployment_id SET DEFAULT nextval('public.deployment_deployment_id_seq'::regclass);
 G   ALTER TABLE public.deployment ALTER COLUMN deployment_id DROP DEFAULT;
       public          dbadmin    false    266    267    267            h           2604    25467 "   deployment_type deployment_type_id    DEFAULT     �   ALTER TABLE ONLY public.deployment_type ALTER COLUMN deployment_type_id SET DEFAULT nextval('public.deployment_type_deployment_type_id_seq'::regclass);
 Q   ALTER TABLE public.deployment_type ALTER COLUMN deployment_type_id DROP DEFAULT;
       public          dbadmin    false    268    269    269            _           2604    25186    device_list device_list_id    DEFAULT     �   ALTER TABLE ONLY public.device_list ALTER COLUMN device_list_id SET DEFAULT nextval('public.device_list_device_list_id_seq'::regclass);
 I   ALTER TABLE public.device_list ALTER COLUMN device_list_id DROP DEFAULT;
       public          dbadmin    false    250    249    250            j           2604    25508    installation installation_id    DEFAULT     �   ALTER TABLE ONLY public.installation ALTER COLUMN installation_id SET DEFAULT nextval('public.installation_installation_id_seq'::regclass);
 K   ALTER TABLE public.installation ALTER COLUMN installation_id DROP DEFAULT;
       public          dbadmin    false    272    273    273            i           2604    25495 &   installation_type installation_type_id    DEFAULT     �   ALTER TABLE ONLY public.installation_type ALTER COLUMN installation_type_id SET DEFAULT nextval('public.installation_type_installation_type_id_seq'::regclass);
 U   ALTER TABLE public.installation_type ALTER COLUMN installation_type_id DROP DEFAULT;
       public          dbadmin    false    270    271    271            ^           2604    25269    inventory inventory_id_pk    DEFAULT     �   ALTER TABLE ONLY public.inventory ALTER COLUMN inventory_id_pk SET DEFAULT nextval('public.inventory_inventory_id_pk_seq'::regclass);
 H   ALTER TABLE public.inventory ALTER COLUMN inventory_id_pk DROP DEFAULT;
       public          dbadmin    false    253    245            a           2604    25294    location_type location_type_id    DEFAULT     �   ALTER TABLE ONLY public.location_type ALTER COLUMN location_type_id SET DEFAULT nextval('public.location_type_location_type_id_seq'::regclass);
 M   ALTER TABLE public.location_type ALTER COLUMN location_type_id DROP DEFAULT;
       public          dbadmin    false    254    255    255            d           2604    25324    phone phone_id    DEFAULT     p   ALTER TABLE ONLY public.phone ALTER COLUMN phone_id SET DEFAULT nextval('public.phone_phone_id_seq'::regclass);
 =   ALTER TABLE public.phone ALTER COLUMN phone_id DROP DEFAULT;
       public          dbadmin    false    261    260            b           2604    25308    phone_list phone_list_id    DEFAULT     �   ALTER TABLE ONLY public.phone_list ALTER COLUMN phone_list_id SET DEFAULT nextval('public.phone_list_phone_list_id_seq'::regclass);
 G   ALTER TABLE public.phone_list ALTER COLUMN phone_list_id DROP DEFAULT;
       public          dbadmin    false    256    257    257            c           2604    25315    phone_type phone_type_id    DEFAULT     �   ALTER TABLE ONLY public.phone_type ALTER COLUMN phone_type_id SET DEFAULT nextval('public.phone_type_phone_type_id_seq'::regclass);
 G   ALTER TABLE public.phone_type ALTER COLUMN phone_type_id DROP DEFAULT;
       public          dbadmin    false    259    258    259            �           2606    25399    asset asset_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_pk PRIMARY KEY (asset_id);
 8   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_pk;
       public            dbadmin    false    265            �           2606    25388    asset_tag asset_tags_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.asset_tag
    ADD CONSTRAINT asset_tags_pk PRIMARY KEY (asset_tag_id);
 A   ALTER TABLE ONLY public.asset_tag DROP CONSTRAINT asset_tags_pk;
       public            dbadmin    false    263            r           2606    24837    association association_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.association
    ADD CONSTRAINT association_pk PRIMARY KEY (association_id);
 D   ALTER TABLE ONLY public.association DROP CONSTRAINT association_pk;
       public            dbadmin    false    225            �           2606    25118    city city_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_id PRIMARY KEY (city_id) INCLUDE (city_id);
 6   ALTER TABLE ONLY public.city DROP CONSTRAINT city_id;
       public            dbadmin    false    243            �           2606    25233    client client_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pk PRIMARY KEY (client_id);
 :   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pk;
       public            dbadmin    false    252            t           2606    25076    company company_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pk PRIMARY KEY (company_id) INCLUDE (company_id);
 <   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pk;
       public            dbadmin    false    227            �           2606    25135    customer customer_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_id PRIMARY KEY (customer_id);
 >   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_id;
       public            dbadmin    false    246            �           2606    25462    deployment deployment_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.deployment
    ADD CONSTRAINT deployment_pk PRIMARY KEY (deployment_id);
 B   ALTER TABLE ONLY public.deployment DROP CONSTRAINT deployment_pk;
       public            dbadmin    false    267            �           2606    25471 "   deployment_type deployment_type_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.deployment_type
    ADD CONSTRAINT deployment_type_pk PRIMARY KEY (deployment_type_id);
 L   ALTER TABLE ONLY public.deployment_type DROP CONSTRAINT deployment_type_pk;
       public            dbadmin    false    269            �           2606    25190    device_list device_list_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.device_list
    ADD CONSTRAINT device_list_pk PRIMARY KEY (device_list_id);
 D   ALTER TABLE ONLY public.device_list DROP CONSTRAINT device_list_pk;
       public            dbadmin    false    250            v           2606    24847    device device_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_pk PRIMARY KEY (device_id);
 :   ALTER TABLE ONLY public.device DROP CONSTRAINT device_pk;
       public            dbadmin    false    229            �           2606    25142    device_type device_type_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.device_type
    ADD CONSTRAINT device_type_pkey PRIMARY KEY (device_type_id);
 F   ALTER TABLE ONLY public.device_type DROP CONSTRAINT device_type_pkey;
       public            dbadmin    false    247            �           2606    25510    installation installation_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.installation
    ADD CONSTRAINT installation_pk PRIMARY KEY (installation_id);
 F   ALTER TABLE ONLY public.installation DROP CONSTRAINT installation_pk;
       public            dbadmin    false    273            �           2606    25497 &   installation_type installation_type_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.installation_type
    ADD CONSTRAINT installation_type_pk PRIMARY KEY (installation_type_id);
 P   ALTER TABLE ONLY public.installation_type DROP CONSTRAINT installation_type_pk;
       public            dbadmin    false    271            �           2606    25274    inventory inventory_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pk PRIMARY KEY (inventory_id_pk);
 @   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pk;
       public            dbadmin    false    245            y           2606    24853    location location_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pk PRIMARY KEY (location_id);
 >   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pk;
       public            dbadmin    false    231            �           2606    25296    location_type location_type_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.location_type
    ADD CONSTRAINT location_type_pk PRIMARY KEY (location_type_id);
 H   ALTER TABLE ONLY public.location_type DROP CONSTRAINT location_type_pk;
       public            dbadmin    false    255            {           2606    24859    manufacturer manufacturer_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pk PRIMARY KEY (manufacturer_id);
 F   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT manufacturer_pk;
       public            dbadmin    false    233            }           2606    24865    model model_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pk PRIMARY KEY (model_id);
 8   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pk;
       public            dbadmin    false    235            �           2606    25188 (   person_device_list person_device_list_pk 
   CONSTRAINT     y   ALTER TABLE ONLY public.person_device_list
    ADD CONSTRAINT person_device_list_pk PRIMARY KEY (person_device_list_id);
 R   ALTER TABLE ONLY public.person_device_list DROP CONSTRAINT person_device_list_pk;
       public            dbadmin    false    242                       2606    24871    person person_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pk PRIMARY KEY (person_id);
 :   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pk;
       public            dbadmin    false    237            �           2606    25310    phone_list phone_list_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.phone_list
    ADD CONSTRAINT phone_list_pk PRIMARY KEY (phone_list_id);
 B   ALTER TABLE ONLY public.phone_list DROP CONSTRAINT phone_list_pk;
       public            dbadmin    false    257            �           2606    25329    phone phone_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_pk PRIMARY KEY (phone_id);
 8   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_pk;
       public            dbadmin    false    260            �           2606    25319    phone_type phone_type_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.phone_type
    ADD CONSTRAINT phone_type_pk PRIMARY KEY (phone_type_id);
 B   ALTER TABLE ONLY public.phone_type DROP CONSTRAINT phone_type_pk;
       public            dbadmin    false    259            �           2606    24877    serial serial_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.serial
    ADD CONSTRAINT serial_pk PRIMARY KEY (serial_id);
 :   ALTER TABLE ONLY public.serial DROP CONSTRAINT serial_pk;
       public            dbadmin    false    239            �           2606    24883 
   sip sip_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.sip
    ADD CONSTRAINT sip_pk PRIMARY KEY (sip_id);
 4   ALTER TABLE ONLY public.sip DROP CONSTRAINT sip_pk;
       public            dbadmin    false    241            w           1259    25082    fki_company_id    INDEX     I   CREATE INDEX fki_company_id ON public.location USING btree (company_id);
 "   DROP INDEX public.fki_company_id;
       public            dbadmin    false    231            �           2606    24912    person asc_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.person
    ADD CONSTRAINT asc_id FOREIGN KEY (asc_id) REFERENCES public.association(association_id);
 7   ALTER TABLE ONLY public.person DROP CONSTRAINT asc_id;
       public          dbadmin    false    3954    225    237            �           2606    25449    asset asset_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk FOREIGN KEY (device_type_id) REFERENCES public.device_type(device_type_id);
 8   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk;
       public          dbadmin    false    247    265    3981            �           2606    25404    asset asset_fk_city    FK CONSTRAINT     v   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_city FOREIGN KEY (city_id) REFERENCES public.city(city_id);
 =   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_city;
       public          dbadmin    false    265    243    3975            �           2606    25409    asset asset_fk_client    FK CONSTRAINT     ~   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_client FOREIGN KEY (client_id) REFERENCES public.client(client_id);
 ?   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_client;
       public          dbadmin    false    265    3985    252            �           2606    25414    asset asset_fk_company    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 @   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_company;
       public          dbadmin    false    227    265    3956            �           2606    25419    asset asset_fk_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 A   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_customer;
       public          dbadmin    false    246    3979    265            �           2606    25536    asset asset_fk_deployment    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_deployment FOREIGN KEY (deployment_id) REFERENCES public.deployment(deployment_id);
 C   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_deployment;
       public          dbadmin    false    265    267    3999            �           2606    25424    asset asset_fk_device    FK CONSTRAINT     ~   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_device FOREIGN KEY (device_id) REFERENCES public.device(device_id);
 ?   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_device;
       public          dbadmin    false    229    3958    265            �           2606    25429    asset asset_fk_device_list    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_device_list FOREIGN KEY (device_list_id) REFERENCES public.device_list(device_list_id);
 D   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_device_list;
       public          dbadmin    false    265    3983    250            �           2606    25444    asset asset_fk_device_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_device_type FOREIGN KEY (asset_tag_id) REFERENCES public.asset_tag(asset_tag_id);
 D   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_device_type;
       public          dbadmin    false    265    3995    263            �           2606    25541    asset asset_fk_installation_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_installation_id FOREIGN KEY (installation_id) REFERENCES public.installation(installation_id);
 H   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_installation_id;
       public          dbadmin    false    273    4005    265            �           2606    25434    asset asset_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_inventory FOREIGN KEY (inventory_id) REFERENCES public.inventory(inventory_id_pk);
 B   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_inventory;
       public          dbadmin    false    3977    265    245            �           2606    25439    asset asset_fk_location    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_location FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 A   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_location;
       public          dbadmin    false    265    231    3961            �           2606    25526    asset asset_fk_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_fk_tag_id FOREIGN KEY (asset_tag_id) REFERENCES public.asset_tag(asset_tag_id);
 ?   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_fk_tag_id;
       public          dbadmin    false    3995    263    265            �           2606    25158    customer company_fk    FK CONSTRAINT        ALTER TABLE ONLY public.customer
    ADD CONSTRAINT company_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 =   ALTER TABLE ONLY public.customer DROP CONSTRAINT company_fk;
       public          dbadmin    false    246    3956    227            �           2606    25077    location company_id    FK CONSTRAINT        ALTER TABLE ONLY public.location
    ADD CONSTRAINT company_id FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 =   ALTER TABLE ONLY public.location DROP CONSTRAINT company_id;
       public          dbadmin    false    227    3956    231            �           2606    25085    person company_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.person
    ADD CONSTRAINT company_id FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 ;   ALTER TABLE ONLY public.person DROP CONSTRAINT company_id;
       public          dbadmin    false    237    3956    227            �           2606    25090    person_device_list company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.person_device_list
    ADD CONSTRAINT company_id FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 G   ALTER TABLE ONLY public.person_device_list DROP CONSTRAINT company_id;
       public          dbadmin    false    242    227    3956            �           2606    25472    deployment deployment_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.deployment
    ADD CONSTRAINT deployment_fk FOREIGN KEY (deployment_type_id) REFERENCES public.deployment_type(deployment_type_id);
 B   ALTER TABLE ONLY public.deployment DROP CONSTRAINT deployment_fk;
       public          dbadmin    false    267    4001    269            �           2606    25280    device device_fk_device_list    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_device_list FOREIGN KEY (device_list_id) REFERENCES public.device_list(device_list_id);
 F   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_device_list;
       public          dbadmin    false    3983    229    250            �           2606    25285    device device_fk_location    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_location FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 C   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_location;
       public          dbadmin    false    3961    229    231            �           2606    24902    device device_fk_location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 F   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_location_id;
       public          dbadmin    false    3961    229    231            �           2606    24892     device device_fk_manufacturer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturer(manufacturer_id);
 J   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_manufacturer_id;
       public          dbadmin    false    233    3963    229            �           2606    24887    device device_fk_model_id    FK CONSTRAINT        ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_model_id FOREIGN KEY (model_id) REFERENCES public.model(model_id);
 C   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_model_id;
       public          dbadmin    false    3965    229    235            �           2606    24897    device device_fk_serial_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_serial_id FOREIGN KEY (serial_id) REFERENCES public.serial(serial_id);
 D   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_serial_id;
       public          dbadmin    false    229    3969    239            �           2606    25208    device device_fk_sip_id    FK CONSTRAINT     w   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_sip_id FOREIGN KEY (sip_id) REFERENCES public.sip(sip_id);
 A   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_sip_id;
       public          dbadmin    false    3971    229    241            �           2606    25191    person device_list_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.person
    ADD CONSTRAINT device_list_id FOREIGN KEY (device_list_id) REFERENCES public.device_list(device_list_id);
 ?   ALTER TABLE ONLY public.person DROP CONSTRAINT device_list_id;
       public          dbadmin    false    237    250    3983            �           2606    25511    installation installation_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.installation
    ADD CONSTRAINT installation_fk FOREIGN KEY (installation_type_id) REFERENCES public.installation_type(installation_type_id);
 F   ALTER TABLE ONLY public.installation DROP CONSTRAINT installation_fk;
       public          dbadmin    false    271    273    4003            �           2606    25516 "   installation installation_fk_asset    FK CONSTRAINT     �   ALTER TABLE ONLY public.installation
    ADD CONSTRAINT installation_fk_asset FOREIGN KEY (asset_id) REFERENCES public.asset(asset_id);
 L   ALTER TABLE ONLY public.installation DROP CONSTRAINT installation_fk_asset;
       public          dbadmin    false    3997    265    273            �           2606    25531 &   installation installation_fk_asset_tag    FK CONSTRAINT     �   ALTER TABLE ONLY public.installation
    ADD CONSTRAINT installation_fk_asset_tag FOREIGN KEY (asset_tag_id) REFERENCES public.asset_tag(asset_tag_id);
 P   ALTER TABLE ONLY public.installation DROP CONSTRAINT installation_fk_asset_tag;
       public          dbadmin    false    263    273    3995            �           2606    25521 '   installation installation_fk_deployment    FK CONSTRAINT     �   ALTER TABLE ONLY public.installation
    ADD CONSTRAINT installation_fk_deployment FOREIGN KEY (deployment_id) REFERENCES public.deployment(deployment_id);
 Q   ALTER TABLE ONLY public.installation DROP CONSTRAINT installation_fk_deployment;
       public          dbadmin    false    267    3999    273            �           2606    25275    inventory inventory_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_fk FOREIGN KEY (device_list_id) REFERENCES public.device_list(device_list_id);
 @   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_fk;
       public          dbadmin    false    3983    250    245            �           2606    25258    inventory inventory_fk_city    FK CONSTRAINT     ~   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_fk_city FOREIGN KEY (site_id) REFERENCES public.city(city_id);
 E   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_fk_city;
       public          dbadmin    false    245    243    3975            �           2606    25248    inventory inventory_fk_client    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_fk_client FOREIGN KEY (client_id) REFERENCES public.client(client_id);
 G   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_fk_client;
       public          dbadmin    false    252    245    3985            �           2606    25263    inventory inventory_fk_company    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 H   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_fk_company;
       public          dbadmin    false    227    245    3956            �           2606    25253    inventory inventory_fk_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_fk_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 I   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_fk_customer;
       public          dbadmin    false    246    245    3979            �           2606    25299    location location_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_fk FOREIGN KEY (location_type_id) REFERENCES public.location_type(location_type_id);
 >   ALTER TABLE ONLY public.location DROP CONSTRAINT location_fk;
       public          dbadmin    false    3987    255    231            �           2606    24917    person location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.person
    ADD CONSTRAINT location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT location_id;
       public          dbadmin    false    237    231    3961            �           2606    25176    customer person_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT person_fk FOREIGN KEY (person_id) REFERENCES public.person(person_id);
 <   ALTER TABLE ONLY public.customer DROP CONSTRAINT person_fk;
       public          dbadmin    false    246    3967    237            �           2606    24922    person_device_list person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.person_device_list
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id);
 F   ALTER TABLE ONLY public.person_device_list DROP CONSTRAINT person_id;
       public          dbadmin    false    237    242    3967            �           2606    25370    phone phone_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk FOREIGN KEY (phone_type_id) REFERENCES public.phone_type(phone_type_id);
 8   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk;
       public          dbadmin    false    259    3991    260            �           2606    25345    phone phone_fk_company    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);
 @   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_company;
       public          dbadmin    false    227    260    3956            �           2606    25350    phone phone_fk_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 A   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_customer;
       public          dbadmin    false    260    246    3979            �           2606    25355    phone phone_fk_device    FK CONSTRAINT     ~   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_device FOREIGN KEY (device_id) REFERENCES public.device(device_id);
 ?   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_device;
       public          dbadmin    false    3958    229    260            �           2606    25335    phone phone_fk_location    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_location FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 A   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_location;
       public          dbadmin    false    260    3961    231            �           2606    25377    phone phone_fk_location_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_location_type FOREIGN KEY (location_type_id) REFERENCES public.location_type(location_type_id);
 F   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_location_type;
       public          dbadmin    false    255    3987    260            �           2606    25360    phone phone_fk_manufacturer    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_manufacturer FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturer(manufacturer_id);
 E   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_manufacturer;
       public          dbadmin    false    233    3963    260            �           2606    25330    phone phone_fk_person    FK CONSTRAINT     ~   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_person FOREIGN KEY (person_id) REFERENCES public.person(person_id);
 ?   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_person;
       public          dbadmin    false    237    3967    260            �           2606    25340    phone phone_fk_phone_list    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_phone_list FOREIGN KEY (phone_list_id) REFERENCES public.phone_list(phone_list_id);
 C   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_phone_list;
       public          dbadmin    false    260    3989    257            �           2606    25365    phone phone_fk_serial    FK CONSTRAINT     ~   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_fk_serial FOREIGN KEY (serial_id) REFERENCES public.serial(serial_id);
 ?   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_fk_serial;
       public          dbadmin    false    239    3969    260            h           3256    24792    job cron_job_policy    POLICY     M   CREATE POLICY cron_job_policy ON cron.job USING ((username = CURRENT_USER));
 )   DROP POLICY cron_job_policy ON cron.job;
       cron          azuresu    false    3    3    3    3    3    3    3    3            i           3256    24807 +   job_run_details cron_job_run_details_policy    POLICY     e   CREATE POLICY cron_job_run_details_policy ON cron.job_run_details USING ((username = CURRENT_USER));
 A   DROP POLICY cron_job_run_details_policy ON cron.job_run_details;
       cron          azuresu    false    3    3    3    3    3    3    3    3            f           0    24780    job    ROW SECURITY     /   ALTER TABLE cron.job ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    221            g           0    24799    job_run_details    ROW SECURITY     ;   ALTER TABLE cron.job_run_details ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    223           