df
df$science_marks <- as.numeric(science_marks)
df$english_marks <- as.numeric(english_marks)
df$total_marks <- df$science_marks + df$english_marks + df$political_science_marks
str(df)
