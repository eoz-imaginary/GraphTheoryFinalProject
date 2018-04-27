function[v] = randColors(n, states)
Map=expansion(n, states);
A=makeAdj(n, states)
v=zeros(1,states); %empty vector that will be filled in with colors
colorList = zeros(1, states);
randRow = randi(states);
v(1, randRow) = 1; %assign first color at random
for i=1:states
    for j=1:states
        randRow = randi(states);
        if (A(randRow, j) == 1)
             colorList(1, j) = v(1, randRow);             
        end
    end
    color = min(setdiff(1:states, colorList)); %intersection of sets
    v(1, randRow) = color;
end
