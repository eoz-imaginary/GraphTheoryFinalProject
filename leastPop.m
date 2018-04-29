function[v] = leastPop(n, states)
Map=expansion(n, states);
A=makeAdj(n, states)
v=zeros(1,states); %empty vector that will be filled in with colors
degSum = sum(A); %store degrees of each node
colorList = zeros(1, states);
index = find(degSum==min(degSum)); %initial index of lowest degree node
for i=1:states %loop through rows   
    for j = 1:states %loop column-times      
        if (A(i, index(1)) == 1)             
            colorList(1, index(1)) = v(1, index(1));           
        end       
    end    
    color = min(setdiff(1:states, colorList)); %smallest unused color
    index = find(degSum==min(degSum)); %index of lowest degree node 
    %if (min(degSum) ~= Inf) %if we haven't 'used up' our degSum, continue as usual
        v(1, index(1)) = color;
        degSum(index(1)) = Inf;
   % else %else color the last color and end
   %     v(1, index(1)) = color; 
   % end    
end
