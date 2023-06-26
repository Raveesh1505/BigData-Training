# APACHE PIG

Pig is a platform for analyzing large data sets that consists of a high-level language for express­ing data analysis programs, coupled with infrastructure for evaluating these programs.

### PIG LATIN LANGUAGE

The Pig Latin is a data flow language used by Apache Pig to analyze the data in Hadoop. It is a textual language that abstracts the programming from the Java MapReduce idiom into a notation.

To run pig scripts, use the following command: 
1. **Run Pig locally:** `pig -x local pig_script_address`
2. **Run Pig on hadoop (mapreduce mode):** `pig -x mapreduce pig_script_address`

*While running the pig script on mapreduce mode, make sure all the hadoop daemons are started on the system*

---

## **Example Programs**

1. **Word Count:** The task in this program is to count the frequency of every word acailable in the input file.
- [Pig Script for the following can be found here.](https://github.com/Raveesh1505/BigData-Training/tree/main/Apache_Pig/word_count)