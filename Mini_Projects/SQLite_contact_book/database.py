import sqlite3

def init_db():
    conn=sqlite3.connect("contacts.db")
    cursor=conn.cursor()

    cursor.execute("""
                         CREATE TABLE IF NOT EXISTS contacts(
                         contact_id INTEGER PRIMARY KEY,
                         name TEXT NOT NULL,
                         phone TEXT UNIQUE,
                         email TEXT
                         );
                     """)

    conn.commit()     #for saving the changes made in code or program
    conn.close()      

def add_contact(name,phone,email):
    conn=sqlite3.connect("contacts.db")
    cursor=conn.cursor()

    try:
           #Insert a new contact safely using parameterized query
        cursor.execute("""
                   INSERT INTO contacts(name,phone,email)
                   VALUES (?,?,?)"""        #is a parametrized query and "?"" is a placeholder.
                   ,(name,phone,email,))    #It tells sqlite "Replace the ? placeholders with these Python values."
           #save the current added contact permanently
        conn.commit()
        print("contact added successfully")
        
    except sqlite3.IntegrityError:
        print("Phone number already exists. Contact was not added.")
        
    
    
    conn.close()


def search_contact(term):

    conn=sqlite3.connect("contacts.db")
    cursor=conn.cursor()


    cursor.execute("""
                       SELECT  * FROM contacts
                       WHERE name LIKE ?;""",
                       (f"%{term}%",)
                     )
    
    rows=cursor.fetchall()
    conn.close()

    return rows


def delete_contact(contact_id):

    conn=sqlite3.connect("contacts.db")
    cursor=conn.cursor()

    cursor.execute("""DELETE FROM contacts
                   WHERE contact_id=?""",
                   (contact_id,)
                    
                    )
    
    if cursor.rowcount==0:
        print("contact not found")

    else:
        conn.commit()
        print("contact deleted successfully")

    
    conn.close()


def list_contacts():

    conn=sqlite3.connect("contacts.db")
    cursor=conn.cursor()


    cursor.execute(""" 
                     SELECT * FROM contacts
                     ORDER by name;   
                    """)
    
    rows=cursor.fetchall()

    conn.close()

    return rows

