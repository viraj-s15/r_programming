# sample mean
sample_mean = 1002

# claim value
claim = 1000 

# standard deviation of sample
sd = 15 

# sample size  
n = 100

z = (sample_mean - claim)/(sd/sqrt(n))
print(paste0("The statistical test z is ",z))

# calculating z-alpha
alpha = 0.05
z_alpha = qnorm(1-alpha)
print(paste0("The value of Z(alpha) is ",z_alpha))

