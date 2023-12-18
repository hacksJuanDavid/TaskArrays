// Function: Crear una tabla de profesores y ventas
Funcion TableTeachersSales(Teachers, Sales)
    Mostrar "Table of teachers sales"
    Mostrar "----------------------------------------"
    Mostrar "ID | Teachers          | Sales"
    Mostrar "----------------------------------------"
	
    // Ciclo para recorrer los datos
    Para i <- 0 Hasta 9
        Mostrar i + 1, "  | ", Teachers[i], "         | ", Sales[i]
    FinPara
	
    Mostrar "----------------------------------------"
    // Salto de línea
    Mostrar ""
FinFuncion


// Function: Create total nominal sales
Funcion TotalNominalSales(Sales)
	totalNominal <- 0
	
	// Cicle 
	Para i <- 0 Hasta  9
		totalNominal <- totalNominal + Sales[i]
	FinPara
	
	// Print
	Mostrar "Total nomina:", totalNominal
	
	// Salto de línea
    Mostrar ""
FinFuncion

// Function: Calcular el promedio de salarios
Funcion AverageNominalSales(Sales)
    totalNominal <- 0
    
    // Calcular el total de salarios
    Para i <- 0 Hasta 9
        totalNominal <- totalNominal + Sales[i]
    FinPara
    
    // Calcular el promedio (asegurarse de no dividir por cero)
    Si 10 > 0 Entonces
        promedioSalarios <- totalNominal / 10
        Mostrar "Promedio de salarios: ", promedioSalarios
    Sino
        Mostrar "No hay datos de salarios disponibles."
    FinSi
    
    // Salto de línea
    Mostrar ""
FinFuncion

// Function: Create name of teacher and sale major and minor
Funcion NameTeacherSaleMajorMinor(Teachers, Sales)
    indiceMayor <- 0
    indiceMenor <- 0
	
    // Encontrar el índice del salario más alto y más bajo
    Para i <- 0 Hasta 9
        Si Sales[i] > Sales[indiceMayor] Entonces
            indiceMayor <- i
        FinSi
		
        Si Sales[i] < Sales[indiceMenor] Entonces
            indiceMenor <- i
        FinSi
    FinPara
	
    // Mostrar el nombre del profesor y salario más alto
    Mostrar "Profesor con mayor salario: ", Teachers[indiceMayor], " - Salario: ", Sales[indiceMayor]
	
    // Mostrar el nombre del profesor y salario más bajo
    Mostrar "Profesor con menor salario: ", Teachers[indiceMenor], " - Salario: ", Sales[indiceMenor]
FinFuncion


// Main function	
Algoritmo table_of_teachers_sales
	
	
	// Create array for teachers
	Dimension Teachers(10)
	
	Teachers[0] <- "Pedro"
	Teachers[1] <- "María"
	Teachers[2] <- "Juan"
	Teachers[3] <- "Martha"
	Teachers[4] <- "Johanna"
	Teachers[5] <- "Tomas"
	Teachers[6] <- "Pedro"
	Teachers[7] <- "Claudia"
	Teachers[8] <- "Diego"
	Teachers[9] <- "Andres"
	
	// Create array for sales
	Dimension Sales(10)
	
	Sales[0] <- 1565348
	Sales[1] <- 2300000
	Sales[2] <- 2287945
	Sales[3] <- 5454670
	Sales[4] <- 4835678
	Sales[5] <- 5643568
	Sales[6] <- 2745345
	Sales[7] <- 4345667
	Sales[8] <- 2843200
	Sales[9] <- 2900000
	
	// Call function print TableTeachersSales
	TableTeachersSales(Teachers, Sales)
	
	// Call function TotalNominalSales
	TotalNominalSales(Sales)
	
	// Call function AverageNominalSales
	AverageNominalSales(Sales)
	
	// Call function NameTeacherSaleMajorMinor
	NameTeacherSaleMajorMinor(Teachers, Sales)
	
FinAlgoritmo
