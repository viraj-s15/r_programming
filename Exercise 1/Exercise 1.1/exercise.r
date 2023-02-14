# Creating a vector of the student marks data
# We Will be using a dataset of a 200 values

data_frame = c( 72,    69,    90,    47,    76,    71,    88,
                   40,    64,    38,    58,    40,    65,    78,
                   50,    69,    88,    18,    46,    54,    66,
                   65,    44,    69,    74,    73,    69,    67,
                   70,    62,    69,    63,    56,    40,    97,
                   81,    74,    50,    75,    57,    55,    58,
                   53,    59,    50,    65,    55,    66,    57,
                   82,    53,    77,    53,    88,    71,    33,
                   82,    52,    58,    70,    79,    39,    62,
                   69,    59,    67,    45,    60,    61,    39,
                   58,    63,    41,    61,    49,    44,    30,
                   80,    61,    62,    47,    49,    50,    72,
                   42,    73,    76,    71,    58,    73,    65,
                   27,    71,    43,    79,    78,    65,    63,
                   58,    65,    79,    68,    85,    60,    98,
                   58,    87,    66,    52,    70,    77,    62,
                   54,    51,    99,    84,    75,    78,    51,
                   55,    79,    91,    88,    63,    83,    87,
                   72,    65,    82,    51,    89,    53,    87,
                   75,    74,    58,    51,    70,    59,    71,
                   76,    59,    42,    57,    88,    22,    88,
                   73,    68,    10,    62,    77,    59,    54,
                   62,    70,    66,    60,    61,    66,    82,
                   75,    49,    52,    81,    96,    53,    58,
                   68,    67,    72,    94,    79,    63,    43,
                   81,    46,    71,    52,    97,    62,    46,
                   50,    65,    45,    65,    80,    62,    48,
                   77,    66,    76,    62,    77,    69,    61,
                   59,    55,    45,    78)

print(data_frame)

# Now that we have the data we can work on it
# We know that length of data is 200

# Mean ->

data_len = 200

data_sum = sum(data_frame)

mean = (data_sum / data_len)

print("The mean of the data is: ")
print(mean)

# Median -> \

# Sorting the vector

sorted_data = sort(data_frame)

median = median(sorted_data) 

print("Median is")
print(median)

# Mode -> 

# R does not have a mode library, creating a user function

mode = function() {
  return(names(sort(-table(data_frame)))[1])
}

mode = mode()

print("Mode is:")
print(mode)

# Range of data ->

range = range(data_frame)

print("The range is: ")
print(range)

# Variance ->

variance = var(sorted_data)

print("The variance is: ")
print(variance)

# Standard Deviation ->

standard_deviation = sd(data_frame)

print("The standard deviation is: ")
print(standard_deviation)

# Mean Deviation ->

mean_deviation = mad(data_frame)

print("The mean deviation is: ")
print(mean_deviation)

# Coefficient of Variation

coeff_of_variation = (standard_deviation / mean)

print("The coefficient of variation is: ")
print(coeff_of_variation)

# Coefficient of Quartile deviation

quantile(data_frame, prob=c(.25,.5,.75))

# Using the above function we know that q1 = 54 and q3 = 75

q1 = 54
q3 = 75

coeff_quartile_deviation = (q3 - q1)/(q3 + q1)

print("The coefficient of quartile deviation is: ")
print(coeff_quartile_deviation)

