
'i <- 3
repeat{
  i <- i-1
  cat("quack!\n")
  if(i==0){
    break
  } else {
    next
  }
}
'
'
while(i!=0){
  cat("quack!\n")
  i <- i-1
}
'

for(i in 1:3){
  cat("quack!\n")
}
