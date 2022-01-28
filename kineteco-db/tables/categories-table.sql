CREATE TABLE manufacturing.categories
(
    category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    market character varying(20) NOT NULL,
    PRIMARY KEY (category_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS manufacturing.categories
    OWNER to root;