// Sample book data
const booksData = [
    { id: 1, title: 'JavaScript: The Good Parts', author: 'Douglas Crockford' },
    { id: 2, title: 'Eloquent JavaScript', author: 'Marijn Haverbeke' },
    { id: 3, title: 'You Don’t Know JS', author: 'Kyle Simpson' },
    { id: 4, title: 'JavaScript & JQuery', author: 'Jon Duckett' },
    { id: 5, title: 'Learning JavaScript Design Patterns', author: 'Addy Osmani' }
];

// Helper functions to manage localStorage
//const loadFromStorage = (key) => JSON.parse(localStorage.getItem(key)) || [];
const loadFromStorage = (key) => {
    const data = localStorage.getItem(key);   
    try {
        if(data==null){
            return [];
        }else{
            return JSON.parse(data);
        }
    } catch (e) {
        console.error("Error parsing JSON:", e);
        return [];
    }
};

const saveToStorage = (key, data) => localStorage.setItem(key, JSON.stringify(data));

// Load books and rentals from localStorage
let books = loadFromStorage('books') || booksData;
if(!books.length > 0 || !books.length === 0){
    books = booksData;
}
console.log(books.length); 

let rentals = loadFromStorage('rentals');

// Function to display available books
function displayBooks() {
    const bookList = document.getElementById('bookList');
    bookList.innerHTML = ''; // Clear the book list

    books.forEach(book => {
        const bookItem = document.createElement('div');
        bookItem.classList.add('book');
        bookItem.innerHTML = `
            <span><strong>${book.title}</strong> by ${book.author}</span>
            <button onclick="rentBook(${book.id})">Rent</button>
        `;
        bookList.appendChild(bookItem);
    });
}

// Function to display rented books
function displayRentals() {
    const rentalList = document.getElementById('rentalList');
    rentalList.innerHTML = ''; // Clear the rental list

    rentals.forEach(rental => {
        const rentalItem = document.createElement('div');
        rentalItem.classList.add('book', 'rented');
        rentalItem.innerHTML = `
            <span><strong>${rental.title}</strong> by ${rental.author}</span>
            <button onclick="returnBook(${rental.id})">Return</button>
        `;
        rentalList.appendChild(rentalItem);
    });
}

// Function to rent a book
function rentBook(bookId) {
    const book = books.find(b => b.id === bookId);
    if (book) {
        rentals.push(book); // Add book to rentals
        books = books.filter(b => b.id !== bookId); // Remove book from available books

        saveToStorage('books', books); // Update localStorage
        saveToStorage('rentals', rentals);

        displayBooks(); // Update UI
        displayRentals();
        logMessage(`You rented "${book.title}"`);
    }
}

// Function to return a book
function returnBook(bookId) {
    const rental = rentals.find(r => r.id === bookId);
    if (rental) {
        books.push(rental); // Return book to available books
        rentals = rentals.filter(r => r.id !== bookId); // Remove book from rentals

        saveToStorage('books', books); // Update localStorage
        saveToStorage('rentals', rentals);

        displayBooks(); // Update UI
        displayRentals();
        logMessage(`You returned "${rental.title}"`);
    }
}

// Function to log actions
function logMessage(message) {
    const logDiv = document.getElementById('log');
    logDiv.textContent = message;
}

// Initial render
document.addEventListener('DOMContentLoaded', () => {
    displayBooks();
    displayRentals();
});
