-- Table: manufacturing.products

-- DROP TABLE IF EXISTS manufacturing.products;

CREATE TABLE IF NOT EXISTS manufacturing.products
(
    product_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    power integer,
    manufacturing_cost money NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT products_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS manufacturing.products
    OWNER to root;