# Design a Online Rental Book System
## Features of the Book Rental System
* Book Management: Users can browse available books, view details, and rent them.
* Rental Management: Users can rent books and view their rental status.
* Storage: Using localStorage to persist books and rentals across browser sessions.
* Returning Books: Users can return rented books.


## Explanation Technical Details
* Books Data: An array of objects representing available books.
* localStorage: Used to persist the list of available books and rentals across browser sessions. The loadFromStorage and saveToStorage functions handle this.

* Renting and Returning Books:
* When a book is rented, it is moved from the list of available books to the rentals list.
* When a book is returned, it is moved back to the list of available books.
* DOM Manipulation: The displayBooks and displayRentals functions dynamically update the UI based on the current state of the books and rentals.

* Logging: Each action (rent or return) logs a message to inform the user.
## How It Works
* Book Display: The available books are displayed in the "Available Books" section.
* Rent a Book: When the user clicks the "Rent" button, the book is removed from the available list and added to the rentals list.
* Return a Book: When the user clicks the "Return" button, the book is returned to the available list.
* Persistent Storage: The rented and available books are saved in localStorage, so the data is retained even after the page is refreshed or reopened.
## Run the Project
* Open the index.html file in a browser.
* Browse available books, rent and return them, and observe how the books are moved between the "Available Books" and "Your Rentals" sections.