# Exercises: PostgreSQL Introduction

## Data Types and Table Basics  
This document defines the exercise assignments for the PostgreSQL course @ Software University.  
Submit your solutions in the SoftUni Judge Contest.

As you know, the former supervillain Gru is now the leader of the Minions. Given their large number, he needs your help to create a database to store important information for them.

---

### 0. Create a Database
Use a SQL query to create a new database named `minions_db`.

---

### 1. Create a Table
In the newly created database, write a SQL statement to create a table named `minions` with the following columns:
- `id` - primary key, auto-incremented.
- `name` - max length of 30 characters.
- `age` - whole number.

Submit your query for this task in the Judge system.

---

### 2. Rename the Table
Rename the table `minions` to `minions_info`.  
Submit your query for this task in the Judge system.

---

### 3. Alter the Table
Add new columns to the `minions_info` table:
- `code` - exactly 4 characters long.
- `task` - text with no length limit.
- `salary` - numeric with 8 digits and up to 3 decimal places.

Submit your query for this task in the Judge system.

---

### 4. Rename Column
Rename the column `salary` to `banana`.  
Submit your query for this task in the Judge system.

---

### 5. Add New Columns
Add the following columns to the `minions_info` table:
- `email` - max length of 20 characters.
- `equipped` - boolean (TRUE, FALSE, or NULL). Add a constraint to disallow NULL values.

Submit your query for this task in the Judge system.

---

### 6. Create ENUM Type
Create an ENUM type named `type_mood` with the values:
- `'happy'`
- `'relaxed'`
- `'stressed'`
- `'sad'`

Add a column `mood` of type `type_mood` to the table.  
Submit your query for this task in the Judge system.

---

### 7. Set Default Values
Set default values for the following columns:
- `age` - default value `0`.
- `name` and `code` - default to an empty string.

Use `ALTER COLUMN` to update these columns.  
Submit your query for this task in the Judge system.

---

### 8. Add Constraints
Add constraints to the following columns:
- `id` and `email` - should be UNIQUE (constraint name: `unique_constraint`).
- `banana` - should be greater than `0` (constraint name: `banana_check`).

Submit your query for this task in the Judge system.

---

### 9. Change Column’s Data Type
Change the data type of the column `task` to limit its length to 150 characters.  
Submit your query for this task in the Judge system.

---

### 10. Drop Constraint
Remove the constraint that prevents the column `equipped` from having NULL values.  
Submit your query for this task in the Judge system.

---

### 11. Remove Column
Write a query to DROP the column `age` from the table.  
Submit your query for this task in the Judge system.

---

### 12. Table Birthdays
Create a new table `minions_birthdays` with the following columns:
- `id` - UNIQUE.
- `name` - max length of 50 characters.
- `date_of_birth` - type DATE.
- `age`.
- `present` - max length of 100 characters.
- `party` - type TIMESTAMPTZ (date and time with time zone).

Add appropriate constraints.  
Submit your query for this task in the Judge system.

---

### 13. Insert Into
Insert the following data into the `minions_info` table:

| name    | code  | task                          | banana     | email              | equipped | mood      |
|---------|-------|-------------------------------|------------|--------------------|----------|-----------|
| Mark    | GKYA  | Graphing Points               | 3265.265   | mark@minion.com    | false    | happy     |
| Mel     | HSK   | Science Investigation         | 54784.996  | mel@minion.com     | true     | stressed  |
| Bob     | HF    | Painting                      | 35.652     | bob@minion.com     | true     | happy     |
| Darwin  | EHND  | Create a Digital Greeting     | 321.958    | darwin@minion.com  | false    | relaxed   |
| Kevin   | KMHD  | Construct with Virtual Blocks | 35214.789  | kevin@minion.com   | false    | happy     |
| Norbert | FEWB  | Testing                       | 3265.500   | norbert@minion.com | true     | sad       |
| Donny   | L     | Make a Map                    | 8.452      | donny@minion.com   | true     | happy     |

Submit your query for this task in the Judge system.

---

### 14. Select
Write a SQL query to retrieve the following columns from `minions_info`:
- `name`
- `task`
- `email`
- `banana`

Submit your query for this task in the Judge system.

---

### 15. Truncate the Table
Write a query to TRUNCATE all records in the `minions_info` table.  
Submit your query for this task in the Judge system.

---

### 16. Drop the Table
Write a query to DROP the `minions_birthdays` table.  
Submit your query for this task in the Judge system.

---

### 17. Drop the Database
Write a query to DROP the `minions_db` database.  
**Note**: Ensure no active connections to the database, or use the `FORCE` option.  
Submit your query for this task in the Judge system.
