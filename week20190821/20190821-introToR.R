seq_vec = seq(1,19,2)                               #seq([first],[last],[inc])
seq_mat = matrix(seq_vec, nrow = 2, byrow = TRUE)   #matrix([vec],nrow=[int],ncol=[int],byrow=[bool])
seq_mat

year_group <- c("Freshmen", "Junior", "Junior", "Senior", "Sophmore")
class(year_group) #gives type of vec
factor_year_group <- factor(year_group)
factor_year_group

#each vector is a variable
nv <- c(1, 3, 6, 8)                 #make the vecs
cv <- c("a", "v", "f", "p")
lv <- c(TRUE, FALSE, FALSE, TRUE)
DF1 <- data.frame(nv, cv, lv)       #create the data frame using the vecs as args

#making selections
DF1$cv          #grab col 'cv'
DF1$cv[1]       #grab a specific element
DF1[1:2, "nv"]  #rows 1:2 of col 'nv'
DF1[ , "cv"]    #all rows of 'cv'

#subsets (two ways)
subset(DF1, subset = lv == TRUE)    #subset([df], subset = [lexp])
DF1[lv == TRUE, ]
subset(DF1, subset = nv > 5)        #grabs rows 3 and 4

#order
num_vec <- c(13, 17, 1, 31, 45)
order(num_vec)                      #ret pos of elements that'd make the ordered vector

#frame heads
ChickWeight                 #built-in data frame
head(ChickWeight)           #get first 6 rows
head(ChickWeight, n = 3)    #get first 3 rows
head(ChickWeight[order(ChickWeight$weight),], n = 5)    #get 5 lightest chickens

#lists
my_vector <- 1:5
my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
my_df <- DF1

my_list <- list(my_vector, my_matrix, my_df)                #unnamed list
my_list2 <- list(Vector = my_vector, Matrix = my_matrix)    #named list
my_list2

my_list2[[2]]           #selecting the matrix from the list (the 2nd element)
my_list2[["Matrix"]]    #or
my_list2$Matrix         #or
