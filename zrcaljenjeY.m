

function K = zrcaljenjeY(Q, sredisce)

	K = Q;
	K(:, :, 2) = 2*sredisce - K(:, :, 2);
