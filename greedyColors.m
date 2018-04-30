function[v] = greedyColors(n, states)

A=makeAdj(n, states)
v=zeros(1,states); %empty vector that will be filled in with colors
colorList = zeros(1, states);
v(1, 1) = 1; %assigning color 1 to a random starting node
for i=1:states % go through all states
    for j=1:states % goes through column of neighbors for each state in A
         if (A(i, j) == 1) %checks if nodes are adjacent
             colorList(1, j) = v(1, j); %adds neighbor's color to colorList            
         end
    end
    color = min(setdiff(1:states, colorList)); %intersection of sets
    v(1, i) = color; %assigns lowest color not used by neighbors
    colorList=zeros(1,states); %resets colorList
end


