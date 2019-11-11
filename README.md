


![alt text](https://i.ibb.co/MB3nbnV/Screen-Shot-2019-11-10-at-11-12-51-PM.png "pup-a-lup logo")
#### Week 9 Skill Distillery Homework
## --insert url to live project here --

## Overview
The goal of this project was to create an SQL database and mapping entities to tables through a JPA project.  The JPA project was integrated with a Spring MVC and CRUD operations performed.  I chose to make my database a database of memes.  It originally started as a dog database, hence the name.


## How To Use
### **Create**
![alt text](https://i.ibb.co/LJzVzCP/Screen-Shot-2019-11-10-at-11-44-32-PM.png "start menu")
"add a meme!" allows the user to firm the first step in CRUD - create.  A modal with a form will pop up asking for top text, bottom text, an image url, font color, and type of animal.  All fields are optional.  If the user wants to upload a meme without text, that works.  If a user uploads without a picture the program will throw a backend error, but the user will just get text (if entered) with no background image.

### **Read**
When a meme is created it will bring you to that specific memes page.  From here, the other CRUD operations are performed.  Obviously, the first being read since your generated meme is shown.

The meme is created by nesting text in a div element that has a background image.

### **Update**
![alt text](https://i.ibb.co/dQPPpq4/Screen-Shot-2019-11-10-at-11-53-00-PM.png "update and delete menu")
Update shows a similar menu to create.  However the form is populated with the current values to prevent user error when updating.  Any of the features may be updated.  When updated, the specific meme page will refresh with the update.

## **Delete**
A warning message pops up to make sure the user wants to delete the image, since it is permanent.  Once delete is selected the user will be returned to the main page with a success alert.

## Download image
The user may click the download button.  This will cause a modal to popup with a downloadable version of the meme.  

## Search
On the main menu is a search function.  The search will look at any text that was entered as well as the animal type.  It will return all items that match the search through a `List<Memes>`.


## Technologies and Topics Applied
1. **JUnit** - JUnit 5 was primarily used to test if entity mapping was successful.  A test case was written for each property of an object at the start of the development process.  This really helped to expedite solving early errors.

2. **SQL databases** - An SQL database with a single table was created for this project.

3. **MySQL Workbench** - MySQL Workbench was used to created the database and the table used.  The database was saved and forward engineered.

4. **Java Persistence API** - JPA was utilized to map entities.  After mapped and tested, it was integrated to a Spring MVC project.

5. **Spring MVC** - The Spring MVC project used DAO's and controller methods in order to relay information to the front end.

6. **CRUD** - There are controller methods and DAO's to create, read, update, and destroy.  

6. **JSTL** - JSTL was used for looping (populating lists of memes), and it was used in order to print the user inputs.


## Stretch Goals
Memes are created by nested text in a div element with a background.  It would be cool to use generated memes elsewhere, so creating a downloadable image was a stretch goal.  As previously mentioned, html2canvas was instrumental in this, and it took no time to implement.


## Future Possibilities
Another goal of mine that I thought would be cool would be to do a direct upload to imgbb.com through their API.  That unfortunately returns JSON, which I do not know how to read into the controllers... yet.  Maybe in the future.  I left two spots in the `memesdb` for the possibility.

An easier more attainable goal that I may add later is adding cookies/ sessions so that users can only delete and edit memes they created.


## Lessons Learned
This was the first project where I made unit tests at the beginning.  There were a few times I had null pointer exceptions, and the unit tests really helped figuring out where the problem was.

The project allowed me to understand `ModelAndView` much better.  This time I was able to return error messages on the same page or home page if something went wrong.  That is opposed to redirecting to an error page like on the film query project.
