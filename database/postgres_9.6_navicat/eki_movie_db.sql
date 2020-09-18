/*
 Navicat Premium Data Transfer

 Source Server         : POSTGRESQL_VM_DOCKER
 Source Server Type    : PostgreSQL
 Source Server Version : 90617
 Source Host           : localhost:5433
 Source Catalog        : eki_movie_db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90600
 File Encoding         : 65001

 Date: 18/09/2020 20:14:02
*/


-- ----------------------------
-- Sequence structure for mst_movie_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "mst_movie_id_seq";
CREATE SEQUENCE "mst_movie_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for mst_movie
-- ----------------------------
DROP TABLE IF EXISTS "mst_movie";
CREATE TABLE "mst_movie" (
  "id" int2 NOT NULL DEFAULT nextval('mst_movie_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default",
  "release_date" varchar COLLATE "pg_catalog"."default",
  "imbd_rating" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "updated_at" timestamptz(6) DEFAULT now(),
  "cover" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of mst_movie
-- ----------------------------
BEGIN;
INSERT INTO "mst_movie" VALUES (8, 'The Paramedic', '2020', '5', '2020-09-18 05:49:26.771753+00', '2020-09-18 05:49:26.771753+00', '1-202009184926.jpg');
INSERT INTO "mst_movie" VALUES (9, 'Undone', '2020', '6', '2020-09-18 05:50:09.971069+00', '2020-09-18 05:50:09.971069+00', '1-202009185010.jpg');
INSERT INTO "mst_movie" VALUES (10, 'The Devil All the Time', '2020', '7', '2020-09-18 05:50:40.537676+00', '2020-09-18 05:50:40.537676+00', '1-202009185040.jpg');
INSERT INTO "mst_movie" VALUES (11, 'Evil Takes Root', '2020', '5', '2020-09-18 05:51:30.677531+00', '2020-09-18 05:51:30.677531+00', '1-202009185131.jpg');
INSERT INTO "mst_movie" VALUES (12, 'Super Monsters: The New Class', '2020', '6', '2020-09-18 05:52:08.398676+00', '2020-09-18 05:52:08.398676+00', '1-202009185208.jpg');
INSERT INTO "mst_movie" VALUES (13, 'The Lost Prince', '2020', '5', '2020-09-18 05:53:03.213123+00', '2020-09-18 05:53:03.213123+00', '1-202009185303.jpg');
INSERT INTO "mst_movie" VALUES (14, 'Coastal Elites', '2020', '6', '2020-09-18 05:53:39.541736+00', '2020-09-18 05:53:39.541736+00', '1-202009185339.jpg');
INSERT INTO "mst_movie" VALUES (15, 'The War with Grandpa', '2020', '5', '2020-09-18 05:54:44.888176+00', '2020-09-18 05:54:44.888176+00', '1-202009185444.jpg');
INSERT INTO "mst_movie" VALUES (16, 'Honest Candidate', '2020', '6', '2020-09-18 05:55:08.882187+00', '2020-09-18 05:55:08.882187+00', '1-202009185509.jpg');
INSERT INTO "mst_movie" VALUES (17, 'DAU. Degeneratsiya', '2020', '5', '2020-09-18 05:55:47.076901+00', '2020-09-18 05:55:47.076901+00', '1-202009185547.jpg');
INSERT INTO "mst_movie" VALUES (18, 'DAU. Natasha', '2020', '5', '2020-09-18 05:56:07.578483+00', '2020-09-18 05:56:07.578483+00', '1-202009185607.jpg');
INSERT INTO "mst_movie" VALUES (19, ' Dad Wanted', '2020', '5', '2020-09-18 05:56:53.666565+00', '2020-09-18 05:56:53.666565+00', '1-202009185654.jpg');
INSERT INTO "mst_movie" VALUES (20, 'Catwalk: From Glada Hudik to New York', '2020', '7', '2020-09-18 05:57:20.452945+00', '2020-09-18 05:57:20.452945+00', '1-202009185720.jpg');
INSERT INTO "mst_movie" VALUES (21, 'Rent-A-Pal', '2020', '6', '2020-09-18 05:58:09.348901+00', '2020-09-18 05:58:09.348901+00', '1-202009185809.jpg');
INSERT INTO "mst_movie" VALUES (22, 'Surge', '2020', '6', '2020-09-18 05:58:37.483881+00', '2020-09-18 05:58:37.483881+00', '1-202009185837.jpg');
INSERT INTO "mst_movie" VALUES (23, 'The Sit-In: Harry Belafonte hosts the Tonight Show', '2020', '7', '2020-09-18 05:59:28.050182+00', '2020-09-18 05:59:28.050182+00', '1-202009185928.jpg');
INSERT INTO "mst_movie" VALUES (24, 'I Met a Girl', '2020', '6', '2020-09-18 06:00:05.80989+00', '2020-09-18 06:00:05.80989+00', '1-202009180005.jpg');
INSERT INTO "mst_movie" VALUES (25, 'All Together Now', '2020', '6', '2020-09-18 06:00:57.205086+00', '2020-09-18 06:00:57.205086+00', '1-202009180057.jpg');
INSERT INTO "mst_movie" VALUES (26, 'Ava', '2020', '5', '2020-09-18 06:01:27.19332+00', '2020-09-18 06:01:27.19332+00', '1-202009180127.jpg');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "mst_movie_id_seq"
OWNED BY "mst_movie"."id";
SELECT setval('"mst_movie_id_seq"', 39, true);

-- ----------------------------
-- Primary Key structure for table mst_movie
-- ----------------------------
ALTER TABLE "mst_movie" ADD CONSTRAINT "mst_movie_pk" PRIMARY KEY ("id");
