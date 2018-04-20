function[Map] = expansion(n, states)
Map = MapGeneration(n, states);

for h=1:n^2
    for i=1:n
        for j=1:n
            if (Map(i, j) ~= 0)
                randneighbor = randi(4);
                %if RN = 1 --> j-1
                if randneighbor == 1
                    if (j~=1)
                        if (Map(i, j-1) == 0)
                            Map(i, j-1) = Map(i, j);
                        end

                    end
                end
                if randneighbor == 2
                    if (j~=n)
                        if (Map(i, j+1) == 0)
                            Map(i, j+1) = Map(i, j);
                        end

                    end
                end
                if randneighbor == 3
                   if (i~=n)
                      if (Map(i+1, j) == 0)
                         Map(i+1, j) = Map(i, j);
                      end
                   end
                else
                    if (i~=1)
                       if (Map(i-1, j) == 0)
                          Map(i-1, j) = Map(i, j);
                       end
                    end
                end           
            end        
        end
    end
end
