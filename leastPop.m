function[v] = leastPop(n, states)
Map=expansion(n, states);
A=makeAdj(n, states)
v=zeros(1,states); %empty vector that will be filled in with colors
degSum = sum(A); %store degrees of each node
colorList = zeros(1, states);
index = find(degSum==min(degSum)); %index of lowest degree node
v(1, index(1)) = 1;
degSum(index(1)) = Inf;
for i=1:states
    for j = 1:states        
        if (A(i, j) == 1)             
            colorList(1, j) = v(1, j);            
        end       
    end    
    color = min(setdiff(1:states, colorList)) %intersection of sets
    index = find(degSum==min(degSum)); %index of lowest degree node 
    if (min(degSum) ~= Inf)
        v(1, index(1)) = color
        degSum(index(1)) = Inf;
    end
end
