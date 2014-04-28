# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Name, Username, E-mail, tweets, followers, following, created_at

## Release 1: Tweet Fields
Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter?
Text characters < 140, photo option, location option, hashtags

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
- connected by the username because when you create a tweet it is graphically shown as being connected to the user. A tweet is mearly a text with an option to link a photo and your devices location. Everything is connected through the username

## Release 3: Schema Design
https://github.com/kaiprt/phase_0_unit_3/blob/master/week_7/imgs/solo_challenge.png

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
<code>
<code>SELECT username, tweets FROM profiles WHERE id = '[INSERT_ID]'; </code>
<code>SELECT username, tweets FROM tweets WHERE id = '[INSERT_ID]' AND WHERE created_at = '4/16/2014'; </code>
<code>SELECT username, tweets FROM profiles WHERE username = '[]' FROM profiles; </code>
<code>SELECT id, username FROM tweets WHERE id = '[INSERT_ID]'; </code>
## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
I felt that this was a hard solo-challenge. I think what confused me the most was the Twitter GUI and how it visually represented data. I had trouble assessing what the data was and required fields for tables and also understanding how they linked together (if it was by one key or many keys). I tried my best on this challenge and hope to get some clarity within the next few days.
