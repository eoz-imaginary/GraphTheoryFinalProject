# Graph Theory - Final Project
This program generates random planar graphs using MATLab for the purpose of examining the performance of several naive graph-coloring algorithms. 

TO RUN: 

To create a planar graph, run expansion.m with the input 'n' and 'states', where n is the dimensions of the nxn matrix that represents the planar graph, and where states is the number of nodes in the graph. The function will output an nxn matrix that has 'planted' a node at random in the empty matrix and allowed each node to 'expand' into nearby empty territory, thus ensuring that the resulting graph is planar. 

The graph-coloring algorithms are greedyColors (a naive greedy algorithm), mostPop (prioritizes coloring nodes of highest degree first) and leastPop (prioritizes coloring nodes of lowest degree first). The output of these functions is as follows: on a graph with n nodes, the algorithms will return a 1xn array stating which node is colored with which (numerical) color. 

For example: the output [1, 3, 5] means that in a graph on 3 nodes, node 1 is colored with color 1, node 2 is colored with color 3, and node 3 is colored with color 5. If you wish to check the validity of a coloring, un-supress the variable 'A' in the beginning of each algorithm -- this will reveal the adjacency matrix of the graph, which can be used to verify that the algorithm ran correctly. 
