# MapReduce Programing using Python

MapReduce programs can be written and executed using Python also eventhough the hadoop framework is written in Java. Using hadoop streaming, we can stream any python mapreduce program on hadoop platform.

For Python, unlike Java we will have to create 2 different files for mapper and reducer. Considering the programing aspect, Python mapreduce programs are easier than Java. Python uses standard input and output (stdin and stdout) to read and write the input and output files. These can be accessed using sys library available in Python.

- **MRJob**

MRJob is python library that helps running mapreduce programs. The library helps you write mapper and reducer programs together in a single program. Using MRJob we can also write mutiple mapper and reducer programs in a single porgram.

___
## **Example Programs**

1. **Word Count:** The task in this program is to count the frequency of every word acailable in the input file. 
- [ MapReduce Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MapReduce/word_count)
- [MRJob Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MRJob/word_count)

2. **Odd Even:** The task of this program is to count the number of odd and even numbers in a given input file and also sum odd and even numbers indivisually.
- [Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MapReduce/odd_even)

3. **Max Count:** The task of this program is to return the maximum occuring word in a porgram.
- [Code can be accessed here.](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python/MRJob/max_count)
____

### **Running the programs**

1. **Running both porgrams locally:** Every code conists of a `test.sh` file with them. To run the files locally, run the `test.sh` script. On running, it will require you to provide complete file address of input file, mapper file and reducer file.

2. **Running on hadoop:** For running on hadoop, start all the hadoop daemons and load the test data file on hdfs. After loading, run the following commands:

- **For MacOS/Linux:** `hadoop jar {hadoop-streaming-3.3.x.jar file address} -file {mapper_file_address} -mapper mapper.py -file {reducer_file_address} -reducer reducer.py -input {hdfs_address_of_test_file} -output {hdfs_output_location}`

- **For windows:** `hadoop jar "{hadoop-streaming-3.3.x.jar file address}" -file {mapper_file_address} -mapper "python mapper.py" -file {reducer_file_address} -reducer "python reducer.py" -input {hdfs_address_of_test_file} -output {hdfs_output_location}`

- **For running MRJob programs:** `hadoop jar {hadoop-streaming-3.3.x.jar file address} -file {program_file_address} -input {hdfs_address_of_test_file} -output {hdfs_output_location}`

___
- [***Hadoop Streaming JAR files can be downloaded from here if not available locally.***](https://jar-download.com/artifacts/org.apache.hadoop/hadoop-streaming)

- ***Run `pip install mrjob` on terminal/cmd to install MRJob library.***