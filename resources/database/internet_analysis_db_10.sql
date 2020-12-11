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

CREATE TABLE "age" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "age_under_5" int   NOT NULL,
    "age_5-9" int   NOT NULL,
    "age_10-14" int   NOT NULL,
    "age_15-19" int   NOT NULL,
    "age_20-24" int   NOT NULL,
    "age_25-34" int   NOT NULL,
    "age_35-44" int   NOT NULL,
    "age_45-54" int   NOT NULL,
    "age_55-59" int   NOT NULL,
    "age_60-64" int   NOT NULL,
    "age_65-74" int   NOT NULL,
    "age_75-84" int   NOT NULL,
    "age_85_and_over" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_age" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "citizenship" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "citizenship_total_population" int   NOT NULL,
    "citizenship_native_born" int   NOT NULL,
    "citizenship_foreign_born" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_citizenship" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "disability" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "disability_population_under_18" int   NOT NULL,
    "disability_population_18-64" int   NOT NULL,
    "disability_population_65_and_over" int   NOT NULL,
    "disability_under_18_with_disability" int   NOT NULL,
    "disability_18-64_with_disability" int   NOT NULL,
    "disability_64_and_over_with_disability" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_disability" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "education" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "%_eduction_population_25_and_over_less_than_9th_grade" int   NOT NULL,
    "%_eduction_population_25_and_over_9th-12th_no_diploma" int   NOT NULL,
    "%_eduction_population_25_and_over_high_school_graduate" int   NOT NULL,
    "%_eduction_population_25_and_over_some_college_no_degree" int   NOT NULL,
    "%_eduction_population_25_and_over_associates_degree" int   NOT NULL,
    "%_eduction_population_25_and_over_bachelors_degree" int   NOT NULL,
    "%_eduction_population_25_and_over_graduate_or_professional_degree" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_education" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "employment" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "employment_16_and_over_in_labor_force" int   NOT NULL,
    "employment_employed" int   NOT NULL,
    "employment_unemployed" int   NOT NULL,
    "employment_not_in_labor_force" int   NOT NULL,
    "employment_%_unemployment_rate" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_employment" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "family_structure" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "family_structure_hh_total" int   NOT NULL,
    "family_structure_hh_with_one_or_more_under_18" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_family_structure" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "income" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "hh_with_income_total" int   NOT NULL,
    "hh_with_income_less_than_10000" int   NOT NULL,
    "hh_with_income_10000-14999" int   NOT NULL,
    "hh_with_income_15000-24999" int   NOT NULL,
    "hh_with_income_25000-34999" int   NOT NULL,
    "hh_with_income_35000-49999" int   NOT NULL,
    "hh_with_income_50000-74999" int   NOT NULL,
    "hh_with_income_75000-99999" int   NOT NULL,
    "hh_with_income_100000-149999" int   NOT NULL,
    "hh_with_income_150000-199999" int   NOT NULL,
    "hh_with_income_200000_and_greater" int   NOT NULL,
    "hh_median_income" int   NOT NULL,
    "hh_mean_income" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_income" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE "industry" (
    "geo_id" string   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "industry_agriculture_forestry_fishing_and_hunting_and_mining" int   NOT NULL,
    "industry_construction" int   NOT NULL,
    "industry_manufacturing" int   NOT NULL,
    "industry_wholesale_trade" int   NOT NULL,
    "industry_retail_trade" int   NOT NULL,
    "industry_transportation_and_warehousing_and_utilities" int   NOT NULL,
    "industry_information" int   NOT NULL,
    "industry_finance_and_insurance_real_estate_and_rental_and_leasing" int   NOT NULL,
    "industry_professional_scientific_management_administrative_and_waste_management_services" int   NOT NULL,
    "industry_educational_services_health_care_and_social_assistance" int   NOT NULL,
    "industry_arts_entertainment_recreation_accommodation_and_food_services" int   NOT NULL,
    "industry_other_services_except_public_administration" int   NOT NULL,
    "industry_public_administration" int   NOT NULL,
    "state_id" string   NOT NULL,
    "county_id" string   NOT NULL,
    CONSTRAINT "pk_industry" PRIMARY KEY (
        "geo_id"
     )
);

-- Free plan table limit reached. SUBSCRIBE for more.



ALTER TABLE "age" ADD CONSTRAINT "fk_age_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "age" ADD CONSTRAINT "fk_age_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "citizenship" ADD CONSTRAINT "fk_citizenship_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "citizenship" ADD CONSTRAINT "fk_citizenship_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "disability" ADD CONSTRAINT "fk_disability_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "disability" ADD CONSTRAINT "fk_disability_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "education" ADD CONSTRAINT "fk_education_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "education" ADD CONSTRAINT "fk_education_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "employment" ADD CONSTRAINT "fk_employment_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "employment" ADD CONSTRAINT "fk_employment_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "family_structure" ADD CONSTRAINT "fk_family_structure_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "family_structure" ADD CONSTRAINT "fk_family_structure_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "income" ADD CONSTRAINT "fk_income_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "income" ADD CONSTRAINT "fk_income_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "industry" ADD CONSTRAINT "fk_industry_geo_id" FOREIGN KEY("geo_id")
REFERENCES "county" ("geo_id");

ALTER TABLE "industry" ADD CONSTRAINT "fk_industry_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

-- Free plan table limit reached. SUBSCRIBE for more.



-- Free plan table limit reached. SUBSCRIBE for more.



