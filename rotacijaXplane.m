% zavrti Bezierovo krpo za nek kot vzporedno z X ravnino

function K = rotacijaXplane(Q, kot)

	K(:, :, 1) = cos(kot)*Q(:, :, 1) + sin(kot)*Q(:, :, 3);
	K(:, :, 3) = -sin(kot)*Q(:, :, 1) + cos(kot)*Q(:, :, 3);
	K(:, :, 2) = Q(:, :, 2);
