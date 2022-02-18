# 기초연산자
1:10

9 %/% 2 # 몫
9 %% 2 # 나머지

A <- matrix(1:20, ncol=4)
B <- t(A)
A %*% B # 행렬의 곱
A %o% B # 행렬의 외적
A %x% B # kronecker 곱

M <- matrix(1:6, ncol=2)
kronecker(4,M)
kronecker(diag(1,3),M)

# 초급
1:10 %in% c(2,4,6)

# 중급
mtcars %>%
  filter(mpg > 15)

plot(mtcars$mpg, mtcars$hp)
with(mtcars, plot(mpg, hp))
mtcars %$% plot(mpg, hp)

rnorm(200) %>%
  matrix(ncol=2) %T%
  plot() %>%
  colSums()

#고급
# +, %+replace%

library(zeallot)
mylist <- list(x = 3, y = 4)
c(a, b) %<-% mylist
a
b

# <<-

x <- 3
x

myf <- function() {
  x <- 3
  x <<- 2
  y <- x * 2
  return(y)
}
myf()

# ::: private한 함수를 알려주는 기호
# 사용자 정의 operator
"%+%" <- function(a, b) {
  paste(a, b)
}

"my" %+% "first"  %+% "project"

