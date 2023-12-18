### Laboratory 4

## Topic: Arrays unidiemensionales and multidimensionales

# Date: 18/12/2023

### Objectives

- Objective 1 : Create analize problems
- Objective 2 : Create a program that use arrays unidiemensionales and multidimensionales in Pseducode
- Objective 3 : Create a program that use arrays unidiemensionales and multidimensionales in Python
- Objective 4 : Create a test desktop for the programs
- Objective 5 : Create a documentation for the programs and screenshots evidence

### Materials

- Pseudocode
- Python

### Problems

# Problem 1

1. [1.5 puntos] Egal Bernan, después de coronarse campeón de Francia del 2010, compitió en Napoleón
   Natour criterium de Aalst en Bélgica. Esta competencia consiste en una única carrera.
   Los organizadores de la competencia llevan el registro de los tiempos que los competidores tardan en
   terminar la etapa, dicho registro se almacena en un arreglo unidimensional llamado tiempos. Los tiempos
   se registran en segundos. Los nombres de los ciclistas son almacenados en otro arreglo unidimensional
   llamado Ciclistas.

## Arrays

Tiempos = [7747,7746,7752,7758,7756,7760,7762,7763,7765,7766]

Ciclistas = [“Egal Bernan”, “Remco Evenepoel”,"Laurens De Plus","Tim Merlier","Thomas De Gendt","Jasper De Buyst","Xandro Meurisse","Oliver Naesen","Frederik Backaert","Jonathan Castroviejo"]

Desarrolle un programa en phyton que despliegue la tabla de clasificación de acuerdo a los tiempos
almacenados en el arreglo. Para el ganador de la competencia debe aparecer el tiempo en formato ##h
##m ##s, para los siguiente debe mostrar la diferencia en segundos con respecto al ganador de la
competencia, Como se muestra a continuación

## Table of classification

+----+-----------------------------+--------+
| Pos| Ciclista | Tiempo |
+----+-----------------------------+--------+
| 1 | Remco Evenepoel | 02h 04m 06s |
| 2 | Egan Arley Bernal Gómez | a 01.00s |
| 3 | Laurens De Plus | a 06.00s |
| 4 | Thomas De Gendt | a 10.00s |
| 5 | Tim Lerlier | a 12.00s |
| 6 | Jasper De Buyst | a 14.00s |
| 7 | Xandro Meurisse | a 16.00s |
| 8 | Oliver Naesen | a 17.00s |
| 9 | Frederik Backaert | a 19.00s |
| 10 | Jonathan Castroviejo Nicolás | a 20.00s |
+----+-----------------------------+--------+

Suponga que siempre hay 10 competidores en la competencia. El programa primero debe leer el nombre
del ciclista, seguido del tiempo tomado en la prueba. Después de leer los datos de los 10 ciclistas se debe
generar la tabla de clasificación. Desarrolle dos funciones: Una para leer los datos y la otra para generar
la tabla de clasificación.

# Problem 2

2. [1.5 puntos] El departamento de Talento Humano de la Universidad del valle, requiere un programa
   que le permita controlar los sueldos de los profesores. Para ello almacena en un arreglo unidimensional
   los nombres de los profesores, y en otro el salario.

## Arrays

Profesores = ["Pedro","María","Juan","Martha","Johanna","Tomas","Pedro","Claudia","Diego","Andres"]

Salario = [1565348,2300000,2287945,5454670,4835678,5643568,2745345,4345667,2843200,2900000]

El programa primero debe leer los nombres de los profesores y el salario asignado. Después de leer
estos datos el programa debe mostrar la siguiente salida.

• Imprimir un listado de los profesores con su correspondiente salario.
• Mostrar el total valor de la nómina a pagar
• Mostar el promedio de la nómina
• Mostrar el nombre del profesor y salario de aquel que tiene mayor salario y también el
de menor salario.

# Problem 3

3. [2 puntos] El DANE lleva un control sobre la inflación mensual del primer semestre del año 2019 a
   las ciudades más importantes de Colombia (Cali, Bogotá, Medellín, Barranquilla y Manizales). Los
   nombres de las ciudades se encuentran almacenados en un arreglo de String de tamaño 5, y la información
   sobre las inflaciones se encuentra almacenada en una matriz de tipo double de tamaño 5x6 donde cada
   fila representa una ciudad, y cada columna un mes del año.

## Matrix

+-------------+-------+-------+-------+-------+-------+-------+
| Ciudad | Enero | Febrero | Marzo | Abril | Mayo | Junio |
+-------------+-------+---------+-------+-------+-------+-------+
| Cali | 3.2 | 3.4 | 3.6 | 3.0 | 3.3 | 3.5 |
| Bogotá | 4.2 | 4.1 | 4.0 | 4.6 | 3.8 | 3.9 |
| Medellín | 3.2 | 4.0 | 3.8 | 3.3 | 4.0 | 3.9 |
| Barranquilla| 5.5 | 4.3 | 4.6 | 5.8 | 5.0 | 4.3 |
| Manizales | 5.9 | 5.4 | 3.2 | 5.0 | 4.5 | 2.5 |
+-------------+-------+-------+-------+-------+-------+-------+

Tabla 1. Inflación mensual
Se requiere un programa en Python para simular el registro de inflaciones mensuales de las ciudades, el
programa debe cumplir los siguientes requerimientos.

• Realizar una función que automáticamente llene la matriz de inflaciones con números aleatorios
decimales entre 0.0 y 10. Cada posición de la matriz representa la inflación de una ciudad en un
determinado mes. Para generar números aleatorios en Python se debe importar la librería
random. El siguiente código generara números aleatorios.

import random
x=round((random.random() \* 10), 1)
print (x)

La función random () generar número aleatorios entre 0.0 y 1.0 En el ejemplo anterior se
multiplica este número por 10. Además se usa la función round() para redondear el
número aleatorio a un decimal

• Realizar una función que imprima los datos de las inflaciones como se muestra en la tabla 1.
• Realizar una función que pida un mes y luego muestre el promedio de inflaciones en las 5 ciudades para dicho mes.
• Realizar una función que pida la ciudad y muestre el promedio de inflación de dicha ciudad en el semestre.
• El programa debe presentar al usuario un menú como el que se muestra a continuación.
