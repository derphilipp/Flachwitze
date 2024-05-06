import sys


def process_file(input_file, output_file):
    try:
        # Open the input file and read lines starting from line 7
        with open(input_file, "r") as file:
            content = file.readlines()[:]  # Start from line 7 (0-indexed)

        # Open the output file to write the processed content
        with open(output_file, "w") as file:
            # Process each line
            for line in content:
                # Remove leading '- ' if present
                if line.startswith("- "):
                    line = line[2:]
                # Write the line, followed by a newline - and a % in an otherwise empty line
                file.write(f"{line}%\n")
    except FileNotFoundError:
        print(f"Error: The file '{input_file}' does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file> <output_file>")
    else:
        input_file = sys.argv[1]
        output_file = sys.argv[2]
        process_file(input_file, output_file)
