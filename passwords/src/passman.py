from cryptography.fernet import Fernet
import getpass

encryption_key = None
cipher_suite = None
passwords = {}


def encrypt_password(password):
    encrypted_password = cipher_suite.encrypt(password.encode())
    return encrypted_password


def decrypt_password(encrypted_password):
    decrypted_password = cipher_suite.decrypt(encrypted_password).decode()
    return decrypted_password


def add_password():
    key = input("Enter a key for the password: ")
    password = getpass.getpass("Enter the password: ")
    encrypted_password = encrypt_password(password)
    passwords[key] = encrypted_password


def get_password():
    key = input("Enter the key for the password: ")
    if key in passwords:
        encrypted_password = passwords[key]
        decrypted_password = decrypt_password(encrypted_password)
        print("Decrypted Password:", decrypted_password)
    else:
        print("Key not found.")


def import_entries(file_path):
    try:
        with open(file_path, 'rb') as file:
            encrypted_data = file.read()
        decrypted_data = cipher_suite.decrypt(encrypted_data)
        imported_passwords = eval(decrypted_data.decode())

        for key, encrypted_password in imported_passwords.items():
            passwords[key] = encrypted_password

        print("Entries imported successfully.")
    except FileNotFoundError:
        print("File not found.")
    except Exception as e:
        print("Error occurred while importing entries:", str(e))


def export_entries(file_path):
    try:
        with open(file_path, 'wb') as file:
            file.write(cipher_suite.encrypt(str(passwords).encode()))
        print("Entries exported successfully.")
    except Exception as e:
        print("Error occurred while exporting entries:", str(e))


def generate_symmetric_key():
    global encryption_key, cipher_suite
    encryption_key = Fernet.generate_key()
    cipher_suite = Fernet(encryption_key)


def load_symmetric_key():
    global encryption_key, cipher_suite
    encryption_key = getpass.getpass("Enter the symmetric key: ")
    cipher_suite = Fernet(encryption_key.encode())


def exit_program():
    print("Exiting...")
    exit()


def print_menu():
    print("\nMenu:")
    print("1. Add a password")
    print("2. Get a password")
    print("3. Import entries from a file")
    print("4. Export entries to a file")
    print("5. Generate a new symmetric key")
    print("6. Load a symmetric key")
    print("7. Exit")


menu_functions = {
    "1": add_password,
    "2": get_password,
    "3": lambda: import_entries(input("Enter the file path: ")),
    "4": lambda: export_entries(input("Enter the file path: ")),
    "5": generate_symmetric_key,
    "6": load_symmetric_key,
    "7": exit_program,
}


def main():
    print("Password Manager")
    print_menu()

    while True:
        choice = input("\nEnter your choice (1-7): ")
        if choice in menu_functions:
            menu_functions[choice]()
        else:
            print("Invalid choice.")

    print("Exiting...")


if __name__ == '__main__':
    main()
