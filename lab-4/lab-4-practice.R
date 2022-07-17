# install.packages(readxl)
library(readxl)
install.packages("tidyverse")
library(tidyverse)
install.packages("tidygraph")
library(tidygraph)
install.packages("ggraph")
library(ggraph)


student_nodes <- read_excel("lab-1/data/pim_nodes.xlsx")
student_edges <- read_excel("lab-1/data/pim_edges.xlsx")
view(student_nodes)
 
student_network <- tbl_graph(edges = student_edges,
                             nodes = student_nodes, 
                             directed = TRUE)
student_nodes <- read_excel("lab-1/data/pim_nodes.xlsx")
student_edges <- read_excel("lab-1/data/pim_edges.xlsx")
View(student_attributes)
student_nodes <- read_excel("lab-1/data/student_attributes.xlsx")
