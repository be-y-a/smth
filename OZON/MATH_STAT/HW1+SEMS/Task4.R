install.packages("waveslim")
library(waveslim)
data(ibm)
plot(ibm)
ibm
X = diff(log(ibm))
plot(X)

n = length(X)
step = round(n / 10)
i = 1
elementsInBlock = 0
estimationsVector = rep(0, 10)
getEstimation<-function(x) { var(x) }

for (i in (1:10)) {
  left = step*(i - 1) + 1
  if (step * i >= n) {
    right = n
  } else {
    right = step*i
  }
  estimationsVector[i] = getEstimation(X[left:right])
}

broadcastedEstimations = rep(0, n)
for (i in (1:n)) {
  index = floor(i / step) + 1
  broadcastedEstimations[i] = estimationsVector[index]
}

MULTIPLIER = 50
plot(X)
lines(broadcastedEstimations * MULTIPLIER,col="red")
plot(broadcastedEstimations * 10)

Видно, что резкие изменения в цене приводят к резким изменениям волотильности