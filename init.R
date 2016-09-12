dynamic_require <- function(package){
  if(!eval(parse(text=paste("require(",package,")")))) 
    install.packages(package)
  return
    eval(parse(text=paste("require(",package,")")))
}
dyanmic_require("plumber")
library(plumber)
plumb("myfile.R")$run(port=8000)