// Funtion print array Bikers
Funcion PrintBikers(Bikers)
	Para i <- 0 Hasta 9
		Mostrar "Biker ", i + 1, ": ", Bikers[i]
	Fin Para
Fin Funcion

// Funtion print array Times
Funcion PrintTimes(Times)
	Para i <- 0 Hasta 9
		Mostrar "Time", i + 1, ":", Times[i]
	FinPara
FinFuncion

// Función para convertir tiempos a horas, minutos y segundos para un arreglo de tiempos
Funcion TableClasificationCarrer(Bikers,Times)
    Definir horas, minutos, segundos, tiempoTotal Como Real
    Definir mejorTiempo Como Real
    Definir indiceGanador Como Entero
    
    Mostrar "Tabla de Clasificación"
    
    // Inicializa el mejor tiempo con un valor grande al inicio del programa
    mejorTiempo <- 999999
	
    // Recorre el arreglo de tiempos
    Para i <- 0 Hasta 9
        // Variables
        horas <- 0
        minutos <- 0 
        segundos <- 0
		
        // Obtiene el tiempo actual del arreglo
        tiempoActual <- Times[i]
		
        // Calcula horas
        horas <- tiempoActual / 3600
        // Obtiene el resto para los minutos
        minutosRestantes <- tiempoActual % 3600
        // Calcula minutos sin usar Entero()
        minutos <- minutosRestantes / 60
        // Obtiene el resto para los segundos
        segundos <- minutosRestantes % 60
		
        // Redondea los resultados a enteros
        horas <- trunc(horas)
        minutos <- trunc(minutos)
        segundos <- trunc(segundos)
		
        // Calcula el tiempo total en segundos para la clasificación
        tiempoTotal <- horas * 3600 + minutos * 60 + segundos
		
        // Actualiza el mejor tiempo y el índice del ganador
        Si tiempoTotal < mejorTiempo Entonces
            mejorTiempo <- tiempoTotal
            indiceGanador <- i
        FinSi
		
        // Muestra la salida para el tiempo actual
        Mostrar i+1, " ", Bikers[i], " en ", horas, "h ", minutos, "m ", segundos, "s"
    FinPara
	
	// Salto de linea
	Mostrar ""
	
	// Recorre el ganador
	Para indiceGanador <- 1 Hasta 1
		// Muestra al ganador al final
		Mostrar "El ganador es: ", Bikers[indiceGanador],":", trunc(mejorTiempo / 3600), "h ", trunc((mejorTiempo % 3600) / 60), "m ", trunc(mejorTiempo % 60), "s"
	FinPara
	
FinFuncion

// Main function
Algoritmo table_of_race
	
	// Create array for bikes 
    Dimension Bikers(10)
	
	Bikers[0] <- "Egal Bernan"
	Bikers[1] <- "Remco Evenepoel"
	Bikers[2] <- "Laurens De Plus"
	Bikers[3] <- "Tim Merlier"
	Bikers[4] <- "Thomas De Gendt"
	Bikers[5] <- "Jasper De Buyst"
	Bikers[6] <- "Xandro Meurisse"
	Bikers[7] <- "Oliver Naesen"
	Bikers[8] <- "Frederik Backaert"
	Bikers[9] <- "Jonathan Castroviejo"
	
	// Create array for times
	Dimension Times(10)
	
	Times[0] <- 7747
	Times[1] <- 7746
	Times[2] <- 7752
	Times[3] <- 7758
	Times[4] <- 7756
	Times[5] <- 7760
	Times[6] <- 7762
	Times[7] <- 7763
	Times[8] <- 7765
	Times[9] <- 7766
	
	// Call funtion print array Bikers
	//PrintBikers(Bikers)
	// Call funtion print array Times
	//PrintTimes(Times)
	// Call the function to parse times
	TableClasificationCarrer(Bikers,Times)
	
FinAlgoritmo
