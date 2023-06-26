/*
    PIG LATIN SCRIPT TO FIND WORD COUNT
*/

words = load '/Users/raveeshyadav/Hadoop-Training/pig/input_pig.txt' AS (line:chararray);
tokens = FOREACH words GENERATE flatten(TOKENIZE(line)) AS token:chararray;
wordsgrp = group tokens by token;
countwords = FOREACH wordsgrp generate group,COUNT(tokens);
ordered = order countwords by $0;
dump ordered;