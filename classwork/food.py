# Assignment 13
print("-----PART A------")
myList = [2, 4, 6, 8, 10, 12, 14, 16]
print("myList:", myList)

myList2 = myList[1:]
print("myList2:", myList2)

myList2.append(18)
del myList2[2]
myList3 = myList2
print("myList3:", myList3)

print("-----PART B------")

text = "CirillDalangin"
print("Sample Text: ", text)

sampleList = ["This", "is", "a", "list"]
print("Sample List: ", sampleList)

longText = "Cirill\nFlorenz\nDalangin"
print("Sample Long Text: ", longText)
# count(sub,[start,[end]]) 
# counts occurences of sub from start to end of text
print("count:", text.count("l", 2, 12))

# endswith(suffix,[start,[end]]) 
# checks if string ends with suffix from start to end of text
print("endswith:", text.endswith("ill", 1, 6))

# find/index(sub,[start,[end]])
# finds index of the first occurence of sub from start to end of text
print("index:", text.find("r", 1, 13))
print("find:", text.index("r", 1, 13))

# isalnum()
# checks if all characters in string is alphanumeric (A-Z, 0-9)
print("isalnum():", text.isalnum())

# isalpha()
# checks if all characters in string is part of the alphabet (A-Z)
print("isalpha():", text.isalpha())

# isdigit()
# checks if all characters in string are numbers (0-9)
print("isdigit():", text.isdigit())

# islower()
# checks if all characters in string are lowercase
print("islower():", text.islower())

# isspace()
# checks if all characters in string are whitespaces
print("isspace():", text.isspace())

# istitle()
# checks if first letters of each word in the string are capitalized
print("istitle():", text.istitle())

# isupper()
# checks if all letters of the string are capitalized
print("isupper():", text.isupper())

# join()
# joins elements in a list with given separator
print("join():", " ".join(sampleList))


# lower()
# turns all characters to lower case
print("lower():", text.lower())

# replace(old,new[,count])
# checks if first letters of each word in the string are capitalized
print("istitle():", text.istitle())

# split([sep[,maxsplit]])
# separates string by sep and puts separated strings into a list
# maxsplit is optional, but specifies how many times strings will be split
print("split(): ", text.split("i", 3))


# splitlines([keepends])
# breaks up string by line breaks, keepends is optional, but keeps linebreak chars (ex: \n)
print("splitlines(): ", longText.splitlines(True))


# startswith(prefix[,start[,end]])
# checks if string starts with prefix from start to end of text
print("startswith:", text.startswith("Dal", 6, 13))


# strip([chars])
# removes surrounding chars from given string
print("strip(): ", text.strip("n"))


# upper()
# turns all characters in string to uppercase
print("upper(): ", text.upper())


print("-----PART C------")

proj5 = """
Project 5 Description:

A budget tracker that asks for the user's budget, and allows them to
input multiple expenses. The app will display the budget, all the expenses,
total expenses, and remaining money.

GROUP: 
Cirill Dalangin - Database/Wireframe
Ray Lu - Node/Express 
Shalif Shaoul - HTML/CSS

"""

print(proj5)
