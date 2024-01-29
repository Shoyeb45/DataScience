# create tuple

tuple1 = ('pwioi', 'iitg', 12, -12.45, True, 'l', True)
print(type(tuple1))
# tuple are immutable
# tuple1[0] = 'shoyeb'    "We'll get error for this"

# slicing
print(tuple1[1])

# functions
# 1.
print(tuple1.count(True))

# 2.
print(tuple1.index(True))

# For updating we can convert tuple to list

l1 = list(tuple1)

print(type(l1))





