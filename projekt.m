function N = projekt()

	figure;
	hold on;
    
    colormap(flipud(colormap));
    shading interp;
    
	view(200, 20);
	box off;
	axis equal;
	axis off;
    
    
    % TUKAJ LAHKO NASTAVITE NATANČNOST (število subdivizij)
    
    
    NATANCNOST = 15;
    
    na = NATANCNOST;
    
    
    
    
    
    
    
    % GLAVNO TELO LETALA
    
    kljun = nalozi("kljun");
    kljun_spodaj = nalozi("kljun_spodaj");
    
    telo = nalozi("telo");
    telo_spodaj = nalozi("telo_spodaj");
    
    zadek = nalozi("zadek");
    zadek_spodaj = nalozi("zadek_spodaj");
    
    plot(krpa(kljun, na));
    plot(krpa(kljun_spodaj, na));
    plot(krpa(telo, na));	
    plot(krpa(telo_spodaj, na));
    plot(krpa(zadek, na));
    plot(krpa(zadek_spodaj, na));
    
    
    % še prezrcaljeno
    plot(krpa(zrcaljenjeX(kljun, 410), na));
    plot(krpa(zrcaljenjeX(kljun_spodaj, 410), na));
    plot(krpa(zrcaljenjeX(telo, 410), na));	
    plot(krpa(zrcaljenjeX(telo_spodaj, 410), na));
    plot(krpa(zrcaljenjeX(zadek, 410), na));
    plot(krpa(zrcaljenjeX(zadek_spodaj, 410), na));
    




    
    
    
    % "POKROV" LETALA
    
    pokrov = nalozi("pokrov");
    plot(krpa(pokrov, na));
    plot(krpa(zrcaljenjeX(pokrov, 410), na));
    
    pokrov2 = nalozi("pokrov_zadaj");
    plot(krpa(pokrov2, na));
    plot(krpa(zrcaljenjeX(pokrov2, 410), na));
   
    



	% "PLAVUT" NA ZADKU
	
    premik = [500 30 470];
	
	leva_plavut = nalozi("plavut");
	leva_plavut2 = zrcaljenjeZ(leva_plavut, 0);
	
	leva_plavut3 = translacija(leva_plavut, premik);
	leva_plavut4 = translacija(leva_plavut2, premik);
	
	
	plot(krpa(leva_plavut3, na));
	plot(krpa(leva_plavut4, na));
	
	% še prezrcaljeno
	plot(krpa(zrcaljenjeX(leva_plavut3, 410), na));
	plot(krpa(zrcaljenjeX(leva_plavut4, 410), na));
	
	% še pokončna plavut
	premik(1) -= 90;
	leva_plavut = rotacijaXplane(leva_plavut, -pi/2);
	leva_plavut2 = rotacijaXplane(leva_plavut2, -pi/2);
	plot(krpa(translacija(leva_plavut, premik), na));
	plot(krpa(translacija(leva_plavut2, premik), na));
	
    
    
    
    
    
    
    
    % VELIKA KRILA
    
    krilo_zgoraj = nalozi("krilo_zgoraj");
    krilo_spodaj = nalozi("krilo_spodaj");
    
    premik = [100 2650 170];
    kot = 0.45 * pi;
    
    krilo_zgoraj = zrcaljenjeY(krilo_zgoraj, 0);
    krilo_spodaj = zrcaljenjeY(krilo_spodaj, 0);

    krilo_zgoraj = rotacijaZplane(krilo_zgoraj, kot);
    krilo_spodaj = rotacijaZplane(krilo_spodaj, kot); 

    krilo_zgoraj = translacija(krilo_zgoraj, premik);
    krilo_spodaj = translacija(krilo_spodaj, premik);
    
    plot(krpa(krilo_zgoraj, na));
    plot(krpa(krilo_spodaj, na));
    
    
      % še prezrcaljeno
    plot(krpa(zrcaljenjeX(krilo_zgoraj, 410), na));
    plot(krpa(zrcaljenjeX(krilo_spodaj, 410), na));  
    
    
    

 
    
    
    % TURBINA / MOTORJA
    
    na /= 2;
    
    povecava = 1.5;
    motor1 = povecava*turbina([100 200 500 480]);
    motor2 = zrcaljenjeX(motor1, 0);
    motor3 = zrcaljenjeZ(motor1, 0);
    motor4 = zrcaljenjeX(motor3, 0);
    
    
    premik = [-350, 2000, 90];
    motor1 = translacija(motor1, premik);
    motor2 = translacija(motor2, premik);
    motor3 = translacija(motor3, premik);
    motor4 = translacija(motor4, premik);
    
    plot(krpa(motor1, na));
    plot(krpa(motor2, na));    
    plot(krpa(motor3, na));        
    plot(krpa(motor4, na));
    
    
    
    % še prezrcaljeno
    plot(krpa(zrcaljenjeX(motor1, 410), na)); 
    plot(krpa(zrcaljenjeX(motor2, 410), na)); 
    plot(krpa(zrcaljenjeX(motor3, 410), na)); 
    plot(krpa(zrcaljenjeX(motor4, 410), na));
    

	% še krilca v notranjosti
	na /= 3;
	krilce = 0.06 * nalozi("krilce");
    premik2 = premik + [0 650 0];
    for i = 0:20
    	premaknjen = translacija(rotacijaXplane(krilce, 0.3*i), premik2);
    	plot(krpa(premaknjen, na));
    	plot(krpa(zrcaljenjeX(premaknjen, 410), na));
    end
    
    na *= 3;







    
    % MALE TURBINE
    
    povecava = 1.05;
    motor1 = povecava*turbina([100 200 400 380]);
    motor2 = zrcaljenjeX(motor1, 0);
    motor3 = zrcaljenjeZ(motor1, 0);
    motor4 = zrcaljenjeX(motor3, 0);
    
    
    premik = [2250, 1850, 100];
    motor1 = translacija(motor1, premik);
    motor2 = translacija(motor2, premik);
    motor3 = translacija(motor3, premik);
    motor4 = translacija(motor4, premik);
    
    plot(krpa(motor1, na));
    plot(krpa(motor2, na));    
    plot(krpa(motor3, na));        
    plot(krpa(motor4, na));
    
    
    
    % še prezrcaljeno
    plot(krpa(zrcaljenjeX(motor1, 410), na));
    plot(krpa(zrcaljenjeX(motor2, 410), na));
    plot(krpa(zrcaljenjeX(motor3, 410), na));
    plot(krpa(zrcaljenjeX(motor4, 410), na));
    
    
    % še krilca v notranjosti
	na /= 3;
	krilce = 0.04 * nalozi("krilce");
    premik2 = premik + [0 370 0];
    for i = 0:20
    	premaknjen = translacija(rotacijaXplane(krilce, 0.3*i), premik2);
    	plot(krpa(premaknjen, na));
    	plot(krpa(zrcaljenjeX(premaknjen, 410), na));
    end
    
    na *= 3;
end
