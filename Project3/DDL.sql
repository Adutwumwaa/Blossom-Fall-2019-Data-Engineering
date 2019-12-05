CREATE SCHEMA stackoverflow_filtered;

CREATE TABLE results (
    id int4 NULL,
    display_name text NULL,
    reputation text null,
    website_url text NULL,
    "location" text NULL,
    about_me text NULL,
    "views" int4 NULL,
    up_votes int4 NULL,
    down_votes int4 NULL,
    image_url text NULL,
    created_at timestamp NULL,
    updated_at timestamp null,
    city text null,
    country text null, 
    qid int4 null, 
    user_id int4 null, 
    title text null, 
    qbody text null, 
    accepted_answer_id int4 null, 
    qscore int4 null, 
    view_count int4 null, 
    qcomment_count int4 null,
    qcreated_at timestamp null, 
    aid int4 null, 
    auser_aid int4 null, 
    question_id int4 null, 
    body text null, 
    score int4 null, 
    comment_count int4 null, 
    acreated_at timestamp null );



set search_path to stackoverflow_filtered;


--Creating a btree index on the reputation column within the results table.

CREATE INDEX  rep  ON results (reputation);

--Creating a hash index on the display_name column within the results table.

CREATE INDEX  disname  ON results USING
hash (display_name);

--Creating a view with  display_name, city, questions_id where the accepted_answer_id is not null
CREATE VIEW info AS select display_name,
city, question_id, 
accepted_answer_id 
FROM results
WHERE accepted_answer_id IS NOT NULL;

--Creating a materialized view 
CREATE MATERIALIZED VIEW my_info AS
select display_name,
city, question_id, 
accepted_answer_id 
FROM results
WHERE accepted_answer_id IS NOT NULL;


