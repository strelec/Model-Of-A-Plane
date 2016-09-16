

function K = zrcaljenjeZ(Q, sredisce)

	K = Q;
	K(:, :, 3) = 2*sredisce - K(:, :, 3);
