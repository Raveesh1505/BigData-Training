/*
    LOG FILE SAMPLE PROGRAM
    Read and dump analysis performed on the dlog file
*/

log = load '/Apache_Pig/sample_log/sample.log'; 
LEVELS = foreach log generate REGEX_EXTRACT($0, '(TRACE|DEBUG|INFO|WARN|ERROR|FATAL)', 1) as LOGLEVEL;
dump LEVELS;

/* Filter data that contains values */
FILTEREDLEVELS = FILTER LEVELS by LOGLEVEL is not null;
dump FILTEREDLEVELS;
GROUPEDLEVELS = GROUP FILTEREDLEVELS by LOGLEVEL;

/* Dump freequency of each type of log */
FREQUENCIES = foreach GROUPEDLEVELS generate group as LOGLEVEL, COUNT(FILTEREDLEVELS.LOGLEVEL) as COUNT;
dump FREQUENCIES;
RESULT = order FREQUENCIES by COUNT desc;
dump RESULT;