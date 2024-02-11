import numpy as np

str1 = "My name is Shoyeb Ansari"
str2 = "I am from Gujarat"

# concatenate
print(f"{np.char.add(str1, str2)}")

# upper and lower
print(f"{np.char.upper(str1)}")
print(f"{np.char.lower(str2)}")

# split
print(np.char.split(str1, "a"))

# splitlines
x = "Shoyeb\nAnsari"
print(np.char.splitlines(x))

# replace
x = np.char.replace(x, "Shoyeb\n", "Mohammad Shoyeb ")
print(x)

# center
y = "Bye"
print(np.char.center(y, 40, "*"))