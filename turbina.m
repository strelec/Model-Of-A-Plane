% narise turbino, pomaga si z aproksimacijo kroga

function K = turbina(distance)

	krog = aproksimacijaKroga()';

	K(:, :, 1) = [0.4*krog(:,1), krog(:,1), krog(:,1), 0.6*krog(:,1)];
	K(:, :, 2) = repmat(distance, 4, 1);
	K(:, :, 3) = [0.4*krog(:,2), krog(:,2), krog(:,2), 0.6*krog(:,2)];
