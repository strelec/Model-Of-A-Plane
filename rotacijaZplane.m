% zavrti Bezierovo krpo za nek kot vzporedno z Z ravnino

function K = rotacijaZplane(Q, kot)

	K(:, :, 1) = cos(kot)*Q(:, :, 1) + sin(kot)*Q(:, :, 2);
	K(:, :, 2) = -sin(kot)*Q(:, :, 1) + cos(kot)*Q(:, :, 2);
	K(:, :, 3) = Q(:, :, 3);
