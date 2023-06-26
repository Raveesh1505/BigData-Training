"""
Word Count program using MRJob
"""

from mrjob.job import MRJob

class WordCount(MRJob):
    def mapper(self, _, line):
        line = line.strip()
        words = line.split()
        for word in words:
            yield (word.lower(), 1)

    def reducer (self, word, count):
        yield (word, sum(count))

if __name__ == "__main__":
    WordCount.run()