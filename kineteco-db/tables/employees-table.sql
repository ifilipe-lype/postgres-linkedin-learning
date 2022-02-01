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

--- Creates indexes on employee_id, and last_name columns.

CREATE INDEX employees_employee_id_idx
    ON human_resources.employees USING btree
    (employee_id ASC NULLS LAST)
;

CREATE INDEX employees_last_name_idx
    ON human_resources.employees USING btree
    (last_name ASC NULLS LAST)
;

--- sets default department_id for new employees to 800
ALTER TABLE IF EXISTS human_resources.employees
    ALTER COLUMN department_id SET DEFAULT 800;

ALTER TABLE IF EXISTS human_resources.employees
    ADD CONSTRAINT employees_hire_date_check CHECK (hire_date > '2020-01-01')
    NOT VALID;