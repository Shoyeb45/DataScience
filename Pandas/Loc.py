import pandas as pd

# reading file
df = pd.read_csv("sample.csv")
# till now the index is from 0
df.set_index("Roll No.", inplace=True)  # setting index to Roll No.
print(df)

# loc
print("Marks of student having roll number 1\n",df.loc[1])
print("Physics marks of roll number 5:",df.loc[5, "Physics"])
print("Maths marks of students having roll number 10 to 18",df.loc[10:18, "Maths"])
# we can fetch data by arbitarly giving the indices - in array
print(df.loc[[1, 4, 6]])

# conditional analysis
print(f"Marks of students having maths marks greater than 50\n{df.loc[df['Maths']>50]}")
print(f"Marks of students having physics marks less than 50\n{df.loc[df['Physics']<=50]}")
print(f"Marks of students of subject maths having physics marks greater than 80\n{df.loc[df['Physics']>80, ["Maths"]]}")

