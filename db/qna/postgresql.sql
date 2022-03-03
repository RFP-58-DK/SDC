DROP DATABASE IF EXISTS qna;

CREATE DATABASE qna;

\c qna

CREATE TABLE IF NOT EXISTS product (
 product_id SERIAL
);

ALTER TABLE product ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);

CREATE TABLE questions (
 question_id SERIAL,
 question_body VARCHAR(100) NOT NULL,
 question_date VARCHAR(50) NOT NULL,
 asker_name VARCHAR(20) NOT NULL,
 question_helpfulness INTEGER,
 question_reported BOOLEAN,
 product_id SERIAL
);

ALTER TABLE questions ADD CONSTRAINT questions_pkey PRIMARY KEY (question_id);

CREATE TABLE answers (
 answer_id SERIAL,
 answer_body VARCHAR(100) NOT NULL,
 answer_date VARCHAR(50) NOT NULL,
 answerer_name VARCHAR(20) NOT NULL,
 answer_helpfulness INTEGER,
 question_id SERIAL
);

ALTER TABLE answers ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);

CREATE TABLE photos (
 photo_id SERIAL,
 photo_url VARCHAR(100) NOT NULL,
 answer_id SERIAL
);

ALTER TABLE photos ADD CONSTRAINT photos_pkey PRIMARY KEY (photo_id);

ALTER TABLE questions ADD CONSTRAINT questions_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id);
ALTER TABLE answers ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES questions(question_id);
ALTER TABLE photos ADD CONSTRAINT photos_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES answers(answer_id);