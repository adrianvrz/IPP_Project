from finance import Bank
from colorama import Fore, Style
def main():
    bank = Bank()

    while True:
        print(Fore.GREEN + "\nMenú:" + Style.RESET_ALL)
        print(Fore.CYAN + "1. Crear cuenta")
        print("2. Buscar cuenta por nombre")
        print("3. Agregar transacción")
        print("4. Obtener saldo de una cuenta")
        print("5. Obtener saldo total de todas las cuentas")
        print(Fore.RED + "0. Salir" + Style.RESET_ALL)


        try:
            option = int(input(Fore.YELLOW + "\nIngrese el número de la opción que desea ejecutar: " + Style.RESET_ALL))
        except ValueError:
            print("\nPor favor, ingrese un número válido.")
            continue

        if option == 1:
            name = input("Ingrese el nombre de la cuenta: ")
            account_type = input("Ingrese el tipo de cuenta (ingreso/egreso): ")
            account = bank.create_account(name, account_type)
            if account:
                print(f"Cuenta '{name}' creada.")
            else:
                print("Ya existe una cuenta con ese nombre.")

        elif option == 2:
            name = input("Ingrese el nombre de la cuenta que desea buscar: ")
            account = bank.find_account_by_name(name)
            if account:
                print(f"Cuenta encontrada: {account.name}")
            else:
                print("Cuenta no encontrada.")

        elif option == 3:
            name = input("Ingrese el nombre de la cuenta en la que desea agregar una transacción: ")
            account = bank.find_account_by_name(name)
            if account:
                description = input("Ingrese la descripción de la transacción: ")
                try:
                    amount = float(input("Ingrese el monto de la transacción: "))
                    account.add_transaction(description, amount)
                    print("Transacción agregada.")
                except ValueError:
                    print("Por favor, ingrese un monto válido.")
            else:
                print("Cuenta no encontrada.")

        elif option == 4:
            name = input("Ingrese el nombre de la cuenta cuyo saldo desea obtener: ")
            account = bank.find_account_by_name(name)
            if account:
                balance = account.get_balance()
                print(f"Saldo de la cuenta '{name}': {balance}")
            else:
                print("Cuenta no encontrada.")

        elif option == 5:
            total_balance = bank.get_total_balance()
            print(f"Saldo total de todas las cuentas: {total_balance}")

        elif option == 6:
            print("Cuentas:")
            for account in bank.accounts:
                print(f"Nombre: {account.name}, Tipo: {account.account_type}")

        elif option == 0:
            print("Saliendo...")
            break

        else:
            print("Por favor, ingrese una opción válida.")

if __name__ == "__main__":
    main()
