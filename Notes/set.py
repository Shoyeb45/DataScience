# declaring

set1 = {1, 2, 4, 5, 29}
print(type(set1))
# 'set' object is not subscriptable(not slicing and indexing)
# print(set1[0])

# will not take duplicate elements
# ex

set2 = {1, 1, 1, 1, 1,-5, 4, 4, 4,  -5, 0 ,0, 0}
print(set2)

# functions
# we can't add mutable object to immutable object ans vice versa
# like list in tuple

set2.add("hui")
# set2.add(['list', 3])   - will not accept
# set2.add({-12, 23})     - will accept
set2.add(6)
print(set2)