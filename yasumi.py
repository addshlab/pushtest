import itertools
import random

all = list(itertools.combinations('月火木金', 3))

rand = random.choice(all)

for x in rand:
    print(x, end='')
print()
