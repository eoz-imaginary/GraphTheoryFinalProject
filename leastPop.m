function[v] = leastPop(n, states)
Map=expansion(n, states);
A=makeAdj(n, states)
v=zeros(1,states); %empty vector that will be filled in with colors
colorList = zeros(1,states);
degSum = sum(A); %store degrees of each node
index = find(degSum==min(degSum)); %initial index of lowest degree nodes
v(1,index(1)) = 1; %assigns node of lowest degree color 1
degSum(index(1)) = inf; %sets that node to degree infinity
for n = 1:states %cycles through each node
    index = find(degSum==min(degSum)); % index of lowest degree nodes
    for i=1:states % goes through column of neighbors for each state in A
         if (A(i, index(1)) == 1) %if node is ajdacent to A(i,index(1))...
             colorList(1, i) = v(1, i); %add neighbor's color to colorList             
         end
         
    end
    color = min(setdiff(1:states, colorList)); %intersection of sets
    v(1, index(1)) = color; %assigns lowest color not used by neighbors
    colorList=zeros(1,states); %resets colorList
    degSum(index(1))=inf; %sets degree of node to infinity
    
end
