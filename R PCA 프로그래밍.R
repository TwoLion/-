X1=rnorm(100, 0, 4)
X2=rnorm(100, 2, 3)
X3=X1 - 3*X2


plot(data.frame(X1, X2, X3))

scatterplot3d::scatterplot3d(X1, X2, X3)


A=matrix(c(X1, X2, X3), nrow=100, byrow=F)


normalizedA=A-matrix(rep(apply(A, 2, mean), 100), nrow=100, byrow=T)

plot(as.data.frame(normalizedA))


corA=t(normalizedA)%*%normalizedA

P=eigen(corA)$vectors


D=diag(eigen(corA)$values)

Y=normalizedA%*%P
D

plot(as.data.frame(Y), xlim=c(-25, 25), ylim=c(-25, 25))


scatterplot3d::scatterplot3d(Y[, 1], Y[, 2], Y[, 3], xlim=c(min(Y[, 1]), max(Y[, 1])), ylim=c(min(Y[, 1]), max(Y[, 1])), 
                             zlim=c(min(Y[, 1]), max(Y[, 1])), main='After PCA')


