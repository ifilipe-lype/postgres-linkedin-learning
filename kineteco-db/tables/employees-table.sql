-- Table: human_resources.employees

-- DROP TABLE IF EXISTS human_resources.employees;

CREATE TABLE IF NOT EXISTS human_resources.employees
(
    employee_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    departmentent_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (employee_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS human_resources.employees
    OWNER to root;

ALTER TABLE IF EXISTS human_resources.employees
    RENAME departmentent_id TO department_id;