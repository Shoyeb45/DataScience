x = 2
switch(x,
       "one" = print("One"), 
       "two" = print("two"),
       "three" = print("Hello")
       )

# vectorized if
vec = c(1, 2, 3, 4, 5)
ifelse(vec >= 3, "Greater", "Lesser")
vec

mat = matrix(1:9, ncol = 3, nrow = 3)
ifelse(mat > 3, 1, 0)
