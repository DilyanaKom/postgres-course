# Exercises: PostgreSQL Basic CRUD

**Submit your solutions** to the SoftUni [Judge Contest](https://judge.softuni.org/Contests/4103/Basic-CRUD-Exercise).

**Important:** Throughout the course, you will receive different databases that may have similar names and structures but contain different data specific to each exercise. To ensure proper execution and avoid conflicts, it is crucial to create a new database for each exercise and import the provided file with the corresponding records. By following this approach, you can accurately work on each exercise and avoid any interference or data overlap between different exercises.

To begin, the initial step is to **generate a database** known as **softuni_management_db** and subsequently **launch its query tool**. Then, you need to **download** the file **02-Exercise-Basic-CRUD-softuni_management_db.sql** from the course instance and **import it into the query section of your database**. Following the import process, you should **run the queries included in the file**. Once the queries have been executed, it is recommended that you **become familiar with the database schemas and tables** in the **softuni_management_db** before proceeding with the following tasks.

## Select Cities

Write a SQL query to retrieve **all available information** about the **"cities"**, sorted by **"id"**.

Submit your query for this task in the Judge system.

### Example

| **id** | **name** | **state** | **area** |
|--------|----------|-----------|----------|
| 1 | Redmond | Washington | 44.640 |
| 2 | Redmond | Washington | 44.640 |
| ... | ... | ... | ... |
| 4 | Calgary | Canada | 820.620 |
| ... | ... | ... | ... |
| 12 | Bellevue | [null] | 97.140 |
| ... | ... | ... | ... |
| 62 | Sofia | Bulgaria | 492.000 |
| 63 | Sofia | Bulgaria | 492.000 |

## Concatenate

From the selected already data **combine** the **"name"** and **"state"**, fields into a **single field** called **"cities_information"**. Rename the **"area"** column as **"area_km2"**.

Submit your query for this task in the Judge system.

### Example

| **cities_information** | **area_km2** |
|------------------------|--------------|
| Redmond Washington | 44.640 |
| Redmond Washington | 44.640 |
| ... | ... |
| Edmonds Washington | 25.920 |
| Seattle Washington | 367.900 |
| Bellevue Washington | 97.140 |
| ... | ... |
| Sofia Bulgaria | 492.000 |

## Remove Duplicate Rows

As you can see, the **"cities"** table contains duplicate entries. Write an SQL query to retrieve **DISTINCT** city **"name"**, sorting them in **descending alphabetical order** and **eliminating duplicates**. Do not forget to select the **"area"** column and keep the **name** of the column the **same as in the previous task**.

Submit your query for this task in the Judge system.

### Example

| **name** | **area_km2** |
|----------|--------------|
| Sofia | 492.000 |
| Snohomish | 9.640 |
| Seattle | 367.900 |
| San Francisco | 600.590 |
| Sammamish | 62.250 |
| ... | ... |
| Berlin | 891.300 |
| Bellevue | 97.140 |

## Limit Records

Develop a SQL query that selects from the **"employees"** table **"id"**, **"first_name"**, **"last_name"**, and **"job_title"**. Combine the **"first_name"** and **"last_name"** fields into a single field called **"full_name"**. Sort them by the **"first_name"** field in **ascending alphabetical order**. Finally, **LIMIT** the results to **50**.

Submit your query for this task in the Judge system.

### Example

| **id** | **full_name** | **job_title** |
|--------|---------------|---------------|
| 169 | Alan Brewer | Scheduling Assistant |
| 30 | Alejandro McGuel | Production Technician |
| 154 | Alex Nayberg | Production Technician |
| 34 | Alice Ciccu | Production Technician |
| ... | ... | ... |
| 177 | Barbara Moreland | Accountant |
| ... | ... | ... |
| 93 | Candy Spoon | Accounts Receivable Specialist |
| ... | ... | ... |
| 127 | Dan Wilson | Database Administrator |
| ... | ... | ... |
| 101 | Dan Bacon | Application Specialist |
| 251 | Danielle Tiedt | Production Technician |

## Skip Rows

Create a SQL query that selects the **"employees"** records including their **"id"**, **"first_name"**, **"middle_name"**, **"last_name"**, and **"hire_date"**. Rename the **"id"** column as **"id"**. Combine the **"first_name"**, **"middle_name"** and **"last_name"**, fields into a single field called **"full_name"**. Sort the results by the **"hire_date"** field in **ascending order**. Lastly, **OFFSET** the results by **10** rows.

**\*\*\*** Note that the **OFFSET** clause is **zero-based**, which means it skips the specified number of rows **starting from** **0**.

Submit your query for this task in the Judge system.

### Example

| **id** | **full_name** | **hire_date** |
|--------|---------------|---------------|
| 10 | Jossef H Goldberg | 2000-02-24 |
| 11 | Terri Lee Duffy | 2000-03-03 |
| 12 | Sidney M Higa | 2000-03-05 |
| 13 | Taylor R Maxwell | 2000-03-11 |
| 14 | Jeffrey L Ford | 2000-03-23 |
| ... | ... | ... |
| 124 | Barbara S Decker | [null] |
| 111 | Janeth M Esteves | [null] |

## Find the Addresses

Select **"id"**, **"number"**, **"street"** and **"city_id"** from the **"addresses"** table **WHERE "id"** is **greater than or equal to 20**. Concatenate the **"number"** and **"street"** fields into a single field called **"address"**.

Submit your query for this task in the Judge system.

### Example

| **id** | **address** | **city_id** |
|--------|-------------|-------------|
| 20 | 6118 Grasswood Circle | 5 |
| 21 | 620 Woodside Ct. | 5 |
| 22 | 6307 Greenbelt Way | 5 |
| ... | ... | ... |
| 37 | 951 Pascalstr | 31 |
| 38 | 94 rue Descartes | 30 |
| 39 | 1226 Shoe St. | 8 |
| 40 | 1399 Firestone Drive | 8 |
| ... | ... | ... |
| 290 | 7230 Vine Maple Street | 11 |
| 291 | 163 Nishava Str, ent A, apt. 1 | 32 |

## Positive Even Number

Select **"number"** and **"street"** into one column called **"address"** as well as **"city_id"**, from the **"addresses"** table where **"city_id"** is a **positive even number**. Order them by the **"city_id"** field in **ascending order**.

Submit your query for this task in the Judge system.

### Example

| **address** | **city_id** |
|-------------|-------------|
| 10203 Acorn Avenue | 2 |
| 1398 Yorba Linda | 4 |
| 1619 Stillman Court | 4 |
| ... | ... |
| 1921 Ranch Road | 6 |
| 9530 Vine Lane | 6 |
| ... | ... |
| 250 Race Court | 8 |
| 5672 Hale Dr. | 8 |
| ... | ... |
| 1245 Clay Road | 10 |
| 1748 Bird Drive | 10 |
| ... | ... |
| 94 rue Descartes | 30 |
| 163 Nishava Str, ent A, apt. 1 | 32 |

## Projects within a Date Range

Select the projects' **"name"** from the **"projects"** table where the **"start_date"** is **greater than or equal** to **'2016-06-01 07:00:00'** and the **"end_date"** is **less than** **'2023-06-04 00:00:00'**. Then, order the resulting rows in **ascending order** based on the **"start_date"** column.

Submit your query for this task in the Judge system.

### Example

| **name** | **start_date** | **end_date** |
|----------|----------------|--------------|
| Headlights - Dual-Beam | 2016-06-01 07:00:00 | 2017-07-17 08:00:00 |
| HL Fork | 2017-06-01 07:00:00 | 2018-12-01 00:00:00 |
| Headlights - Weatherproof | 2018-06-01 03:00:00 | 2019-06-09 04:00:00 |
| Cable Lock | 2019-06-01 20:00:00 | 2019-10-10 09:00:00 |
| Minipump | 2020-06-01 05:00:00 | 2023-06-01 10:00:00 |
| Taillight | 2020-06-01 21:00:00 | 2023-06-02 20:00:00 |
| Mountain | 2022-06-06 08:00:00 | 2022-06-12 04:00:00 |

## Multiple Conditions

Write an SQL query to select **"number"** and **"street"** from the **"addresses"** table where **"id"** is **BETWEEN 50** and **100 OR "number"** is less than **1000.**

Submit your query for this task in the Judge system.

### Example

| **number** | **street** |
|------------|------------|
| 108 | Lakeside Court |
| 332 | Laguna Niguel |
| 620 | Woodside Ct. |
| 951 | Pascalstr |
| 94 | rue Descartes |
| ... | ... |
| 591 | Merriewood Drive |
| 163 | Nishava Str, ent A, apt. 1 |

## Set of Values

From the **"employees_projects"** table, select **"employee_id"** and **"project_id"** where **"employee_id"** is **IN** the set of values **(200, 250)** and **"project_id"** is **NOT IN** the set of values **(50, 100)**.

Submit your query for this task in the Judge system.

### Example

| **employee_id** | **project_id** |
|-----------------|----------------|
| 200 | 3 |
| 200 | 23 |
| 200 | 37 |
| 200 | 51 |
| 250 | 77 |
| 250 | 114 |

## Compare Character Values

Retrieve the **first 20** records of the **"name"** and **"start_date"** columns from the **"projects"** table where the **"name"** is **'Mountain'**, **'Road'**, or **'Touring'** using the **IN** operator.

**\*\*\*** Note that using the PostgreSQL **IN** condition can improve the statement's readability and efficiency.

Submit your query for this task in the Judge system.

### Example

| **name** | **start_date** |
|----------|----------------|
| Mountain | 2002-03-05 00:00:00 |
| Mountain | 2006-10-22 19:00:00 |
| Mountain | 2002-05-11 09:57:00 |
| Road | 2001-09-07 05:00:00 |
| Road | 2002-01-08 14:00:00 |
| ... | ... |
| Touring | 2002-11-11 09:57:00 |
| Touring | 2002-11-20 11:57:00 |
| ... | ... |
| Touring | 2005-05-16 16:34:00 |
| Mountain | 2007-06-01 00:00:00 |

## Salary

Write a SQL query to find the **"full_name"**, **"job_title"** and **"salary"** of all employees whose **salary** is **12500, 14000, 23600,** or **25000**. **"full_name"** is a combination of **"first_name"** and **"last_name"** (separated with a **single space**). Order by **highest** **salary**.

Submit your query for this task in the Judge system.

### Example

| **full_name** | **job_title** | **salary** |
|---------------|---------------|------------|
| David Hamilton | Production Supervisor | 25000.000 |
| Thierry D'Hers | Tool Designer | 25000.000 |
| Janice Galvin | Tool Designer | 25000.000 |
| ... | ... | ... |
| Scott Wright | Master Scheduler | 23600.000 |
| Paul Singh | Production Technician | 14000.000 |
| Ivo Salmre | Production Technician | 14000.000 |
| ... | ... | ... |
| Kim Abercrombie | Production Technician | 12500.000 |
| ... | ... | ... |
| Steve Masters | Production Technician | 12500.000 |
| Suchitra Mohan | Production Technician | 12500.000 |

## Missing Value

Develop a SQL query to find the **first 3 employees** with their **"id"**, **"first_name"** and **"last_name"** where the **"middle_name"** is **NULL**.

Submit your query for this task in the Judge system.

### Example

| **id** | **first_name** | **last_name** |
|--------|---------------|---------------|
| 23 | David | Johnson |
| 34 | Vamsi | Kuppa |
| 53 | Tengiz | Kharatishvili |

## INSERT Departments

Write a SQL query to create a few **new records** in the **"departments"** table. You can find the values below:

**('Finance', 3),**
**('Information Services', 42),**
**('Document Control', 90),**
**('Quality Assurance', 274),**
**('Facilities and Maintenance', 218),**
**('Shipping and Receiving', 85),**
**('Executive', 109);**

Submit your query for this task in the Judge system.

### Example

| **id** | **department** | **manager_id** |
|--------|---------------|----------------|
| 1 | Engineering | 12 |
| 2 | Tool Design | 4 |
| ... | ... | ... |
| 10 | Finance | 3 |
| 11 | Information Services | 42 |
| 12 | Document Control | 90 |
| 13 | Quality Assurance | 274 |
| ... | ... | ... |
| 15 | Shipping and Receiving | 85 |
| 16 | Executive | 109 |

## New Table 

Write a SQL query to **generate a new table** named **"company_chart"** by **inserting** **data** from the **existing** **records**. Retrieve the **"full_name"** column which is a combination of the **"first_name"** and **"last_name"** columns from the **"employees"** table, and also select the **"job_title"** column, **"department_id"**, and the **"manager_id"** column.

Submit your query for this task in the Judge system.

### Example

| **full_name** | **job_title** | **department_id** | **manager_id** |
|---------------|---------------|-------------------|----------------|
| Guy Gilbert | Production Technician | 7 | 16 |
| Kevin Brown | Marketing Assistant | 4 | 6 |
| Roberto Tamburello | Engineering Manager | 1 | 12 |
| Rob Walters | Tool Designer | 2 | 3 |
| Thierry D'Hers | Tool Designer | 5 | 19 |
| ... | ... | ... | ... |
| Martin Kulov | Independent .NET Consultant | 6 | 10 |
| George Denchev | Independent Java Consultant | 6 | 1 |

## Update the Project End Date

Retrieve **all** **projects** without an **"end_date"**, and add **5** **months** to their **"start_date"**.

**\*\*\*** Note, you have the option to utilize the commutative pairs **"+ INTERVAL"** to **increase** the **"start_date"** by **5 months** and **determine the date** after this duration.

Submit your query for this task in the Judge system.

### Example

Before update

| **id** | **name** | **description** | **start_date** | **end_date** |
|--------|----------|----------------|----------------|--------------|
| 1 | Classic Vest | Research, design and development of Classic Vest. ... | 2003-06-01 12:00:00 | [null] |
| 2 | Cycling Cap | Research, design and development of Cycling Cap. ... | 2001-09-01 08:00:00 | 2003-10-01 12:00:00 |
| 3 | Full-Finger Gloves | Research, design and development of Full-Finger Gloves. ... | 2002-01-15 10:00:00 | 2003-06-02 09:00:00 |
| ... | ... | ... | ... | ... |
| 7 | HL Touring Frame | Research, design and development of HL Touring Frame. ... | 2005-05-16 16:34:00 | [null] |
| 8 | LL Mountain Frame | Research, design and development of LL Mountain Frame. ... | 2002-11-20 09:57:00 | 2003-06-01 16:30:00 |
| ... | ... | ... | ... | ... |
| 10 | LL Touring Frame | Research, design and development of LL Touring Frame. ... | 2005-08-20 16:34:00 | [null] |
| ... | ... | ... | ... | ... |

After update

| **id** | **name** | **description** | **start_date** | **end_date** |
|--------|----------|----------------|----------------|--------------|
| 1 | Classic Vest | Research, design and development of Classic Vest. ... | 2003-06-01 12:00:00 | 2003-11-01 12:00:00 |
| 2 | Cycling Cap | Research, design and development of Cycling Cap. ... | 2001-09-01 08:00:00 | 2003-10-01 12:00:00 |
| 3 | Full-Finger Gloves | Research, design and development of Full-Finger Gloves. ... | 2002-01-15 10:00:00 | 2003-06-02 09:00:00 |
| ... | ... | ... | ... | ... |
| 7 | HL Touring Frame | Research, design and development of HL Touring Frame. ... | 2005-05-16 16:34:00 | 2005-10-16 16:34:00 |
| 8 | LL Mountain Frame | Research, design and development of LL Mountain Frame. ... | 2002-11-20 09:57:00 | 2003-06-01 16:30:00 |
| ... | ... | ... | ... | ... |
| 10 | LL Touring Frame | Research, design and development of LL Touring Frame. ... | 2005-08-20 16:34:00 | 2006-01-20 16:34:00 |
| ... | ... | ... | ... | ... |

## Award Employees with Experience

Get all employees who were hired between January 1, 1998, and January 5, 2000. Increase their **"salary"** by **1500**. Add the prefix **"Senior"** to their **"job_title"**.

Submit your query for this task in the Judge system.

### Example

Before update

| **first_name** | **job_title** | **salary** |
|----------------|---------------|------------|
| Guy | Senior Production Technician | 12500.000 |
| Kevin | Senior Marketing Assistant | 13500.000 |
| Roberto | Senior Engineering Manager | 43300.000 |
| Rob | Senior Tool Designer | 29800.000 |
| Thierry | Tool Designer | 25000.000 |
| David | Marketing Manager | 37500.000 |

After update

| **first_name** | **job_title** | **salary** |
|----------------|---------------|------------|
| Guy | Senior Production Technician | 14000.000 |
| Kevin | Senior Marketing Assistant | 15000.000 |
| Roberto | Senior Engineering Manager | 44800.000 |
| Rob | Senior Tool Designer | 31300.000 |
| Thierry | Tool Designer | 25000.000 |
| David | Marketing Manager | 37500.000 |

## Delete Addresses 

Delete records from the **"addresses"** table where the **"city_id"** is **(5, 17, 20, 30)**.

Submit your query for this task in the Judge system.

### Example

Before delete

| **id** | **number** | **street** | **city_id** |
|--------|------------|------------|-------------|
| 1 | 108 | Lakeside Court | 5 |
| 2 | 1343 | Prospect St | 5 |
| ... | ... | ... | ... |
| 37 | 951 | Pascalstr | 31 |
| 38 | 94 | rue Descartes | 30 |
| 39 | 1226 | Shoe St. | 8 |
| 40 | 1399 | Firestone Drive | 8 |
| ... | ... | ... | ... |
| 54 | 6 | Downshire Way | 23 |
| 55 | 1411 | Ranch Drive | 15 |
| ... | ... | ... | ... |
| 62 | 1825 | Corte Del Prado | 17 |
| ... | ... | ... | ... |
| 72 | 1061 | Buskrik Avenue | 3 |
| ... | ... | ... | ... |
| 140 | 25 | 95th Ave NE | 20 |
| ... | ... | ... | ... |

After delete

| **id** | **number** | **street** | **city_id** |
|--------|------------|------------|-------------|
| 37 | 951 | Pascalstr | 31 |
| 39 | 1226 | Shoe St. | 8 |
| 40 | 1399 | Firestone Drive | 8 |
| ... | ... | ... | ... |
| 54 | 6 | Downshire Way | 23 |
| 55 | 1411 | Ranch Drive | 15 |
| ... | ... | ... | ... |
| 72 | 1061 | Buskrik Avenue | 3 |
| ... | ... | ... | ... |

## Create a View

Create a view named **"view_company_chart"** that selects **"full_name"** and **"job_title"** for all employees whose **"manager_id"** is **184**, from the recently created table **company_chart**.

Submit your query for this task to the Judge system.

### Example

| **full_name** | **job_title** |
|---------------|---------------|
| David Johnson | Production Technician |
| Garrett Young | Production Technician |
| Susan Metters | Production Technician |
| George Li | Production Technician |
| ... | ... |
| John Frum | Production Technician |
| Jan Miksovsky | Production Technician |

## Create a View with Multiple Tables

Create a view called **"view_addresses"** that selects the **"first_name"** and **"last_name"** as **"full_name"** and **"department_id"** from the **"employees"** table and the **"number"** and **"street"** as **"address"** from the **"addresses"** table where the **"address_id"** matches the **"id"** in the **"addresses"** table. Order the results by the **"address"** column.

Submit your query for this task to the Judge system.

### Example

| **full_name** | **department_id** | **address** |
|---------------|-------------------|-------------|
| John Wood | 4 | 101 Candy Rd. |
| Garrett Vargas | 3 | 10203 Acorn Avenue |
| Carole Poland | 7 | 1061 Buskrik Avenue |
| ... | ... | ... |
| Chris Norred | 12 | 1144 Paradise Ct. |
| ... | ... | ... |
| Janice Galvin | 2 | 9906 Oak Grove Road |
| Robert Rounthwaite | 7 | 9964 North Ridge Drive |

## ALTER VIEW

**Rename** the **"view_addresses"** to a more relevant name, **"view_employee_addresses_info"**.

Submit your query for this task in the Judge system.

## DROP VIEW

You can **delete** the **"view_company_chart"** since it is no longer necessary.

Submit your query for this task in the Judge system.

## \* UPPER

Modify the **"projects"** table by changing the **"name"** column to its **uppercase** equivalent.

Submit your query for this task in the Judge system.

### Example

Before update

| **id** | **name** | **description** |
|--------|----------|----------------|
| 1 | Classic Vest | Research, design and development of Classic Vest. ... |
| 2 | Cycling Cap | Research, design and development of Cycling Cap.... |
| 3 | Full-Finger Gloves | Research, design and development of Full-Finger Gloves. ... |
| 4 | Half-Finger Gloves | Research, design and development of Half-Finger Gloves. ... |
| ... | ... | ... |

After update

| **id** | **name** | **description** |
|--------|----------|----------------|
| 1 | CLASSIC VEST | Research, design and development of Classic Vest. ... |
| 2 | CYCLING CAP | Research, design and development of Cycling Cap.... |
| 3 | FULL-FINGER GLOVES | Research, design and development of Full-Finger Gloves. ... |
| 4 | HALF-FINGER GLOVES | Research, design and development of Half-Finger Gloves. ... |
| ... | ... | ... |

## \* SUBSTRING

Create a view called **"view_initials"** that includes the **"first_name"** and **"last_name"** columns from the **"employees"** table. In addition, modify the **"first_name"** column **by extracting the first two characters** and renaming the new column as **"initial"**. Order the results by **"last_name"**.

Submit your query for this task in the Judge system.

### Example

| **initial** | **last_name** |
|-------------|---------------|
| Sy | Abbas |
| Ki | Abercrombie |
| Ha | Abolrous |
| ... | ... |
| Da | Bacon |
| ... | ... |
| Jo | Campbell |
| ... | ... |
| Ki | Zimmerman |
| Mi | Zwilling |

## \* LIKE

Write a SQL query that selects the **"name"** and **"start_date"** columns from the **"projects"** table where the **"name"** column starts with the **characters** **'MOUNT%'**. The results should be sorted by project **"id"**.

Submit your query for this task in the Judge system.

### Example

| **name** | **start_date** |
|----------|----------------|
| MOUNTAIN-100 | 2001-04-14 14:00:00 |
| MOUNTAIN | 2002-03-05 00:00:00 |
| MOUNTAIN-300 | 2002-05-10 07:00:00 |
| MOUNTAIN | 2006-10-22 19:00:00 |
| MOUNTAIN | 2002-05-11 09:57:00 |
| ... | ... |
| MOUNTAIN BOTTLE CAGE | 2014-06-01 15:00:00 |
| MOUNTAIN | 2022-06-06 08:00:00 |
