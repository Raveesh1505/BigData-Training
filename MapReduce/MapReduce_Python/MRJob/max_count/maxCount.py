"""
Word Count program using MRJob
"""

from mrjob.job import MRJob
from mrjob.step import MRStep

class WordCount(MRJob):
    def steps(self):
        return [
            MRStep(mapper=self.mapper, reducer=self.reducer1),
            MRStep(reducer=self.reducer2)
        ]
    
    def mapper(self, _, line):
        line = line.strip()
        words = line.split()
        for word in words:
            yield (word.lower(), 1)

    def reducer1(self, word, count):
        yield None, (word, sum(count))
    
    def reducer2(self, _, wordCount):
        
        yield max(wordCount)

if __name__ == "__main__":
    WordCount.run()