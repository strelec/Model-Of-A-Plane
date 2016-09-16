

function K = zrcaljenjeX(Q, sredisce)

	K = Q;
	K(:, :, 1) = 2*sredisce - K(:, :, 1);
