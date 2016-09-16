% naloži *.krpa datoteko

function Q = nalozi(ime)
	A = dlmread(["_" ime ".krpa"]);
	
    N = 10;
	Q(:, :, 1) = A(1:4 , :)*N;
	Q(:, :, 2) = A(5:8 , :)*N;
	Q(:, :, 3) = A(9:12, :)*N;
