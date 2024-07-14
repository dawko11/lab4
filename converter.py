def write_json(data, file_path):
    try:
        with open(file_path, 'w') as file:
            json.dump(data, file, indent=4)
    except Exception as e:
        print(f"Error writing JSON file: {e}")
        sys.exit(1)

def main():
    if len(sys.argv) != 3:
        print("Usage: program.exe pathFile1.x pathFile2.y")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]

    if input_file.endswith('.json'):
        data = read_json(input_file)
    else:
        print("Unsupported input file format")
        sys.exit(1)
    
    if output_file.endswith('.json'):
        write_json(data, output_file)
    else:
        print("Unsupported output file format")
        sys.exit(1)

    print(f"Converted {input_file} to {output_file}")

if __name__ == "__main__":
    main()
