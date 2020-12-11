-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/lXBUuh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state" (
    "state_id" string   NOT NULL,
    "state_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY (
        "state_id"
     )
);

CREATE TABLE "county" (
    "geo_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_county" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "internet" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "hh_with_computer_and_internet_total" int   NOT NULL,
    "hh_with_computer" int   NOT NULL,
    "hh_with_bb_internet_subscription" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_internet" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "occupation" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "occupation_population_16_and_over_total" int   NOT NULL,
    "occupation_management_business_science_and_arts" int   NOT NULL,
    "occupation_service" int   NOT NULL,
    "occupation_sales_and_office" int   NOT NULL,
    "occupation_natural_resources_construction_and_maintenance" int   NOT NULL,
    "occupation_production_transporation_and_material_moving" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_occupation" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "population" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "population" int   NOT NULL,
    "state_id" int   NOT NULL,
    "county_id" int   NOT NULL,
    CONSTRAINT "pk_population" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "race" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "race_total_population" int   NOT NULL,
    "race_hispanic_or_latino" int   NOT NULL,
    "race_not_hispanic_or_latino" int   NOT NULL,
    "race_american_indian_and_alaska_native" int   NOT NULL,
    "race_asian" int   NOT NULL,
    "race_black_or_african_american" int   NOT NULL,
    "race_native_hawaiian_and_other_pacific_islander" int   NOT NULL,
    "race_some_other_race" int   NOT NULL,
    "race_two_or_more" int   NOT NULL,
    "race_two_or_more_excluding_some_ther_and_three_or_more" int   NOT NULL,
    "race_two_or_more_including_some_other" int   NOT NULL,
    "race_white_alone" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_race" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "sex" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "sex_total_men" int   NOT NULL,
    "sex_total_women" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_sex" PRIMARY KEY (
        "geo_id"
     )
);

ALTER TABLE "internet" ADD CONSTRAINT "fk_internet_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "internet" ADD CONSTRAINT "fk_internet_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "occupation" ADD CONSTRAINT "fk_occupation_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "occupation" ADD CONSTRAINT "fk_occupation_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "race" ADD CONSTRAINT "fk_race_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "race" ADD CONSTRAINT "fk_race_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "sex" ADD CONSTRAINT "fk_sex_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "sex" ADD CONSTRAINT "fk_sex_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

