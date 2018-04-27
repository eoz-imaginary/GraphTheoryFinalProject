function[cMap]= coloredMap(n,states)
E=expansion(n,states)
imagesc(E);
for ii = 1:n
    for jj = 1:m
        text(ii, jj, num2str(E(jj,ii)), 'FontSize', 18);
    end
end