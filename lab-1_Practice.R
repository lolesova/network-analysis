install.packages("readxl")
library(readxl)
library(tidygraph)
library(ggraph)
install.packages("tidygraph")
library(tidygraph)
install.packages("ggraph")
library(ggraph)
student_nodes <- read_excel("lab-1/data/student-attributes.xlsx")
student_edges <- read_excel("lab-1/data/student-edgelist.xlsx")
student_network <- tbl_graph(edges = student_edges,
                             nodes = student_nodes, 
                             directed = TRUE)
student_network
plot(student_network)
autograph(student_network)
ggraph(student_network)
ggraph(student_network) + 
  geom_node_point()
  geom_edge_link()
  ggraph(student_network) + 
    geom_node_point() + 
    geom_edge_fan()  
  ggraph(student_network, layout = "stress") + 
    geom_edge_link(arrow = arrow(length = unit(1, 'mm')), 
                   end_cap = circle(3, 'mm'),
                   start_cap = circle(3, 'mm'),
                   alpha = .1) +
    geom_node_point(aes(size = local_size(),
                        color = gender)) +
    geom_node_text(aes(label = id),
                   repel=TRUE) +
    theme_graph()
  library(tidygraph)
  library(ggraph)
  library(tidyverse)
  student_nodes <- read_excel("lab-1/data/student-attributes.xlsx")
  student_edges <- read_excel("lab-1/data/student-edgelist.xlsx")
  student_network <- tbl_graph(edges = student_edges,
                               nodes = student_nodes, 
                               directed = TRUE)  
  student_network <- tbl_graph(edges = student_edges,
                               nodes = student_nodes, 
                               directed = TRUE)  
plot(student_network)  
autograph(student_network)
ggraph(student_network, layout = "stress") + 
  geom_edge_link(arrow = arrow(length = unit(1, 'mm')), 
                 end_cap = circle(3, 'mm'),
                 start_cap = circle(3, 'mm'),
                 alpha = .1) +
  geom_node_point(aes(size = local_size(),
                      color = gender)) +
  geom_node_text(aes(label = id),
                 repel=TRUE) +
  theme_graph()
install.packages("janitor")
library(janitor)
library(tidyverse)
library(tidygraph)
library(ggraph)
library(igraph)
dlt1_ties <- read_csv("lab-2/data/dlt1-edges.csv", 
                      col_types = cols(Sender = col_character(), 
                                       Receiver = col_character(), 
                                       `Category Text` = col_skip(), 
                                       `Comment ID` = col_character(), 
                                       `Discussion ID` = col_character())) |>
  clean_names()
dlt1_actors <- read_csv("lab-2/data/dlt1-nodes.csv", 
                        col_types = cols(UID = col_character(), 
                                         Facilitator = col_character(), 
                                         expert = col_character(), 
                                         connect = col_character())) |>
  clean_names()
dlt1_network <- tbl_graph(edges = dlt1_ties,
                          nodes = dlt1_actors,
                          node_key = "uid",
                          directed = TRUE)
dlt1_network
plot(dlt1_network)
autograph(dlt1_network)
