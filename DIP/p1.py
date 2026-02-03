import pandas as pd
#list variables of each college that we'll use as values in a dictionary.
cs = []
cba = []
chmt = []

#list variable for college "years"  to include.
ind = []


#looping for data entry of years
while True:
    years = input("Enter year:")
#Append the years inside the ind list variable    
    ind.append(years)
    cont = input("Would you like to add another? Y/N: ").lower()
    if cont == "y":
        continue
    else:
        break

#looping for choosing among three colleges and entry of enrollment data
while True:
    col = input(f"Choose college: \nCS \nCBA \nCHMT \n::: ").lower()
    enr = int(input("Enter number of enrolees:"))
#checking of which college was chosen for the enrollment data to append.    
    if col == "cs":
        cs.append(enr)
    elif col == "cba":
        cba.append(enr)
    elif col == "chmt":
        chmt.append(enr)
    else:
        print("Invalid Input")
    choice = input("Would you like to add another entry? Y/N: ").lower()
    if choice == "y":
        continue
    else:
        break    

#After all data are completed, each college list variables are to be used as values in the dictionary.
college = {"cs":cs,"cba":cba,"chmt":chmt}
total = 0
#The output for this outer loop are the values only of the dictionary (which are the list) and not the values inside of each list.
for x in college.values():
#This inner loop will iterate the values inside of each list, provided by the outer loop so we can sum up all values.    
    for y in x:
        total += y

#This is where the pandas get in
#DataFrame is a built in function from the pandas library used for organizing data. 
#Parameters are (college, index = ind)
#Pandas are often incorporated with dictionaries.
#In this case, college dictionary was used to get the keys as (Column Names) and values as data per row for each key.
#index was also used to indicate the name for each row.
#In this case, we used the values inside of the list variable "ind" to use as row names.
#================
#    REMEMBER 
#================
#The number of items used for index must match the number of data for each column or else you'll get an error.
#Lets say, CS has 3 enrollment data(1500,2500,2300), CBA has also 3, and CHMT also has 3.
coldata = pd.DataFrame(college, index = ind)

#This part is to save the output of this program inside a text file.
filename = input("Enter file name:")    
f = open(f"{filename}.txt","w")
f.write(f"{coldata} \n \nTotal Enrolees: {total}")
f.close()
print("File saved!")