// Declarar la matriz de inflación
Funcion FillInflationMatrix
    Dimension MatrizInflacion[5,6]
    
    // Llenar la matriz con números aleatorios
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Para j <- 1 Hasta 6 Con Paso 1 Hacer
            MatrizInflacion[i,j] <- Aleatorio(0.0, 10.0)
        FinPara
    FinPara
	
    // Imprimir la matriz
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Para j <- 1 Hasta 6 Con Paso 1 Hacer
            Escribir(MatrizInflacion[i,j])
            Escribir(" ")  
        FinPara
    FinPara
FinFuncion

// Imprimir la tabla de datos de inflación según se muestra en la Tabla 1
Funcion PrintInflationData(cities, matrix)
    Escribir("+-------------+-------+---------+-------+-------+-------+-------+")
    Escribir("| City        | January| February| March | April | May   | June  |")
    Escribir("+-------------+-------+---------+-------+-------+-------+-------+")
    Para i <- 1 Hasta Longitud(cities) Con Paso 1 Hacer
        Escribir("| ", cities[i], Repetir(" ", 12 - Longitud(cities[i])), " ", MatrizInflacion[i,1], "     ", MatrizInflacion[i,2], "      ", MatrizInflacion[i,3], "     ", MatrizInflacion[i,4], "     ", MatrizInflacion[i,5], "     ", MatrizInflacion[i,6], " |")
		FinPara
		Escribir("+-------------+-------+---------+-------+-------+-------+-------+")
FinFuncion

// Calcular el promedio de la inflación para todas las ciudades para un mes dado
Funcion AverageMonth(matrix, month)
    total <- 0.0
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        total <- total + matrix[i, month]
    FinPara
    retornar total / 5
FinFuncion

// Calcular el promedio de la inflación para una ciudad durante el semestre
Funcion AverageCity(cities, matrix, city)
    city_index <- 0
    Para i <- 1 Hasta Longitud(cities) Con Paso 1 Hacer
        Si cities[i] = city Entonces
            city_index <- i
        FinSi
    FinPara
	
    total <- 0.0
    Para j <- 1 Hasta 6 Con Paso 1 Hacer
        total <- total + matrix[city_index, j]
    FinPara
    retornar total / 6
FinFuncion

Algoritmo table_of_simulator_cities
    // Crear un array de ciudades
    Dimension Cities(5)
    
    Cities[1] <- "Cali"
    Cities[2] <- "Bogota"
    Cities[3] <- "Medellin"
    Cities[4] <- "Barranquilla"
    Cities[5] <- "Manizales"
    
    // Datos de inflación
    Dimension MatrizInflacion[5,6]
    
    // Llamar a FillInflationMatrix
    FillInflationMatrix()
    
    // Menú principal
    Repetir
        Escribir("\nMenu:")
        Escribir("1. Mostrar datos de inflación")
        Escribir("2. Calcular promedio de inflación por mes")
        Escribir("3. Calcular promedio de inflación por ciudad para el semestre")
        Escribir("4. Salir")
		
        opcion <- LeerEntero("Seleccione una opción: ")
		
        Segun opcion Hacer
            1: PrintInflationData(Cities, MatrizInflacion)
            2: mes <- LeerEntero("Ingrese el número de mes (1-6): ")  
                Escribir("El promedio de inflación para todas las ciudades en el mes ", mes, " es: ", AverageMonth(MatrizInflacion, mes))
            3: ciudad <- LeerCadena("Ingrese el nombre de la ciudad: ")  
                Escribir("El promedio de inflación para el semestre en ", ciudad, " es: ", AverageCity(Cities, MatrizInflacion, ciudad))
            4: Escribir("¡Hasta luego!")
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
