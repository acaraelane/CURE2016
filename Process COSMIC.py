
import csv
import string

pos = string.uppercase.index('N')
gen = string.uppercase.index('E')

pcc = open('prostatecancermutations.csv','r')

pcc_data = []

with open('prostatecancermutations.csv', 'r') as testbedc:
    reader = csv.reader(testbedc, delimiter=',')
    next(reader)
    for row in reader:
        addon = ['chr' + row[pos].rpartition('-')[0].rpartition(':')[0],
                         row[pos].rpartition('-')[0].rpartition(':')[2],
                         row[pos].rpartition('-')[2],row[gen]]
        pcc_data.append(addon)

with open('pcgexonsites.csv','wb') as h:
    writer = csv.writer(h,delimiter = '\t')
    for line in pcc_data:
        writer.writerow(line)

    print pcc_data

pcc.close()

