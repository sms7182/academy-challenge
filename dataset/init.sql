-- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    "user_id" bigint,
    "name " text 
    
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;
post_text,likes,comments,commented_by,liked_by
CREATE TABLE IF NOT EXISTS public.posts
(
    "post_id" bigint,
    "user_id" bigint,
    "post_text" text,
    "likes" bigint,
    "comments" bigint,
    "commented_by" text[],
    "liked_by" text[]
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.posts
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.friendships
(
    "user1_id" bigint,
    "user2_id" bigint
   
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.friendships
    OWNER to postgres;



COPY users FROM '/docker-entrypoint-initdb.d/users.csv' CSV HEADER;

COPY posts FROM '/docker-entrypoint-initdb.d/Posts.csv' CSV HEADER;

COPY friendships FROM '/docker-entrypoint-initdb.d/Friendships.csv' CSV HEADER;




