% dd = differenzaDivisa(xi, fi)
%   Calcola la differenza divisa relativa ad un set di ascisse.
%
% Input:
%   -xi: vettore contenente le ascisse su cui calcolare la differenza
%   divisa;
%	-fi: vettore contenente i valori assunti dalla funzione in
%   corrispondenza dei punti in xi.
%
% Output:
%   -dd: il valore della differenza divisa risultante.

function [dd] = differenzaDivisa(xi, fi)
    dd = 0;
	for i=1:length(xi)
        prod = 1;
        for j=1:length(xi)
            if j~=i
                prod = prod*(xi(i)-xi(j));
            end
        end
        dd = dd+fi(i)/prod;
	end
end