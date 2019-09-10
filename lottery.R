# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

n_flips=30
outcomes <- array(0,n_flips)
prob_heads=0.1
for (i in 1:n_flips){
  outcomes[i] <- if (runif(1) < prob_heads) 1 
  else 0
}

n_trials=100
for (j in 1:n_trials){
  outcomes <- array(0,n_flips)
  for (i in 1:n_flips){
    outcomes[i] <- if (runif(1) < prob_heads) 1 
    else 0
  }
  print(outcomes)
}

