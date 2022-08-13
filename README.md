# knight-travails
A project with a focus on graphs and searches. 

Some of the recently learnt concepts which I applied here include: searches, queues, recursion, linked list

In particular, I implemented an undirected unweighted graph. The knight_move method takes in 2 coordinates - a starting position and an end position and finds the shortest path between them, inputting the coordinates along the way. 

At first I thought to create an adjacency list but with so many coordinates the runtime was too long. Instead I opted to use a queue and kept expanding the graph from a single point until a node's neighbouring coordinates would contain the end coordinate. This was done using breadth first traversal.

I realised early on as well that I needed to somehow backtrack from the end coordinate to the starting coordinate. For a while I could not think of how to keep track of the previous node, until I realised I could add a previous field to the node. 

