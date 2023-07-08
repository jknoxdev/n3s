import subprocess


def list_entries():
    result = subprocess.run(["keepassxc-cli", "ls"], capture_output=True, text=True)
    return result.stdout


def create_entry():
    title = input("Enter entry title: ")
    username = input("Enter username: ")
    password = input("Enter password: ")
    subprocess.run(["keepassxc-cli", "generate", title, username, password])


def get_entry():
    title = input("Enter entry title: ")
    result = subprocess.run(["keepassxc-cli", "show", title], capture_output=True, text=True)
    return result.stdout


def update_entry():
    title = input("Enter entry title: ")
    username = input("Enter new username: ")
    password = input("Enter new password: ")
    subprocess.run(["keepassxc-cli", "edit", title, "-u", username, "-p", password])


def delete_entry():
    title = input("Enter entry title: ")
    subprocess.run(["keepassxc-cli", "rm", title])


def print_menu():
    print("\n--- KeePassXC-CLI Menu ---")
    print("1. List Entries")
    print("2. Create Entry")
    print("3. Get Entry")
    print("4. Update Entry")
    print("5. Delete Entry")
    print("0. Exit")


def main():
    while True:
        print_menu()
        choice = input("Enter your choice: ")

        if choice == "1":
            entries = list_entries()
            print(entries)
        elif choice == "2":
            create_entry()
            print("Entry created successfully.")
        elif choice == "3":
            entry = get_entry()
            print(entry)
        elif choice == "4":
            update_entry()
            print("Entry updated successfully.")
        elif choice == "5":
            delete_entry()
            print("Entry deleted successfully.")
        elif choice == "0":
            break
        else:
            print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()
