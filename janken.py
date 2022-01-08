import itertools
import random

all = list(itertools.combinations('gcp', 1))
u_dict = { 'g':'✊', 'c':'✌', 'p':'✋' }

rand = random.choice(all)
for x in rand:
    for word, read in u_dict.items():
        x = x.replace(word, read)
    print(x, end='')
print()
