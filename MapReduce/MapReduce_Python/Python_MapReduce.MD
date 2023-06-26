# MapReduce Programing using Python

MapReduce programs can be written and executed using Python also eventhough the hadoop framework is written in Java. Using hadoop streaming, we can stream any python mapreduce program on hadoop platform.

For Python, unlike Java we will have to create 2 different files for mapper and reducer. Considering the programing aspect, Python mapreduce programs are easier than Java. Python uses standard input and output (stdin and stdout) to read and write the input and output files. These can be accessed using sys library available in Python.
___
## **Example Programs**

1. **Word Count:** The task in this program is to count the frequency of every word acailable in the input file. [Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MapReduce/word_count)

2. **Odd Even:** The task of this program is to count the number of odd and even numbers in a given input file and also sum odd and even numbers indivisually. [Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MapReduce/odd_even)

- **Running the programs**

1. **Running both porgrams locally:** Every code conists of a `test.sh` file with them. To run the files locally, run the `test.sh` script. On running, it will require you to provide complete file address of input file, mapper file and reducer file.

2. **Running on hadoop:** For running on hadoop, start all the hadoop daemons and load the test data file on hdfs. After loading, run the following commands:

- **For MacOS/Linux:** `hadoop jar {hadoop-streaming-3.3.x.jar file address} -file {mapper_file_address} -mapper mapper.py -file {reducer_file_address} -reducer reducer.py -input {hdfs_address_of_test_file} -output {hdfs_output_location}`

- **For windows:** `hadoop jar "{hadoop-streaming-3.3.x.jar file address}" -file {mapper_file_address} -mapper "python mapper.py" -file {reducer_file_address} -reducer "python reducer.py" -input {hdfs_address_of_test_file} -output {hdfs_output_location}`
___
[***Hadoop Streaming JAR files can be downloaded from here if not available***](https://jar-download.com/artifacts/org.apache.hadoop/hadoop-streaming)