# Primary Key and Foreign Key


## Primary Key

A primary key is a column (or a combination of columns) that uniquely identifies each record in a database table.

A primary key:

- Must contain unique values
- Cannot contain NULL values
- Only one primary key can exist in a table
- Helps in fast data searching and identification


## Example of Primary Key
    
```sql
CREATE TABLE Student(
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);
```

In this example:

```
student_id
```

is the primary key because every student has a unique ID.


Example data:

| student_id | name | age |
|------------|------|-----|
| 1 | Ali | 20 |
| 2 | Ahmed | 21 |
| 3 | Sara | 19 |

No two students can have the same `student_id`.


---


# Foreign Key

A foreign key is a column that creates a relationship between two tables.

It refers to the primary key of another table.

A foreign key:

- Connects related tables
- Maintains data consistency
- Prevents invalid data entry
- Represents relationships in a database


## Example of Foreign Key


Department Table:

```sql
CREATE TABLE Department(
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);
```


Student Table:

```sql
CREATE TABLE Student(
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    department_id INTEGER,

    FOREIGN KEY(department_id)
    REFERENCES Department(department_id)
);
```


Here:

```
Department.department_id
```

is the primary key.


```
Student.department_id
```

is the foreign key.


Relationship:

```
Department Table
        |
        |
        ↓
Student Table
```


## Primary Key vs Foreign Key

| Primary Key | Foreign Key |
|-------------|-------------|
| Uniquely identifies records | Creates relationship between tables |
| Cannot contain NULL values | Can contain NULL values (depending on design) |
| Only one primary key per table | Multiple foreign keys can exist |
| Defined in its own table | References another table's primary key |


## Real World Example

University database:


Student Table:

| student_id | name | department_id |
|------------|------|---------------|
| 1 | Ali | 10 |
| 2 | Ahmed | 20 |


Department Table:

| department_id | department_name |
|---------------|-----------------|
| 10 | Software Engineering |
| 20 | Computer Science |


The `department_id` connects both tables.


## Importance

Primary keys and foreign keys are essential for relational databases because they:

- Organize data efficiently
- Reduce duplicate information
- Maintain relationships between tables
- Improve database integrity


## Conclusion

Primary keys identify individual records, while foreign keys create connections between different tables. Together, they form the foundation of relational database design.