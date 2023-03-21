X=rnorm(100, 2, 0.1)
error = rnorm(100, 0, 0.4)

Y = 3* X + error

plot(X, Y)

cor(X, Y)


X=matrix(c(rep(1, 100), X), nrow=100, byrow=F)


betahat=solve(t(X)%*%X)%*%t(X)%*%Y

abline(a=betahat[1, 1], b=betahat[2, 1], col='red')

title('linear regression line')

summary(lm(Y~X[, 2]))
