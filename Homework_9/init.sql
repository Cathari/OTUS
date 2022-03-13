CREATE database taptap;
USE taptap;
CREATE TABLE companies (
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