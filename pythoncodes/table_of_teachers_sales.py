# Function: Create a table of teachers and sales
def TableTeachersSales(Teachers, Sales):
    print("Table of teachers and sales")

    # Print the table header
    print("| {:<10} | {:<20} |".format("Teacher", "Sales"))
    print("|" + "-" * 30 + "|" + "-" * 22 + "|")

    for i in range(len(Teachers)):
        row = Teachers[i]

        # Print the table with teacher and sales
        print("| {:<10} | {:<20} |".format(row, Sales[i]))

    # Print jump line
    print()


# Function: Create total nominal sales
def TotalNominalSales(Sales):
    print("Total nominal sales")

    #  Print the table header
    print("|{:<20} |".format("Sales total"))

    # Calculate the total nominal sales
    Total = sum(Sales)

    # Print the table with total nominal sales
    print("|{:<20} |".format(Total))

    # Print jump line
    print()

    return Total


# Function: Create Average nominal sales
def AverageNominalSales(Teachers, Total):
    print("Average nominal sales")

    #  Print the table header
    print("|{:<20} |".format("Average total"))

    # Calculate the promedio nominal sales
    Average = Total / len(Teachers)

    # Print the table with promedio nominal sales
    print("|{:<20} |".format(Average))

    # Print jump line
    print()

    return Average


# Function: Create name of teacher and sale major and minor
def NameTeacherSaleMajorMinor(Teachers, Sales):
    print("Name of teacher and sale major and minor")

    #  Print the table header
    print("|{:<20} | {:<20} |".format("Teacher", "Sale"))

    # Find the index of SaleMajor and SaleMinor
    index_major = Sales.index(max(Sales))
    index_minor = Sales.index(min(Sales))

    # Extract the values for Teacher, SaleMajor, and SaleMinor
    TeacherMajor = Teachers[index_major]
    SaleMajor = Sales[index_major]

    TeacherMinor = Teachers[index_minor]
    SaleMinor = Sales[index_minor]

    # Print the table with name of teacher and sale major
    print("|{:<20} | {:<20} |".format(TeacherMajor, SaleMajor))

    # Print another row for the teacher with the lowest sale
    print("|{:<20} | {:<20} |".format(TeacherMinor, SaleMinor))

    # Print jump line
    print()


# Function main
def main():
    # Arrays
    Teachers = [
        "Pedro",
        "María",
        "Juan",
        "Martha",
        "Johanna",
        "Tomas",
        "Pedro",
        "Claudia",
        "Diego",
        "Andres",
    ]

    Sales = [
        1565348,
        2300000,
        2287945,
        5454670,
        4835678,
        5643568,
        2745345,
        4345667,
        2843200,
        2900000,
    ]

    # Call the function TableTeachersSales
    TableTeachersSales(Teachers, Sales)

    # Call the function TotalNominalSales
    TotalNominal = TotalNominalSales(Sales)

    # Call the function PromedioNominalSales
    AverageNominalSales(Teachers, TotalNominal)

    # Call the function NameTeacherSaleMajorMinor
    NameTeacherSaleMajorMinor(Teachers, Sales)


# Call the main function
main()
