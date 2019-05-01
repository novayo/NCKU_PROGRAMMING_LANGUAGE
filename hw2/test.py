# 234
'''
a = 0
b = "Meng" + "123"

print(str(a) + b)


if a == 0:
    print("123")
    print("234\"")
    if b == "Meng":
        print()
else:
    print()
print("345")
'''

c = ["abc", "Aba" , "Yan"]
print(c[0])
print(len(c))
c.append("Abc")
c.remove("Yan")
c.reverse()
c.sort()
print(c)

# for(int i=0; i<10; i++)
for i in range(len(c)-1, -1, -1):
    print(c[i])

for i in c:
    print(i)

print(c[0:-1])




dictionary = {"Meng": 21, "Yan": 22}
dictionary["Eric"] = 20

for i in sorted(dictionary):
    print(i + ": " + str(dictionary[i]))

name = "Meng"
if name in dictionary:
    dictionary[name] = dictionary[name] + 1

for i in dictionary:
    print(dictionary[i])









