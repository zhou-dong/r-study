x <- 11
if ( x > 10){
    TRUE
} else {
    FALSE
}

y <- if(x > 10){
    TRUE
} else {
    FALSE
}
y

for (i in 1: 12){
    print(i)
}

while(x > 0){
    print(x)
    x = x - 1
}

repeat {
    x = x + 1
    print(x)
    if(x>10)
        break
}

for (i in 1:6){
    if(i<3)
        next
    print(i)
}