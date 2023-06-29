/* TITANIC DATASET ANALYSIS */

raw_input = LOAD '/Apache_Pig/titanic/titanic_data.txt' USING PigStorage(',');
titanic_data = FOREACH raw_input GENERATE (int) $0 AS PAX_ID, (int) $1 AS SURVIVED, (chararray) $3 AS NAME, (chararray) $4 AS SEX, (int) $5 AS AGE;

/* How many passengers in total */
total_pax_g = GROUP titanic_data ALL;
total_pax = FOREACH total_pax_g GENERATE COUNT(titanic_data);

/* How many survivers */
survivers_f = FILTER titanic_data BY SURVIVED == 1;
survivers_g = GROUP survivers_f ALL;
survivers = FOREACH survivers_g GENERATE COUNT(survivers_f);

/* How many male survivers */
survivers_male = FILTER survivers_f BY SEX == 'male';
survived_male_group = GROUP survivers_male ALL;
survived_male = FOREACH survived_male_group GENERATE COUNT(survivers_male);

/* Average male age of died pax */
ns_pax = FILTER titanic_data BY SURVIVED == 0;
ns_male = FILTER ns_pax BY SEX == 'male';
ns_male_g = GROUP ns_male ALL;
avg_male_age_ns = FOREACH ns_male_g GENERATE AVG(ns_male.AGE);

/* Average female age of died pax */
ns_pax = FILTER titanic_data BY SURVIVED == 0;
ns_female = FILTER ns_pax BY SEX == 'female';
ns_female_g = GROUP ns_female ALL;
avg_female_age_ns = FOREACH ns_female_g GENERATE AVG(ns_female.AGE);

/* Dumping all the result */
results = UNION total_pax, survivers, survived_male, avg_male_age_ns, avg_female_age_ns;
dump results