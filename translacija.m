% premakne krpo za nek fiksen vektor

function K = translacija(Q, vektor)

	K(:, :, 1) = Q(:, :, 1) + vektor(1);
	K(:, :, 2) = Q(:, :, 2) + vektor(2);
	K(:, :, 3) = Q(:, :, 3) + vektor(3);
