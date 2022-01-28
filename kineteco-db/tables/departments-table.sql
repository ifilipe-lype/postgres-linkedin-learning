CREATE TABLE human_resources.departments
(
    department_id character varying(50) NOT NULL,
    department_name character varying(50) NOT NULL,
    building character varying(50) NOT NULL,
    PRIMARY KEY (department_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS human_resources.departments
    OWNER to root;