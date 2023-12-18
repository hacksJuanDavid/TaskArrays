import random


# Function to fill the inflation matrix with random decimal numbers
def fill_inflation_matrix():
    matrix = [[round(random.random() * 10, 1) for _ in range(6)] for _ in range(5)]
    return matrix


# Function to print inflation data as shown in Table 1
def print_inflation_data(cities, matrix):
    print("+-------------+-------+---------+-------+-------+-------+-------+")
    print("| City        | January| February| March | April | May   | June  |")
    print("+-------------+-------+---------+-------+-------+-------+-------+")
    for i in range(len(cities)):
        print(f"| {cities[i]:<12}", end=" ")
        for j in range(6):
            print(f"| {matrix[i][j]:<5}", end=" ")
        print("|")
    print("+-------------+-------+---------+-------+-------+-------+-------+")


# Function to calculate the average inflation for all cities for a given month
def average_month(matrix, month):
    total = sum(matrix[i][month] for i in range(5))
    return total / 5


# Function to calculate the average inflation for a city over the semester
def average_city(cities, matrix, city):
    city_index = cities.index(city)
    total = sum(matrix[city_index])
    return total / 6


# Main program
def main():
    cities = ["Cali", "Bogota", "Medellin", "Barranquilla", "Manizales"]
    inflation_data = fill_inflation_matrix()

    while True:
        print("\nMenu:")
        print("1. Show inflation data")
        print("2. Calculate average inflation by month")
        print("3. Calculate average inflation by city for the semester")
        print("4. Exit")

        option = int(input("Select an option: "))

        if option == 1:
            print_inflation_data(cities, inflation_data)
        elif option == 2:
            month = int(input("Enter the month number (1-6): ")) - 1
            print(
                f"The average inflation for all cities in month {month + 1} is: {average_month(inflation_data, month)}"
            )
        elif option == 3:
            city = input("Enter the city name: ")
            print(
                f"The average inflation for the semester in {city} is: {average_city(cities,inflation_data, city)}"
            )
        elif option == 4:
            print("Goodbye!")
            break
        else:
            print("Invalid option. Please select a valid option.")


# Call to main function
main()
