
library(plumber)


#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg="Task 1 for July 1") {
  list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @serializer png
#* @get /plot
function() {
  rand <- rnorm(100)
  hist(rand)
}

#* Return the sum of two numbers
#* @param x The first number to add
#* @param y The second number to add
#* @post /sum
function(x, y) {
  as.numeric(x) + as.numeric(y)
}

#RUN IN CONSOLE
# => pr("plumber.R") %>% pr_run(port=8000)