function[A] = makeAdj(n, states)
Map = expansion(n, states);
A=zeros(states, states);
for i=1:n
    for j=1:n
       if (j~=n)
           if (Map(i, j) ~= Map(i, j+1))
               A((Map(i, j)), Map(i, j+1)) = 1;
               A((Map(i, j+1)), Map(i, j)) = 1;
           end
       end
       if (j~=1)
           if (Map(i, j) ~= Map(i, j-1))
               A((Map(i, j)), Map(i, j-1)) = 1;
               A((Map(i, j-1)), Map(i, j)) = 1;
           end
       end
       if (i~=n)
           if (Map(i, j) ~= Map(i+1, j))
               A(Map(i, j), Map(i+1, j)) = 1;
               A(Map(i+1, j), Map(i, j)) = 1;
           end
       end
       if (i~=1)
           if (Map(i, j) ~= Map(i-1, j))
               A(Map(i, j), Map(i-1, j)) = 1;
               A(Map(i-1, j), Map(i, j)) = 1;
           end
       end
    end        
end
Map