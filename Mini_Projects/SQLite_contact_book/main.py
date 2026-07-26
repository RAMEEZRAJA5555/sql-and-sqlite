#we can import python file from another file in two ways:

from database import (

    init_db,
    add_contact,
    search_contact,
    delete_contact,
    list_contacts
)

#OR

"""
import database

#Then every function must be called like this:

database.init_db()

database.add_contact(name, phone, email)

database.search_contact(term)

"""

#calling the first function from database.py to make database ready

init_db()

while True:
    print("1. Add contact")
    print("2. Search contact")
    print("3. delete contact")
    print("4. list contact")
    print("5.  Exit")

    choice = input("Enter choice:")

    if choice == "1":

        enter_name = input("enter name:")
        enter_phone = input("enter phone:")
        enter_email = input("enter email:")

        #calling the add contact functions if choice is 1
        add_contact(enter_name, enter_phone, enter_email)

    elif choice == "2":

        search_name = input("Enter name to search:")  # user will enter the name for search
        rows = search_contact(search_name)            # calling the function for search_contact and store result in rows

        if rows:
            print(rows)
        else:
            print("No matching contact found.")

    elif choice == "3":

        contact_id = int(input("enter the contact_id:"))

        delete_contact(contact_id)

    elif choice == "4":

        contacts_are = list_contacts()

        if contacts_are:
            for contact in contacts_are:
                print(contact)
        else:
            print("no contacts found")

    elif choice == "5":

        print("thank u for using contact book")
        break

    else:

        print("invalid choice,please try again")