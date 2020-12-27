-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gRfKyo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE IF NOT EXISTS "census_state" (
    "state_id" char(2)   NOT NULL,
    "state_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_census_state" PRIMARY KEY (
        "state_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_county" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_census_county" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_age" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
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
    CONSTRAINT "pk_census_age" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_citizenship" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "citizenship_total_population" int   NOT NULL,
    "citizenship_native_born" int   NOT NULL,
    "citizenship_foreign_born" int   NOT NULL,
    CONSTRAINT "pk_census_citizenship" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_disability" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "disability_population_under_18" int   NOT NULL,
    "disability_population_18-64" int   NOT NULL,
    "disability_population_65_and_over" int   NOT NULL,
    "disability_under_18_with_disability" int   NOT NULL,
    "disability_18-64_with_disability" int   NOT NULL,
    "disability_64_and_over_with_disability" int   NOT NULL,
    CONSTRAINT "pk_census_disability" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_education" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "%_eduction_population_25_and_over_less_than_9th_grade" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_9th-12th_no_diploma" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_high_school_graduate" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_some_college_no_degree" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_associates_degree" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_bachelors_degree" decimal(3)   NOT NULL,
    "%_eduction_population_25_and_over_graduate_or_professional_degree" decimal(3)   NOT NULL,
    CONSTRAINT "pk_census_education" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_employment" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "employment_16_and_over_in_labor_force" int   NOT NULL,
    "employment_employed" int   NOT NULL,
    "employment_unemployed" int   NOT NULL,
    "employment_not_in_labor_force" int   NOT NULL,
    "employment_%_unemployment_rate" decimal(3)   NOT NULL,
    CONSTRAINT "pk_census_employment" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_family_structure" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "family_structure_hh_total" int   NOT NULL,
    "family_structure_hh_with_one_or_more_under_18" int   NOT NULL,
    "family_structure_hh_with_none_under_18" int   NOT NULL,
    CONSTRAINT "pk_census_family_structure" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_income" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
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
    CONSTRAINT "pk_census_income" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_industry" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
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
    CONSTRAINT "pk_census_industry" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_internet_access" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "hh_with_computer_and_internet_total" int   NOT NULL,
    "hh_with_computer" int   NOT NULL,
    "hh_with_bb_internet_subscription" int   NOT NULL,
    CONSTRAINT "pk_census_internet_access" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_occupation" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "occupation_population_16_and_over_total" int   NOT NULL,
    "occupation_management_business_science_and_arts" int   NOT NULL,
    "occupation_service" int   NOT NULL,
    "occupation_sales_and_office" int   NOT NULL,
    "occupation_natural_resources_construction_and_maintenance" int   NOT NULL,
    "occupation_production_transporation_and_material_moving" int   NOT NULL,
    CONSTRAINT "pk_census_occupation" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_population" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "population" int   NOT NULL,
    CONSTRAINT "pk_census_population" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_race" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
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
    CONSTRAINT "pk_census_race" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "census_sex" (
    "geo_id" char(14)   NOT NULL,
    "state_id" char(2)   NOT NULL,
    "county_id" char(3)   NOT NULL,
    "county_name" varchar(50)   NOT NULL,
    "sex_total_men" int   NOT NULL,
    "sex_total_women" int   NOT NULL,
    CONSTRAINT "pk_census_sex" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "fcc_ml_by_county" (
    "geo_id" char(14)   NOT NULL,
    "dl_speed" decimal(1)   NOT NULL,
    "has_0" int   NOT NULL,
    "has_1" int   NOT NULL,
    "has_2" int   NOT NULL,
    "has_3more" int   NOT NULL,
    "has_access" int   NOT NULL,
    "total_pop" int   NOT NULL,
    "urban_pop" int   NOT NULL,
    "rural_pop" int   NOT NULL,
    "total_access_pop_percent" decimal(3)   NOT NULL,
    "urban_access_pop_percent" decimal(3)   NOT NULL,
    "rural_access_pop_percent" decimal(3)   NOT NULL,
    CONSTRAINT "pk_fcc_ml_by_county" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "fcc_ml_summary_final" (
    "geo_id" char(14)   NOT NULL,
    "dl_speed_100_ua" decimal(1)   NOT NULL,
    "dl_speed_level_up" decimal(1)   NOT NULL,
    "level_up_access_pop_percent" decimal(20)   NOT NULL,
    CONSTRAINT "pk_fcc_ml_summary_final" PRIMARY KEY (
        "geo_id"
     )
);

CREATE TABLE IF NOT EXISTS "urban_rural_by_county" (
    "geo_id" char(14)   NOT NULL,
    "urban_rural" varchar(5)   NOT NULL,
    "total_pop" int   NOT NULL,
    CONSTRAINT "pk_urban_rural_by_county" PRIMARY KEY (
        "geo_id"
     )
);

ALTER TABLE "census_county" ADD CONSTRAINT "fk_census_county_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_age" ADD CONSTRAINT "fk_census_age_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_age" ADD CONSTRAINT "fk_census_age_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_citizenship" ADD CONSTRAINT "fk_census_citizenship_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_citizenship" ADD CONSTRAINT "fk_census_citizenship_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_disability" ADD CONSTRAINT "fk_census_disability_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_disability" ADD CONSTRAINT "fk_census_disability_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_education" ADD CONSTRAINT "fk_census_education_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_education" ADD CONSTRAINT "fk_census_education_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_employment" ADD CONSTRAINT "fk_census_employment_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_employment" ADD CONSTRAINT "fk_census_employment_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_family_structure" ADD CONSTRAINT "fk_census_family_structure_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_family_structure" ADD CONSTRAINT "fk_census_family_structure_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_income" ADD CONSTRAINT "fk_census_income_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_income" ADD CONSTRAINT "fk_census_income_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_industry" ADD CONSTRAINT "fk_census_industry_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_industry" ADD CONSTRAINT "fk_census_industry_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_internet_access" ADD CONSTRAINT "fk_census_internet_access_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_internet_access" ADD CONSTRAINT "fk_census_internet_access_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_occupation" ADD CONSTRAINT "fk_census_occupation_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_occupation" ADD CONSTRAINT "fk_census_occupation_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_population" ADD CONSTRAINT "fk_census_population_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_population" ADD CONSTRAINT "fk_census_population_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_race" ADD CONSTRAINT "fk_census_race_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_race" ADD CONSTRAINT "fk_census_race_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "census_sex" ADD CONSTRAINT "fk_census_sex_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "census_sex" ADD CONSTRAINT "fk_census_sex_state_id" FOREIGN KEY("state_id")
REFERENCES "census_state" ("state_id");

ALTER TABLE "fcc_ml_by_county" ADD CONSTRAINT "fk_fcc_ml_by_county_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "fcc_ml_summary_final" ADD CONSTRAINT "fk_fcc_ml_summary_final_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

ALTER TABLE "urban_rural_by_county" ADD CONSTRAINT "fk_urban_rural_by_county_geo_id" FOREIGN KEY("geo_id")
REFERENCES "census_county" ("geo_id");

