import csv
import string

pcm = open('cprep.csv','r')

pos = [i for i, p in enumerate(list(string.lowercase)) if 'c' in p or 'j' in p or 'k' in p]

datalist = []

with open('cprep.csv','r') as h:
    reader = csv.reader(h, delimiter=',')
    next(reader)
    for row in reader:
        row = [row[0],row[1].rsplit(","),row[2].rsplit(",")]
        row[1].pop()
        row[2].pop()
        #datalist.append(makelist)
        for i, val in enumerate(row[2]):
            add = [row[0],row[1][i], row[2][i]]
            datalist.append(add)
    datalist = datalist[:705293]

    with open('ucscexonsites.csv','wb') as testbedf:
        writer = csv.writer(testbedf, delimiter = '\t')
        for line in datalist:
            writer.writerow(line)

pcm.close()

