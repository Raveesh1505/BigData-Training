/*
    GROCERIES SAMPLE PIG PROGRAM
    Load the data, sort the data based on expiry data.  
*/

GROCERIES_DATA = LOAD '//Apache_Pig/groceries_sample/groceries.csv' USING PigStorage(',') AS (ORDER_ID, LOCATION, PRODUCT, EXPIRY, QUANTITY);
DUMP GROCERIES_DATA;
DESCRIBE GROCERIES_DATA;

/* SORTING DATA  BASED ON EXPIRY 
    output to be saved in a different folder named expire_sort
*/

EXPIRY_SORT = ORDER GROCERIES_DATA BY EXPIRY ASC;
STORE EXPIRY_SORT INTO '/groceries_sample/expiry_sort' USING PigStorage(',');