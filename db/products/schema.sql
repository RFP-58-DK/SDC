DROP DATABASE IF EXISTS product_information;

CREATE DATABASE product_information;

\c product_information;


CREATE TABLE product_information (
 id BIGSERIAL,
 name VARCHAR(245),
 slogan VARCHAR,
 description VARCHAR,
 category VARCHAR,
 default_price INTEGER,
 features VARCHAR,
 PRIMARY KEY (id)
);


-- ALTER TABLE product_information ADD CONSTRAINT product_information_pkey PRIMARY KEY (id);

CREATE TABLE product_styles (
 id BIGSERIAL,
 style_id INTEGER,
 name VARCHAR,
 sale_price INTEGER,
 original_price INTEGER,
 default_ INTEGER,
 PRIMARY KEY (id),
 FOREIGN KEY (style_id) REFERENCES product_information(id)
);


-- ALTER TABLE product_styles ADD CONSTRAINT product_styles_pkey PRIMARY KEY (id);

CREATE TABLE features (
 id BIGSERIAL,
 product_id INTEGER,
 feature VARCHAR,
 value VARCHAR,
 PRIMARY KEY (id),
 FOREIGN KEY (id) REFERENCES product_information(id)
);


-- ALTER TABLE features ADD CONSTRAINT features_pkey PRIMARY KEY (id);

CREATE TABLE photos (
 id BIGSERIAL,
 style_id INTEGER,
 url VARCHAR,
 thumbnail_url VARCHAR,
 PRIMARY KEY (id),
 FOREIGN KEY (style_id) REFERENCES product_styles
);


-- ALTER TABLE photos ADD CONSTRAINT photos_pkey PRIMARY KEY (id);

CREATE TABLE skus (
 id BIGSERIAL,
 style_id INTEGER,
 quantity INTEGER,
 size VARCHAR,
 PRIMARY KEY (id),
 FOREIGN KEY (style_id) REFERENCES product_styles(id)
);


-- ALTER TABLE skus ADD CONSTRAINT skus_pkey PRIMARY KEY (id);

-- ALTER TABLE product_styles ADD CONSTRAINT product_styles_style_id_fkey FOREIGN KEY (style_id) REFERENCES product_information(id);
-- ALTER TABLE features ADD CONSTRAINT features_id_fkey FOREIGN KEY (id) REFERENCES product_information(id);
-- ALTER TABLE photos ADD CONSTRAINT photos_style_id_fkey FOREIGN KEY (style_id) REFERENCES product_styles(id);
-- ALTER TABLE skus ADD CONSTRAINT skus_style_id_fkey FOREIGN KEY (style_id) REFERENCES product_styles(id);
-- CREATE TABLE IF NOT EXISTS product_information (
--   id SERIAL PRIMARY KEY,
--   -- campus VARCHAR (250),
--   name VARCHAR (250),
--   slogan VARCHAR (250),
--   description VARCHAR (250),
--   category VARCHAR (250),
--   default_price INT,
--   features VARCHAR (250)
-- );

-- CREATE TABLE IF NOT EXISTS product_styles (
--   id SERIAL,
--   FOREIGN KEY (style_id)
--     REFERENCES product_information (id),
--   style_id SERIAL PRIMARY KEY,
--   name VARCHAR (250),
--   sale_price INT,
--   original_price INT,
--   default_style INT
--   -- photos VARCHAR (250)
-- );

-- CREATE TABLE IF NOT EXISTS features (
--   id SERIAL PRIMARY KEY,
--   product_id SERIAL,
--   FOREIGN KEY (product_id)
--     REFERENCES product_information (id),
--   -- FOREIGN KEY (id)
--   --   REFERENCES product_information (id),
--   feature VARCHAR (250),
--   value VARCHAR (250)
-- );


-- -- CREATE TABLE IF NOT EXISTS skus (
-- --   id SERIAL PRIMARY KEY,
-- --   FOREIGN KEY (id)
-- --     REFERENCES product_information (id),
-- --   sku_id SERIAL PRIMARY KEY,
-- --   style_id SERIAL UNIQUE,
-- --   FOREIGN KEY (style_id)
-- --     REFERENCES product_styles (style_id)
-- -- );

-- CREATE TABLE IF NOT EXISTS skus (
--   id SERIAL PRIMARY KEY,
--   style_id SERIAL,
--   -- FOREIGN KEY (id)
--   --   REFERENCES product_information (id),
--   FOREIGN KEY (style_id)
--     REFERENCES product_styles (style_id),
--   -- sku_id SERIAL,
--   -- FOREIGN KEY (sku_id)
--   --   REFERENCES skus (sku_id),
--   size VARCHAR (250) NOT NULL,
--   quantity INT NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS photos (
--   id SERIAL,
--   -- FOREIGN KEY (id)
--   --   REFERENCES product_information (id),
--   style_id SERIAL,
--   FOREIGN KEY (style_id)
--     REFERENCES product_styles (style_id),
--   PRIMARY KEY (style_id),
--   url  VARCHAR NOT NULL,
--   thumbnail_url  VARCHAR NOT NULL
-- );
