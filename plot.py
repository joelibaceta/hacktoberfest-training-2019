import csv

from matplotlib import pyplot as plt, cm
import numpy as np

from random import shuffle



data = [{}, {}, {}, {}, {}]


def export_pie_char(i):

    slices = [1,2,3] * 4 + [20, 25, 30] * 2
    shuffle(slices)
 
    cmap = plt.cm.tab20c
    colors = cmap(np.linspace(0., 1., len(slices)))

    labels = list(data[i].keys())
    sizes = list(data[i].values())

    plt.pie(sizes, labels=labels, colors=colors)

    plt.axis('equal')
    plt.savefig('output/pie_' + str(i) + '.png')

    plt.clf()
    
def export_age_bar():
    dict2 = {}  
    for key in sorted(data[4].keys()):
        if not key in dict2:    
            dict2[key] = data[4][key]
    objects = list(dict2.keys()) 
    values = dict2.values()
 
    plt.bar(objects, values)
    plt.savefig('output/bar.png')
    plt.clf()


with open('survey.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        for x in range(0, 5):

            value = row[x].strip()

            if (data[x] == None):
                data[x] = {}

            if (data[x].get(value) == None):
                data[x][value] = 1
            else:
                data[x][value] = data[x][value] + 1 
    
    export_pie_char(0) # Languages
    export_pie_char(1) # OSs
    export_pie_char(2) # IDEs
    export_pie_char(3) # Countries
    export_age_bar()

