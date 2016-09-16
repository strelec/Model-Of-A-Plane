%
% Poseben primer funkcije patch(), ki je specializirana za 4x4 matrike, torej kubične bezierove krpe.
% Zaradi tega dela hitreje, ker so matrične operacije hitrejše kot for zanke (BLAS podsistem).
%
% Deluje za poljubno dimenzijo.
% 
% VHOD:
% P: Predstavlja 4x4 mrežo kontrolnih točk
% natancnost: število subdivizij na vsaki stranici 
%
% IZHOD:
% Q: Izhodna matrika, primerna, da jo takoj podamo funkciji plot()

function Q = krpa(P, natancnost)
	if nargin < 2
		natancnost = 20;
	end
	
	% funkcija deluje za poljubno dimenzionalne prostore
	dimenzij = size(P, 3);

	% popraviti, če žeimo kakšno neenakomerno mrežo
	u = v = linspace(0, 1, natancnost);

	% zapis v matrični obliki
	M = [
		-1	 3	-3	 1;
		 3	-6	 3	 0;
		-3	 3	 0	 0;
		 1	 0	 0	 0;
	];
  
	% izračunamo vnaprej, da ne ponavljamo za vsako dimenzijo
	U = vander(u, 4) * M;
	V = vander(v, 4) * M;
	
	% če u = v, potem tudi U = V, se pravi dobimo kvadratično formo, kar bi se dalo
	% še bolj učinkovito izračunati, ampak potem izgubimo fleksibilnost
	for k = 1:dimenzij
		Q(:, :, k) = U * P(:,:,k) * V';
	end
