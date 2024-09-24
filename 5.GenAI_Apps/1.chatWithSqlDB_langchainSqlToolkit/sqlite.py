import sqlite3

## Connect to sqllite
# SQL Port = 3306 , pswd = Test12345


connection = sqlite3.connect("student.db")

## Create a cursor to insert record , create table 
cursor = connection.cursor()

## create the table 
table_info = """
CREATE TABLE STUDENT(NAME VARCHAR(25),CLASS VARCHAR(25),
SECTION VARCHAR(25),MARKS INT)
"""

cursor.execute(table_info)

## Insert some more records 
cursor.execute(''' INSERT INTO STUDENT VALUES('Krish','Data Science','A',90) ''')
cursor.execute(''' INSERT INTO STUDENT VALUES('John','Data Science','B',100) ''')
cursor.execute(''' INSERT INTO STUDENT VALUES('Mukesh','Data Science','A',86) ''')
cursor.execute(''' INSERT INTO STUDENT VALUES('Jacob','DevOps','A',50) ''')
cursor.execute(''' INSERT INTO STUDENT VALUES('Dipesh','DevOps','A',35) ''')


## Display all the records
print("The inserted records are")
data =  cursor.execute('''SELECT * FROM STUDENT''')

for row in data:
    print(row)


### Commit your changes in the database
connection.commit()
connection.close()