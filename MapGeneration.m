function[Map] = MapGeneration(n, states) %states must be <= n*n

Map = zeros(n, n); %initializing an empty matrix of specified size
for i = 1:states    
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
            randx = randi(n);
            randy = randi(n);
        end
        Map(randx, randy) = i; %when the while loop ends, we've found 
        % a suitable cell, so insert node i at the designated index        
    end 
end    

