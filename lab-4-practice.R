# install.packages(readxl)
library(readxl)
install.packages("ergm")
install.packages("statnet")
library(ergm)
library(statnet)
library(tidyverse)

leader_nodes <- read_csv("lab-4/data/school-leader-nodes.csv")
leader_edges <- read_csv("lab-4/data/school-leader-edges.csv")
?as.network
leader_network <- as.network(leader_edges,
                             vertices = leader_nodes)
class(leader_network)
class(leader_edges)
view(leader_network)
## [1] "network"

# ensure reproducibility of our model
set.seed(589) 

# fit our ergm model 
ergm_mod_1 <-ergm(leader_network ~ edges + mutual) 

# get summary statistics for our model
summary(ergm_mod_1)

# fit our ergm model 
ergm_mod_2 <-ergm(leader_network ~ edges + mutual + nodematch('male') + nodematch('district_site')) 

# get summary statistics for our model
summary(ergm_mod_2)

# fit our ergm model 
ergm_mod_3 <-ergm(leader_network ~ edges + mutual + nodematch('male') + nodematch('district_site') + nodecov('trust')) 

# get summary statistics for our model
summary(ergm_mod_3)
