
#("Hello World")

a=5
z="Hello"

print(a);
print(z);

#Data types
b=5
print(type(b))

b=5.2
print(type(b))

#Assignment opeartors

x=2
x += 10;



b=5j
print(type(b))

b = ["computer", "science"]
print(type(b))

b = {"computer", "science"}
print(type(b))

b = {"computer" : "Ravi", "Roll" : "14"}
print(type(b))


#Python type casting

a = int(5.2)
print(a)
a = float(10)
print(a)
a = str(10.3)
print(a)

#Python string operations

x="Hello Python"
print(x)
print(x[0])
print(x[1])

x1="python learning"
for a in x1:
    print(a)

#Length of string
adharCardNo = "123456789"
print("My Adhar number is" + str(len(adharCardNo)))


#Checking partial string to complete one

txt = "Today is day1 and learning python basics"
search_text = "python123"
print(search_text in txt)

#python operations
#python airthmetic
print(10+10)
print(10*10)
print(7%3)


#Python IF else

x=8
y=1

if x > 2 and y < 3:
    print(" x is greater")

m = 5
n = 5

if m > n:
    print(" m is greater than m")
elif m == n:
    print("m and n are equal")
else:
    print("m is lesser than m")



 #one liner if stattement

n = 5
m = 4
if n > m: print("n is greater than m")


cat_score = 98
gate_score = 99
my_score = 100
if my_score > gate_score and my_score > cat_score:
    print("I can go to IIAT")

    # Use while loop

a = 1
while a < 6:
    a += 1
    print(a)
    if a == 6:
        break;

# For loop

cars = {"c1", "c2", "c3"}
for i in cars:
    print(i)

#looping through string


text = "pooja"
for i in text:
    print(i)






cars = ["c1", "c2", "c3"]
for i in cars:
    print(i)
    if i == "c2":
        break;

for i in range(10):
    print(i)

for i in range(5, 10):
    print(i)

for i in range(5, 10, 2):
    print(i)

#python list

cars =["toyoto", "bmw", "gm", "maruthi"]
print(cars)

#print all the items
for i in cars:
    print(i)

#get the list count
print(len(cars))

#list type
print(type(cars))

#getting the sigle item
print(cars[0])

###how to change item present in the list

cars =["toyoto", "bmw", "gm", "maruthi"]
print(cars)
cars[1]="t1"
print(cars)

#how to change the range of item value

cars[0:2] = ["MG", "AUDI"]
print(cars)

#add new item to the list
cars.append("eicher")
print(cars)

#removing item from the list
cars.remove("eicher")
print(cars)

#sorting  a loop

rollNumber = [45, 46, 23, 67, 56, 28]
rollNumber.sort()
print(rollNumber)

#tuples in python

cars =["toyoto", "bmw", "gm", "maruthi"]

print(cars)
print(len(cars))

#How to change value of tuple

mycars = list(cars)
mycars[2] = "bullet"

cars = tuple(mycars)
print(cars)

#How to add value of tuple

mycars = list(cars)
mycars.append("Cycle")

cars = tuple(mycars)
print(cars)

#looping through tupple

for x in cars:
    print(x)

#Python Distionary

mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"
}

#How to print a dictioanry

print(mycar)

#how to get dictionary item
print(mycar["State"])

#duplicate keys are not allowed in disctionary

mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"

}

print(mycar)

#length


print(mycar)



mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"

}
print(len(mycar))

#add item in dist

mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"

}
mycar["company"]= "AG"
print(mycar)

# Update Dict
mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"

}
mycar["company"]= "AG Mysore"
print(mycar)

# Remove Dict

mycar.pop("company")
print(mycar)

#Loop in cars

for x in mycar:
    print(x)


#How to get the values

for x in mycar:
    print(mycar[x])


mycar = {

    "Name": "Pooja",
    "Place": "Ankola",
    "State": "Karnataka",
    "Country": "India"

}

for x, y in mycar.items():
    print("if x is key"+" " +x +" "+"Then Y is value"+ " " +y)