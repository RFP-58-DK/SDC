DROP DATABASE IF EXISTS QnA;

CREATE DATABASE QnA;

\c QnA

CREATE TABLE IF NOT EXISTS product (
 product_id BIGSERIAL
);

ALTER TABLE product ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);

CREATE TABLE questions (
 question_id BIGSERIAL,
 question_body VARCHAR(100),
 question_date VARCHAR(50),
 asker_name VARCHAR(20),
 question_helpfulness INTEGER,
 question_reported BOOLEAN,
 product_id SERIAL
);

ALTER TABLE questions ADD CONSTRAINT questions_pkey PRIMARY KEY (question_id);
-- ALTER TABLE questions ADD CONSTRAINT questions_pkey KEY ();
-- ALTER TABLE questions ADD CONSTRAINT questions_pkey KEY ();

CREATE TABLE answers (
 answer_id BIGSERIAL,
 answer_body VARCHAR,
 answer_date VARCHAR,
 answerer_name VARCHAR,
 answer_helpfulness INTEGER,
 question_id SERIAL
);

ALTER TABLE answers ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);

CREATE TABLE photos (
 photo_id BIGSERIAL,
 photo_url VARCHAR,
 answer_id SERIAL
);

ALTER TABLE photos ADD CONSTRAINT photos_pkey PRIMARY KEY (photo_id);

ALTER TABLE questions ADD CONSTRAINT questions_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id);
ALTER TABLE answers ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES questions(question_id);
ALTER TABLE photos ADD CONSTRAINT photos_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES answers(answer_id);