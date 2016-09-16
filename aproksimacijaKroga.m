% izracuna točke bezierove krivulje, da je rezultat podoben krogu

function K = aproksimacijaKroga()

	% kaj je ta skrivnostni faktor je napisano v poročilu
	c = 0.55191502449351057074;
	
	faktor = 150;
	
	K = [
		0, faktor*c, faktor, faktor;
		faktor, faktor, faktor*c, 0
	];
