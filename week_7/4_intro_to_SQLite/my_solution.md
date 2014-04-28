# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
<!-- paste your terminal output here -->
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
## Release 1: Insert Data 
<!-- paste your terminal output here -->
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 19:52:45  2014-04-26 19:52:45
2           Kai         Prout       kaiprt@gmail.com       2014-04-26 19:53:43  2014-04-26 19:53:43
sqlite>
## Release 2: Multi-line commands
<!-- paste your terminal output here -->
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: UNIQUE constraint failed: users.email
sqlite>
## Release 3: Add a column
<!-- paste your terminal output here -->
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 19:52:45  2014-04-26 19:52:45  Kimchee
2           Kai         Prout       kaiprt@gmail.com       2014-04-26 19:53:43  2014-04-26 19:53:43  The Captain
## Release 4: Change a value
<!-- paste your terminal output here -->
sqlite> UPDATE users SET nickname='Ninja Coder' WHERE id =1;
sqlite> UPDATE users SET first_name='Kimmy' WHERE id =1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-26 19:52:45  2014-04-26 19:52:45  Ninja Coder
2           Kai         Prout       kaiprt@gmail.com       2014-04-26 19:53:43  2014-04-26 19:53:43  The Captain
## Release 5: Reflect
<!-- Add your reflection here -->
At first I felt that this challenge was confusing. However, after a quick break and re-reading the material
I found that the challenge to be straightforward. I enjoy working with SQLite and find it fun working with
the terminal. I hope to learn more about SQLite in the future. In this challenge I learned how to update and
manipulate databases and I feel very confident doing so. There was nothing special with my strategy and I 
believe most individuals will have the same syntax as I. I felt that this challenge increased my comfort 
while navigating through the shell and using sqlite3. However, I a had trouble setting the "nickname" column 
to NOT NULL. I found nothing tedious in this challenge.