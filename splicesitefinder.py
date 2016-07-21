import csv

pcm = open('ucscexonsites.csv','r')

datalist = []

with open('ucscexonsites.csv','r') as h:
    reader = csv.reader(h, delimiter='\t')
    #next(reader)
    for row in reader:
        row = [row[0],row[1],row[2]]
        add = [row[0],int(float(row[1]) - 4), int(float(row[1]) + 5)]
        datalist.append(add)
        add2 = [row[0],int(float(row[2]) - 5), int(float(row[2]) + 5)]
        datalist.append(add2)


    with open('ucscsusplicesites.csv','wb') as testbedf:
        writer = csv.writer(testbedf, delimiter = ",")
        for list in datalist:
            writer.writerow(list)

pcm.close()