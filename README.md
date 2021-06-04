- The project is based on MVC (Model-View-controller) design pattern, where servlets are used for processing, various entities have been created for carrying the data and JSP pages are used to display this data. 

- JDBC for interacting with the database and created database for storing user credentials, blogs.

- bootstrap for making responsive webpages that can run across multiple devices.

- AJAX for fetching all the posts from the database. Can also fetch all the posts from a specific category.

- Used a hashing algorithm for saving the passwords.

- jQuery for editing the profile.



Functionalities:

- Registers the user into the database after completing the registration and saves the password  using a hashing algorithm.

- Authenticates the user by checking the user credentials from the database, if not found throws an error message.

- After logging in, User can edit the profile (can change the username and about section) as they like.

- Displays the date and time of the blog posted.

- User can post blogs related to various topics (Mobile App development, web development).

- User can search blogs related to any topic.

- After deleting the account  user credentials  as well as the posts will be deleted from the database.
