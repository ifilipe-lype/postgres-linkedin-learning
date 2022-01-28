-- Constraint: employees_department_id_fkey

-- ALTER TABLE IF EXISTS human_resources.employees DROP CONSTRAINT IF EXISTS employees_department_id_fkey;

ALTER TABLE IF EXISTS human_resources.employees
    ADD FOREIGN KEY (department_id)
    REFERENCES human_resources.departments (department_id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION;