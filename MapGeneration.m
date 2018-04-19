
%4/19 UPDATE: this occasionally loops forever, getting stuck in the
%conditionals inside the while-loop starting on line 18. No idea why.
%4/19 UPDATE: nodes 1 and 2 repeatedly get added multiple times, but not 3
%and 4. I'm sure it's something to do with the problems in the while-loop,
%again, but no idea why.
function[Map] = MapGeneration(n)
Map = zeros(n, n); %initializing an empty matrix of specified size
for i = 1:n    
    for j = i:n
        %first we create random indexes with which to sprinkle our first n
        %nodes throughout the map
        randx = randi(n);
        randy = randi(n);
        %make sure that each node n goes into an 'unclaimed' cell
        if (Map(randx, randy) == 0)
            Map(randx, randy) = i;    
           
        else
            %if we're here, the random index is already claimed. 
            while (Map(randx, randy) ~= 0)
                %move the cell pointer until we find an empty cell
                %the following conditionals make sure we don't go off the
                %edge of the matrix
                if (randx == n)
                    randx = randx-1;
                else
                    randx = randx+1;
                end
                if (randy == n)
                    randy = randy-1;
                else
                    randy = randy+1;
                end
            end
            Map(randx, randy) = i; %when the while loop ends, we've found 
            % a suitable cell, so insert node i at the designated index        
        end 
        
    end
end    
