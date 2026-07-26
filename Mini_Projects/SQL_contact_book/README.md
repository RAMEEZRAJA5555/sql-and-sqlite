# Contact Book (Python + SQLite)

## Project Description

This is a simple Contact Book application built using **Python** and **SQLite3**.

The program allows users to:

- Add a new contact
- Search contacts by name
- Delete a contact by Contact ID
- List all contacts
- Exit the program

The project is menu-driven and stores data permanently in a SQLite database.

---

# Project Structure

```
contact_book_sql/
│
├── database.py
├── main.py
├── README.md
├── .gitignore
└── contacts.db   (created automatically when the program runs)
```

---

# Files Explanation

## database.py

This file contains **all database-related operations**.

Responsibilities:

- Connect to SQLite database
- Create the contacts table
- Insert new contacts
- Search contacts
- Delete contacts
- List all contacts
- Save changes using `commit()`
- Close the database connection

This file **does not interact with the user**. It only performs database operations.

---

## main.py

This file is responsible for **user interaction**.

Responsibilities:

- Display the menu
- Take user input
- Call functions from `database.py`
- Display results to the user
- Handle invalid menu choices
- Exit the program

This file **does not contain SQL queries**. It simply calls functions from `database.py`.

---

# Why Two Separate Files?

The project is divided into two files to keep responsibilities separate.

### database.py

Handles:

- SQLite connection
- SQL queries
- Database operations

### main.py

Handles:

- Menu
- User input
- Program flow
- Output

Keeping these responsibilities separate makes the program:

- Easier to read
- Easier to debug
- Easier to maintain
- Easier to extend in the future

This software design principle is called **Separation of Concerns (SoC)**.

---

# Database Table

Table Name:

```
contacts
```

Columns:

| Column | Type | Constraint |
|---------|------|------------|
| contact_id | INTEGER | PRIMARY KEY |
| name | TEXT | NOT NULL |
| phone | TEXT | UNIQUE |
| email | TEXT | UNIQUE |

---

# SQL Concepts Used

- CREATE TABLE
- INSERT
- SELECT
- DELETE
- WHERE
- LIKE
- ORDER BY
- Parameterized Queries (?)
- fetchall()

---

# Python Concepts Used

- Functions
- Modules
- Importing files
- while loop
- if / elif / else
- try / except
- SQLite3
- User Input
- Lists
- Returning values

---

# SQL Injection Protection

This project uses **parameterized queries**.

Example:

```python
cursor.execute(
    "SELECT * FROM contacts WHERE name LIKE ?",
    (f"%{term}%",)
)
```

Using `?` placeholders prevents SQL Injection attacks.

---

# How to Run

Run the project using:

```bash
python main.py
```

---

# Menu

```
1. Add Contact
2. Search Contact
3. Delete Contact
4. List Contacts
5. Exit
```

---

# What I Learned

- Connecting Python with SQLite
- Creating a SQLite database
- Creating tables
- Writing SQL queries inside Python
- Using parameterized queries
- Preventing SQL Injection
- Using commit() and close()
- Organizing code into multiple Python files
- Separating user interface logic from database logic
- Building a menu-driven application

---

# Author

Rameez
BS Software Engineering