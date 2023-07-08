BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "category" (
	"category_id"	INTEGER NOT NULL UNIQUE,
	"category"	TEXT,
	PRIMARY KEY("category_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "category_list" (
	"category_list_id"	INTEGER,
	"main"	,
	"second"	,
	"third"	,
	FOREIGN KEY("main") REFERENCES "category"("category_id"),
	FOREIGN KEY("third") REFERENCES "category"("category_id"),
	PRIMARY KEY("category_list_id" AUTOINCREMENT),
	FOREIGN KEY("second") REFERENCES "category"("category_id")
);
CREATE TABLE IF NOT EXISTS "company" (
	"name"	TEXT,
	"email"	TEXT,
	"phone"	,
	"company_id"	INTEGER,
	"business_start"	NUMERIC,
	"business_end"	NUMERIC,
	"co_owned"	,
	"co_owned_two"	NUMERIC,
	FOREIGN KEY("co_owned") REFERENCES "company"("company_id"),
	PRIMARY KEY("company_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "device" (
	"device_id"	INTEGER,
	"model_id"	,
	"manufacturer_id"	,
	"category_list_id"	,
	"serial_id"	,
	"name"	TEXT,
	"warranty_id"	,
	"location_id"	,
	FOREIGN KEY("serial_id") REFERENCES "serial"("serial_id"),
	FOREIGN KEY("manufacturer_id") REFERENCES "manufacturer"("manufacturer"),
	FOREIGN KEY("category_list_id") REFERENCES "category_list"("category_list_id"),
	FOREIGN KEY("model_id") REFERENCES "model"("model_id"),
	FOREIGN KEY("warranty_id") REFERENCES "warranty"("warranty_id"),
	PRIMARY KEY("device_id" AUTOINCREMENT),
	FOREIGN KEY("location_id") REFERENCES "location"("location_id")
);
CREATE TABLE IF NOT EXISTS "device_type" (
	"device_type_id"	INTEGER,
	"category_id"	,
	"device_type"	,
	PRIMARY KEY("device_type_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "did" (
	"did_id"	INTEGER,
	"did_no"	NUMERIC,
	"sip_id"	,
	PRIMARY KEY("did_id" AUTOINCREMENT),
	FOREIGN KEY("sip_id") REFERENCES "sip"("sip_id")
);
CREATE TABLE IF NOT EXISTS "location" (
	"address"	,
	"address_two"	,
	"city"	,
	"state"	,
	"latitude"	,
	"longitude"	,
	"location_id"	INTEGER,
	"company_id"	,
	PRIMARY KEY("location_id" AUTOINCREMENT),
	FOREIGN KEY("company_id") REFERENCES "company"("company_id")
);
CREATE TABLE IF NOT EXISTS "manufacturer" (
	"manufacturer_id"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("manufacturer_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "model" (
	"model_id"	INTEGER,
	PRIMARY KEY("model_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "person" (
	"person_id"	INTEGER,
	"company_id"	,
	"location_id"	,
	PRIMARY KEY("person_id" AUTOINCREMENT),
	FOREIGN KEY("location_id") REFERENCES "location"("location_id"),
	FOREIGN KEY("company_id") REFERENCES "company"("company_id")
);
CREATE TABLE IF NOT EXISTS "phone" (
	"phone_id"	INTEGER,
	"number"	NUMERIC,
	"sim"	TEXT,
	"model_id"	,
	"manufacturer_id"	,
	"sip_id"	,
	FOREIGN KEY("manufacturer_id") REFERENCES "manufacturer"("manufacturer_id"),
	FOREIGN KEY("model_id") REFERENCES "model"("model_id"),
	FOREIGN KEY("sip_id") REFERENCES "sip"("sip_id"),
	PRIMARY KEY("phone_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "serial" (
	"serial_id"	INTEGER,
	"serial_no"	TEXT,
	PRIMARY KEY("serial_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "sip" (
	"sip_id"	INTEGER,
	"sip_no"	NUMERIC,
	""	,
	FOREIGN KEY("") REFERENCES "company"("company_id"),
	PRIMARY KEY("sip_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "warranty" (
	"warranty_id"	INTEGER,
	"start_date"	NUMERIC,
	"end_date"	NUMERIC,
	PRIMARY KEY("warranty_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "association" (
	"association_id"	INTEGER,
	"type"	TEXT,
	PRIMARY KEY("association_id" AUTOINCREMENT)
);
INSERT INTO "category" VALUES (1,'computing');
INSERT INTO "category" VALUES (2,'perimeter');
INSERT INTO "category" VALUES (3,'printer');
INSERT INTO "category" VALUES (4,'physical');
INSERT INTO "category" VALUES (5,'security');
INSERT INTO "category" VALUES (6,'networking');
INSERT INTO "device_type" VALUES (1,NULL,NULL);
INSERT INTO "device_type" VALUES (2,NULL,'alarm_panel');
INSERT INTO "device_type" VALUES (3,NULL,'access_control');
INSERT INTO "association" VALUES (1,'Customer');
INSERT INTO "association" VALUES (2,'Manager');
INSERT INTO "association" VALUES (3,'Employee');
INSERT INTO "association" VALUES (4,'Owner');
COMMIT;
