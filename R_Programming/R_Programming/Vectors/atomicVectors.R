# So vectors are the most basic data structure in R, and they must contain elements of the same class.
# Diff types of vectors
# Logical vector - c() is used to create vector
a<-c(T, F, T)

# Integer vectors
i<-c(1,9, 10, 123)

# Double vectors
d <- c(1.232, 1.234, 3.14)

# Character vector
ch <- c("g", "h", "a")

# complex vectors
z <- c(1 + 2i, 5 + 8i, 10 - 9i, -8 - 7i)

# some vector functions
length(z)  # get the length of vector
class(ch)  # Get the class of vector
typeof(d)  # get the type
class(ch)
attributes(z)


# checking datatypes is.* function

is.numeric(2)
is.character(2)
is.logical(FALSE)
is.logical(3)

# NAN - undefined and Null values
x<-NA
class(x)
w<-0/0
w
class(w)
