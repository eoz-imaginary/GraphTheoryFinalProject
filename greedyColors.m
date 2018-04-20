function[v] = greedyColors(n, states)
Map=expansion(n, states);
A=makeAdj(n, states);
v=zeros(1,states); %empty vector that will be filled in with colors
randx = randi(states);
randy = randi(states);
v(randx, randy) = 1; %assigning color 1 to a random starting node
for i=1:states
    for j=1:states
        
    end    
end

