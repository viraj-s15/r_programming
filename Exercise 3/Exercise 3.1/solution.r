# We want to predict the number of heads in 10 tosses of a coin 

# 1) Finding the probability of getting at least 5 heads 
# Probability of getting heads = P[X = 5] + P[X = 6] + P[X = 7] + P[X = 8] + P[X = 9] + P[X = 10]

atleast_five_heads = 1-pbinom(4,10,0.5)
print(paste0("the probability of getting 5 or more heads is ",five_heads))

# 2) Finding the probability of getting at exactly 5 heads

five_heads = dbinom(5,10,0.5)
print(paste0("the probability of getting exactly 5 heads is ",five_heads))

# 3) Finding the probability of getting between 4 and 6 heads 

four_and_six_heads = sum(dbinom(4:6,10,0.5))
print(paste0("the probability of getting exactly 5 heads is ",four_and_six_heads))

