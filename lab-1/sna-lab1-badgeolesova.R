# install.packages(readxl)
library(readxl)
install.packages("tidyverse")
library(tidyverse)
install.packages("tidygraph")
library(tidygraph)
install.packages("ggraph")
library(ggraph)
 
student_nodes <- read_excel("data/pim_nodes.xlsx"),col_names = FALSE)
student_edges <- read_excel("data/pim_edges.xlsx")
view(student_edges)
view(student_nodes)
student_edges <- read_excel("data/student-reported-friends.xlsx")
view(student_edges)

install.packages("tidyverse")
library(tidyverse)
install.packages("tidygraph")
library(tidygraph)
install.packages("ggraph")
library(ggraph)
student_network <- tbl_graph(edges = student_edges,
                             nodes = student_nodes, 
                             directed = TRUE)
library(readxl)
student_edges <- read_excel("data/pim_edges.xlsx", 
                              col_names = FALSE)
student_edges
rownames(student_edges) <- 1:26

colnames(student_edges) <- 1:26
student_edges
student_nodes <- read_excel("data/pim_nodes.xlsx")
student_nodes
student_matrix <- as.matrix(student_edges)
class(student_edges)

class(student_matrix)

student_network <- as_tbl_graph(student_matrix, 
                                directed = TRUE)
student_network
student_edges <- student_network |>
  activate(edges) |>
  as_tibble()

student_edges
?tbl_graph
student_network <- tbl_graph(edges = student_edges, # specifies edges
                             nodes = student_nodes, # specifies nodes
                             directed = TRUE) # specifies directionality

student_network
plot(student_network)
autograph(student_network)
autograph(student_network,
          node_label = id,
          node_colour = interaction)
install.packages("ggraph")
library(ggraph)
ggraph(student_network)
