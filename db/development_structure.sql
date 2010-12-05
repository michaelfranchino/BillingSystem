CREATE TABLE "addresses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(60), "city" varchar(60), "state" varchar(10), "country" varchar(2), "postal_code" varchar(10), "street" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "client_contacts" ("client_id" integer, "contact_id" integer);
CREATE TABLE "client_relationships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "client_id" integer, "contact_id" integer, "position" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "clients" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(60), "account" varchar(255), "enabled" boolean, "home_territory" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "contacts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(60), "title" varchar(60), "first_name" varchar(60), "last_name" varchar(60), "salutation_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "employees" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "standard_rate" float, "created_at" datetime, "updated_at" datetime, "enabled" boolean, "home_territory" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20101115021548');

INSERT INTO schema_migrations (version) VALUES ('20101115032606');

INSERT INTO schema_migrations (version) VALUES ('20101115213718');

INSERT INTO schema_migrations (version) VALUES ('20101115214611');

INSERT INTO schema_migrations (version) VALUES ('20101116202640');

INSERT INTO schema_migrations (version) VALUES ('20101116225355');

INSERT INTO schema_migrations (version) VALUES ('20101117002404');

INSERT INTO schema_migrations (version) VALUES ('20101117003748');

INSERT INTO schema_migrations (version) VALUES ('20101117011031');