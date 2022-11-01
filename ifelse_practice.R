# if else
temp = -50

if(temp < 0) {
  print("It's freezing!")
  if (temp < 32){
    print("And kids don't go to school.")
  }
} else {
  print("It's not freezing.")
}

checkweather <- function(x, verbose = FALSE){
  #x is temperatue, degrees c
  # verbose is logical value, indicating print resultz
  if (FALSE) {
    x = 5
  }
  
  #xf <- 32 + 1.8*x
  #print(paste0("In Farenheit it is ", xf, "."))
  if (x < 0) {
    if (verbose){
      print("It's freezing!")
    }
      if (x < 32){
        if (verbose) {
          print("And kids don't go to school.")
        }
      }
    } else {
      if (verbose) {
        print("It's not freezing.")
      }
    }
  32 + 1.8*x
  #return(xf)
}

tempF = checkweather(55, verbose = TRUE)
checkweather(50)

#leapyear function practice

is.leap <- function(x) {
  if ((x %% 4) == 0) {
    if ((x %% 100) == 0){
      print(paste0(x,"is a normal year.")) 
    }
  }
    else {
        if ((x %% 400) == 0){
          print(paste0(x,"is a leap year."))
          }
        else {
          print(paste0(x,"is a normal year.")) 
        }
} else {
        print(paste0(x,"is a leap year."))
      }
  }