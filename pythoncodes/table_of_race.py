# Function TableClasificationCarrer
def TableClasificationCarrer(Times, Bikers):
    print("Classification of the Carrer")

    # Combine the data and sort by time
    sorted_data = sorted(
        zip(range(1, len(Times) + 1), Bikers, Times), key=lambda x: x[2]
    )

    # Print the table header
    print(
        "| {:<5} | {:<20} | {:<20} | {:<20} |".format(
            "ID", "Biker", "Time", "Time Difference"
        )
    )
    print("|" + "-" * 30 + "|" + "-" * 22 + "|" + "-" * 22 + "|" + "-" * 22 + "|")

    for i in range(len(sorted_data)):
        row = sorted_data[i]

        # Parse the time to hours, minutes, and seconds
        Hours = row[2] // 3600
        Minutes = (row[2] - Hours * 3600) // 60
        Seconds = row[2] - Hours * 3600 - Minutes * 60

        # Calculate the time difference
        if i > 0:
            time_diff = row[2] - sorted_data[i - 1][2]
            time_diff_str = "{:>2}h {:>2}m {:>2}s".format(
                time_diff // 3600, (time_diff % 3600) // 60, time_diff % 60
            )
        else:
            time_diff_str = "-"

        # Print the table row with ID and time difference
        print(
            "| {:<5} | {:<20} | {:>2}h {:>2}m {:>2}s | {:<20} |".format(
                row[0], row[1], Hours, Minutes, Seconds, time_diff_str
            )
        )


# Function main
def main():
    # Arrays
    Times = [7747, 7746, 7752, 7758, 7756, 7760, 7762, 7763, 7765, 7766]

    Bikers = [
        "Egal Bernan",
        "Remco Evenepoel",
        "Laurens De Plus",
        "Tim Merlier",
        "Thomas De Gendt",
        "Jasper De Buyst",
        "Xandro Meurisse",
        "Oliver Naesen",
        "Frederik Backaert",
        "Jonathan Castroviejo",
    ]

    # Call the function TableClasificationCarrer
    TableClasificationCarrer(Times, Bikers)


# Call the main function
main()
