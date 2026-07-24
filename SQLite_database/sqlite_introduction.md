# SQLite Introduction


## What is SQLite?

SQLite is a lightweight, serverless relational database management system (RDBMS) that allows users to store, manage, and retrieve data using SQL commands.

Unlike traditional database systems such as MySQL and PostgreSQL, SQLite does not require a separate server. The complete database is stored in a single file.


## Features of SQLite

- Serverless database system
- Zero configuration
- Lightweight and fast
- Stored in a single file
- Cross-platform support
- Supports standard SQL queries
- Easy to install and use
- Reliable and stable


## How SQLite Works

SQLite stores the entire database inside one file.

Example:

```
Student.db
```

This single file contains:

- Database tables
- Records
- Database structure
- Indexes
- Metadata


## Advantages of SQLite

- No server setup required
- Easy to use for beginners
- Portable database file
- Requires very little memory
- Suitable for small and medium applications
- Good for testing and development


## Where SQLite is Used?

SQLite is commonly used in:

- Mobile applications
- Desktop applications
- Web browsers
- Embedded systems
- Small software projects
- Learning and practicing SQL


## SQLite Database Example

A database file:

```
University.db
```

can contain multiple tables:

```
Student Table
Course Table
Enrollment Table
Department Table
```


## SQLite vs Traditional Databases

| SQLite | MySQL / PostgreSQL |
|--------|--------------------|
| Serverless | Requires database server |
| Single file storage | Multiple files and server setup |
| Easy configuration | More configuration required |
| Good for small applications | Suitable for large applications |
| Lightweight | More powerful for enterprise systems |


## SQLite Command Line Tool

SQLite provides a command-line interface called:

```
sqlite3
```

It allows users to:

- Create databases
- Create tables
- Insert data
- Run SQL queries
- View database structure


## Example SQLite Workflow

Create or open a database:

```sql
.open Student.db
```

Create a table:

```sql
CREATE TABLE Student(
    id INTEGER PRIMARY KEY,
    name TEXT
);
```

Insert data:

```sql
INSERT INTO Student VALUES(1,'Ali');
```

Display data:

```sql
SELECT * FROM Student;
```


## SQLite Database File Extension

SQLite databases are commonly saved with:

```
.db
```

or

```
.sqlite
```

Example:

```
College.db
Student.sqlite
```


## Conclusion

SQLite is a simple, powerful, and portable relational database system. It is widely used in mobile applications, embedded systems, and small projects because it is easy to set up and does not require a separate server.