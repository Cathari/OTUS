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


CREATE SCHEMA common;
ALTER SCHEMA common OWNER TO otus_user;

CREATE SCHEMA companies;
ALTER SCHEMA companies OWNER TO otus_user;

CREATE SCHEMA phone_numbers;
ALTER SCHEMA phone_numbers OWNER TO otus_user;

CREATE SCHEMA roles;
ALTER SCHEMA roles OWNER TO otus_user;

SET default_tablespace = '';
SET default_table_access_method = heap;

CREATE TABLE common.countries (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    title character varying(255) NOT NULL
);

ALTER TABLE common.countries OWNER TO otus_user;


CREATE TABLE common.groups (
    id bigint NOT NULL,
    uuid character(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer NOT NULL,
    "order" integer NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE common.groups OWNER TO otus_user;


CREATE TABLE common.messages (
    id bigint NOT NULL,
    message character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE common.messages OWNER TO otus_user;
COMMENT ON COLUMN common.messages.message IS 'текст сообщения в SMS';


CREATE TABLE common.sms (
    id bigint NOT NULL,
    uuid character(36) NOT NULL,
    user_id bigint,
    campaign_id bigint,
    "to" character varying(20) NOT NULL,
    message character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    meta json,
    send_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE common.sms OWNER TO otus_user;
COMMENT ON COLUMN common.sms.uuid IS 'автоматический генерируемый uuid';
COMMENT ON COLUMN common.sms."to" IS 'номер назначения';
COMMENT ON COLUMN common.sms.message IS 'содержание сообщения SMS';
COMMENT ON COLUMN common.sms.send_at IS 'дата отправки';


CREATE TABLE common.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE common.users OWNER TO otus_user;


CREATE TABLE companies.companies (
    id bigint NOT NULL,
    uuid character(36) NOT NULL,
    user_id bigint,
    group_id bigint,
    title character varying(255) NOT NULL,
    message_count bigint NOT NULL,
    start_at timestamp without time zone NOT NULL,
    state character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE companies.companies OWNER TO otus_user;


CREATE TABLE companies.companies_messages (
    campaign_id bigint NOT NULL,
    message_id bigint NOT NULL
);

ALTER TABLE companies.companies_messages OWNER TO otus_user;


CREATE TABLE phone_numbers.phone_numbers (
    id bigint NOT NULL,
    number character varying(20) NOT NULL,
    country character varying(20) NOT NULL,
    enabled smallint NOT NULL,
    user_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE phone_numbers.phone_numbers OWNER TO otus_user;


CREATE TABLE phone_numbers.phone_numbers_companies (
    phone_number_id bigint NOT NULL,
    campaign_id bigint NOT NULL
);

ALTER TABLE phone_numbers.phone_numbers_companies OWNER TO otus_user;


CREATE TABLE phone_numbers.phone_numbers_groups (
    phone_number_id bigint NOT NULL,
    group_id bigint NOT NULL
);

ALTER TABLE phone_numbers.phone_numbers_groups OWNER TO otus_user;


CREATE TABLE roles.role_permission (
    role_id bigint NOT NULL,
    permission_slug character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE roles.role_permission OWNER TO otus_user;


CREATE TABLE roles.role_user (
    role_id bigint,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

ALTER TABLE roles.role_user OWNER TO otus_user;


CREATE TABLE roles.roles (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE roles.roles OWNER TO otus_user;



ALTER TABLE ONLY common.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);

ALTER TABLE ONLY common.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);

ALTER TABLE ONLY common.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);

ALTER TABLE ONLY common.sms
    ADD CONSTRAINT sms_pkey PRIMARY KEY (id);

ALTER TABLE ONLY common.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE ONLY companies.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);

ALTER TABLE ONLY phone_numbers.phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);

ALTER TABLE ONLY roles.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);