function[v] = leastPop(n, states)
Map=expansion(n, states);
A=makeAdj(n, states);
v=zeros(1,states); %empty vector that will be filled in with colors
degSum = sum(A); %store degrees of each node
colorList = zeros(1, states);
index = find(degSum==min(degSum)); %index of lowest degree node
v(1, index(1)) = 1;
degSum(index(1)) = [];
for i=1:states
    for j = 1:states
        index = find(degSum==min(degSum)); %index of lowest degree node  
        if ((A(i, j) == 1) & (j == index))               
            colorList(1, index(1)) = v(1, index(1)); 
            degSum(index(1)) = [];            
        end       
    end    
    color = min(setdiff(1:states, colorList)) %intersection of sets
    v(1, index(1)) = color;
end


% %v(1, 1) = 1; %assigning color 1 to a random starting node
% for i=1:states % go through all states
%     for j=1:states % goes through column of neighbors for each state in A
%          if (A(i, j) == 1)
%              colorList(1, j) = v(1, j);             
%          end
%     end
%     color = min(setdiff(1:states, colorList)); %intersection of sets
%     v(1, i) = color;
% end
% A;
% v
% 
