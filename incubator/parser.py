import requests
from bs4 import BeautifulSoup
import datetime


def get_input_fields(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    input_fields = {
        'Contact Information': [],
        'Personalized Responses': [],
        'Other': []
    }

    for input_tag in soup.find_all('input'):
        if 'name' in input_tag.attrs:
            name = input_tag.attrs['name']

            if 'contact' in name.lower() or 'email' in name.lower() or 'phone' in name.lower():
                input_fields['Contact Information'].append(name)
            elif 'response' in name.lower():
                input_fields['Personalized Responses'].append(name)
            else:
                input_fields['Other'].append(name)

    return input_fields


def parse_application():
    url = input("Enter the URL of the webpage: ")
    input_fields = get_input_fields(url)

    if all(len(fields) == 0 for fields in input_fields.values()):
        print("No input fields found on the webpage.")
    else:
        print("Categorized Input fields:")
        for category, fields in input_fields.items():
            if len(fields) > 0:
                print(f"\n{category}:")
                for field in fields:
                    print(field)

        save_to_file(url, input_fields)


def save_to_file(url, input_fields):
    now = datetime.datetime.now()
    date = now.strftime("%Y-%m-%d")
    title = get_title(url)

    filename = f"{title}_{date}.txt"
    with open(filename, 'w') as file:
        file.write(f"Webpage Title: {title}\n")
        file.write(f"Date: {date}\n\n")
        file.write("Categorized Input fields:\n")
        for category, fields in input_fields.items():
            if len(fields) > 0:
                file.write(f"\n{category}:\n")
                for field in fields:
                    file.write(f"{field}\n")


def load_items():
    files = []
    while True:
        try:
            filename = input("Enter the filename (or 'q' to quit): ")
            if filename == 'q':
                break
            with open(filename, 'r') as file:
                print(file.read())
                files.append(filename)
        except FileNotFoundError:
            print("File not found. Please try again.")

    return files


def main():
    previous_files = []
    while True:
        print("\nMenu:")
        print("1. Input/Parse Application")
        print("2. Print and Store Input Fields")
        print("3. Load and Print Previous Items")
        print("4. Exit")

        choice = input("Enter your choice (1, 2, 3, or 4): ")

        if choice == '1':
            parse_application()
        elif choice == '2':
            print("Option 2 selected. Fields will be printed and stored.")
            url = input("Enter the URL of the webpage: ")
            input_fields = get_input_fields(url)
            print("Categorized Input fields:")
            for category, fields in input_fields.items():
                if len(fields) > 0:
                    print(f"\n{category}:")
                    for field in fields:
                        print(field)
            save_to_file(url, input_fields)
            print("Input fields saved to file.")
        elif choice == '3':
            print("Option 3 selected. Previous items will be loaded and printed.")
            previous_files = load_items()
        elif choice == '4':
            print("Exiting...")
            break
        else:
            print("Invalid choice. Please try again.")

    print("Previous items loaded:")
    for file in previous_files:
        print(file)


if __name__ == '__main__':
    main()

    
