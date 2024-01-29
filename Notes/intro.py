city = ["Bangalore", "Jaipur", "Ahemdabad", "Gandhinagar", "Kolkata", "Ajmer", "Ranchi"]

print(city)

city.append("Satara")
print(city)

city.pop(2)
print(city)

city.sort()
print(city)



l = ["df", "Shoyeb", "df", [34, 45, 56, 576, [94, 234, 34 ,3 ,3]], 9834, complex(4,6)]
l1 = [23, 45, 12 ,32]
l2 = ["Shoyeb", "Sandeep", "Suyash", "Sk"]
print(l1+l2+["Ravi"])
print(l1[0]+23)
l2+=[complex(-1,-1)]
print(l2)
s = l[3][4][2]
print(s)
# print(s[4])
print(type(l[5]))

str = "My name is Shoyeb Ansari"

print(str[len(str)::-1])

l2.append(67)
print(l2)
l2.pop()
print(l2)
l2.pop(0)
print(l2)
l2.insert(1, 45)
print(l2)
l2.remove("Sk")
print(l2)
# l2.clear()
# print(l2)
l2.reverse()
print(l2)

l2.append(45)
print(l2.count(45))

l2.extend(["Shoyeb", "Hello", [32, 12]])
print(l2)

print(l1)
l1=l2
print(l1 == l2)