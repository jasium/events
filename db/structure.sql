CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "location" varchar(255), "capacity" integer, "price" decimal, "starts_at" datetime, "image_file_name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "ends_at" datetime);
CREATE TABLE "registrations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "event_id" integer);
CREATE TABLE "reviews" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "comments" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "event_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120320174225');

INSERT INTO schema_migrations (version) VALUES ('20120321134508');

INSERT INTO schema_migrations (version) VALUES ('20120322140630');

INSERT INTO schema_migrations (version) VALUES ('20120322145603');

INSERT INTO schema_migrations (version) VALUES ('20120322153002');

INSERT INTO schema_migrations (version) VALUES ('20120322164930');