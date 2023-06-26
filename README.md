# Big Data Training

As the name suggest, big data is type of data which is enormous in size and cannot be handeled using traditional file handeling systems.

## Big Data V/s Small Data

| Big Data | Small Data |
| ----- | ----- |
| Mostly unstructured | Mostly structured |
| Stored in petabyte, exabyte, zettabyte etc. | Stored in Mb, Gb and Tb |
| Increases exponentially | Increases gradually |
| Globally present and distributed | Locally present | 
| Multi node clusters are used | Single node clusters are used |

---

## Hadoop

Hadoop is an open source framework that is used to efficiently store and process big data. 2 components of hadoop are:
1. **HDFS:** HDFS stands for **Hadoop Distributed File System**. It is the primary storage system of hadoop. HDFS creates multiple replicas of each data block and distributes them on computers throughout a cluster to enable reliable and rapid access. 
2. **MAPREDUCE:** Hadoop MapReduce is the processing unit of Hadoop. In the MapReduce approach, the processing is done at the slave nodes, and the final result is sent to the master node.

[***More information on HDFS and YARN are present here.***](https://www.simplilearn.com/tutorials/hadoop-tutorial/what-is-hadoop)

[***MAPREDUCE PROGRAMMING USING PYTHON***](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce/MapReduce_Python)
[***MAPREDUCE PROGRAMMING USING JAVA***](https://github.com/Raveesh1505/BigData-Training/tree/main/MapReduce_Java)

--- 

## APACHE PIG

Pig is a platform for analyzing large data sets that consists of a high-level language for express­ing data analysis programs, coupled with infrastructure for evaluating these programs.

### PIG LATIN LANGUAGE

The Pig Latin is a data flow language used by Apache Pig to analyze the data in Hadoop. It is a textual language that abstracts the programming from the Java MapReduce idiom into a notation.

