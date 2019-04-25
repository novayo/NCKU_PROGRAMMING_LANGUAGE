import matplotlib.pyplot as plt
import sys
import re
import urllib.request

##### get particular html #####
original_Author = sys.argv[1]
author = sys.argv[1]
if len(sys.argv) is not 2:
    for inputAuthor in sys.argv[2:]:
        author = author + "+" + inputAuthor
        original_Author = original_Author + " " + inputAuthor
url = "https://arxiv.org/search/?query=" + author + "&searchtype=author&abstracts=show&order=-announced_date_first&size=50"
content = urllib.request.urlopen(url)
html_str = content.read().decode("utf-8") # get all html





##### if have next page #####
is_Next_Page = False
target_Url = []
try:
    is_Next_Page = True
    nextPage_Pattarn = "pagination-list[\s\S]*?</ul>"
    nextPage_Result = re.findall(nextPage_Pattarn, html_str)
except:
    is_Next_Page = False

if is_Next_Page is True:
    ## get url
    tmp_Result = nextPage_Result[0].split('pagination-list">')[1].split("</a>")[0:-1] #[0:-1] get rid of the last useless data
    for tmp in tmp_Result:
        tmp_Url = tmp.split('<a href=')[1].split("class")[0].strip()[1:-1]
        target_Url.append("https://arxiv.org" + tmp_Url.replace("amp;", ''))
else:
    target_Url.append(url)





data_Problem_1 = {}
data_Problem_2 = {}
print("[ Author: " + author + " ]")
for tmp_Url in target_Url:
    ## get next page url
    if is_Next_Page is True:
        content = urllib.request.urlopen(tmp_Url)
        html_str = content.read().decode("utf-8")  # get all html

    pattarn = 'Authors:</span>[\s\S]*?</li>'  # get Name of author
    result = re.findall(pattarn, html_str)

    for r1 in result:
        name = r1.split('</p>')[0]
        name = name.split('</a>')[:-1]

        ## check if the source is right author
        tmp_Name_List = []
        for n in name:
            tmp_Name = n.split('">')[1].strip()
            tmp_Name_List.append(tmp_Name)

        if not(original_Author in tmp_Name_List): continue # if not the right author

        ## get problem 1 data
        pattarn1 = "originally announced</span>[\s\S]*?</p>"  # get year
        result1 = re.findall(pattarn1, r1)
        for r2 in result1:
            year = r2.split('</span>')[1].split(".")[0].strip().split(" ")[1].strip()

            if year in data_Problem_1:
                data_Problem_1[year] = data_Problem_1[year] + 1
            else:
                data_Problem_1[year] = 1


        ## get problem 2 data
        for nn in tmp_Name_List:
            if nn in data_Problem_2:
                data_Problem_2[nn] = data_Problem_2[nn] + 1
            else:
                data_Problem_2[nn] = 1

## Print Problem 2
for data in sorted(data_Problem_2):
    if not(data == original_Author):
        print("[" + data + "]: " + str(data_Problem_2[data]) + " times")

## Print Problem 1
plt.bar(sorted(data_Problem_1.keys()), data_Problem_1.values())
plt.show()


'''
    ## get all book name
    pattarn = "title is-5 mathjax[\s\S]*?</p>" 
    result = re.findall(pattarn, html_str)

    for r in result:
        title = r.split('title is-5 mathjax">')[1].split("</p>")[0].strip() # strip is get rid of beginning and end of string(default white ch)
        print(title)
'''