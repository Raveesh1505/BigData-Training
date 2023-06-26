# MapReduce Programing using Java

To execute a MapReduce program in java, we have to make 3 files each of mapper, reducer and runner class. Configrations have to be made accordingly. A [**Maven Project**](https://code.visualstudio.com/docs/java/java-build) can be maade for ease. This helps in creation of the `.jar` file of our code which can be executed on hadoop.

## Running the code on hadoop

After starting all hadoop daemons, load the data file on HDFS using `hdfs dfs -put` command. Once the file is loaded run the following command -> `hadoop <jar_file_address> <runner_class> <input_data_address> <output_address>`.

- Example of run command for given program: 
`hadoop jar MapReduce/MapReduce_Java/word_count/target/word_count-1.jar hadoop.projects.WC_Runner /input/input_data.txt /outputData/output`