--- Adds a new foreign key constrain to category_id on products table

ALTER TABLE IF EXISTS manufacturing.products
    ADD FOREIGN KEY (category_id)
    REFERENCES manufacturing.categories (category_id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION;