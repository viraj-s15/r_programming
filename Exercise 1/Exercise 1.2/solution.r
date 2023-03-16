# Loading the data

data_frame = data.frame(height = c("145-150", "150-155", "155-160", "160-165" , "165-170", "170-175", "175-180", "180-185"),
                        FREQ = c(4L, 6L, 28L,58L,64L,30L,5L,5L))


print(data_frame)

# Now that the data has been loaded we start to work on it

# This function will find the midpoint of the range of values
midpoint <- function(x) {
  mean(as.numeric(strsplit(x, "-")[[1]]))
}

data_frame$midpoint <- sapply(data_frame$height, midpoint)

print(data_frame)

# We have the midpoint, we can now calculate the required values

# Finding the mean
mean = weighted.mean(data_frame$midpoint, w = data_frame$FREQ)
print("The mean is ")
print(mean)

# Finding the median
median = median(data_frame$midpoint)
print("The median is ")
print(median)

# Finding the mode we will create a custom function

get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

mode = get_mode(data_frame$midpoint)
print("The mode is ")
print(mode)

