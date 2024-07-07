person <- list(
  Names = c(name = "Shoyeb", age = "19"), date_of_birth = list("June 17")
)

info <- c(
  "is.list" = is.list(person), "is.vector" = is.vector(person),
  "is.character" = is.character(person), "is.logical" = is.logical(person),
  "is.numeric" = is.numeric(person), "is.integer" = is.integer(person)
)

info

