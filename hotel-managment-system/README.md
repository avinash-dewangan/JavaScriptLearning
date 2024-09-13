Designing a Hotel Management System involves several components and functionalities. Below, I'll provide a basic implementation using HTML, CSS, and JavaScript, which includes:

Room Booking: Users can select rooms and book them.
Check Room Availability: Users can check if rooms are available.
View Bookings: Users can view their current bookings.
LocalStorage: Store bookings and room availability persistently.
Full Code with LocalStorage
1. HTML (Structure)
html
Copy code
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="hotel-container">
        <h1>Hotel Management System</h1>
        
        <div class="room-selection">
            <h2>Select Room</h2>
            <select id="roomType">
                <option value="single">Single Room</option>
                <option value="double">Double Room</option>
                <option value="suite">Suite</option>
            </select>
            <input type="date" id="checkInDate" placeholder="Check-in Date" />
            <input type="date" id="checkOutDate" placeholder="Check-out Date" />
            <button id="bookRoom">Book Room</button>
        </div>

        <div class="availability-check">
            <h2>Check Room Availability</h2>
            <button id="checkAvailability">Check Availability</button>
        </div>

        <div class="view-bookings">
            <h2>View Bookings</h2>
            <button id="viewBookings">View Bookings</button>
        </div>

        <div class="output-area">
            <p id="output"></p>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
2. CSS (Style)
css
Copy code
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.hotel-container {
    width: 400px;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
}

h1 {
    margin-bottom: 20px;
}

h2 {
    margin-bottom: 10px;
}

select, input {
    width: calc(100% - 22px);
    padding: 10px;
    margin: 10px 0;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin: 10px 0;
}

button:hover {
    background-color: #45a049;
}

.output-area {
    margin-top: 20px;
}

.output-area p {
    font-size: 18px;
    color: #333;
}
3. JavaScript (Functionality with LocalStorage)
javascript
Copy code
// Initialize booking data from localStorage
let bookings = JSON.parse(localStorage.getItem('bookings')) || [];

// Function to update localStorage
function updateLocalStorage() {
    localStorage.setItem('bookings', JSON.stringify(bookings));
}

// Function to display messages
function displayMessage(message) {
    document.getElementById('output').innerText = message;
}

// Book a room
document.getElementById('bookRoom').addEventListener('click', () => {
    const roomType = document.getElementById('roomType').value;
    const checkInDate = document.getElementById('checkInDate').value;
    const checkOutDate = document.getElementById('checkOutDate').value;
    
    if (roomType && checkInDate && checkOutDate) {
        bookings.push({ roomType, checkInDate, checkOutDate });
        updateLocalStorage();
        displayMessage(`Room booked successfully: ${roomType} from ${checkInDate} to ${checkOutDate}`);
    } else {
        displayMessage('Please fill all fields.');
    }
});

// Check room availability
document.getElementById('checkAvailability').addEventListener('click', () => {
    const roomType = document.getElementById('roomType').value;
    
    if (roomType) {
        const isAvailable = !bookings.some(booking => booking.roomType === roomType);
        displayMessage(isAvailable ? `Room type ${roomType} is available.` : `Room type ${roomType} is not available.`);
    } else {
        displayMessage('Please select a room type.');
    }
});

// View bookings
document.getElementById('viewBookings').addEventListener('click', () => {
    if (bookings.length > 0) {
        const bookingsList = bookings.map(booking => `Room: ${booking.roomType}, Check-in: ${booking.checkInDate}, Check-out: ${booking.checkOutDate}`).join('\n');
        displayMessage(`Current bookings:\n${bookingsList}`);
    } else {
        displayMessage('No bookings found.');
    }
});

// Initial message on load
displayMessage('Welcome to the Hotel Management System. Select a room to book or check availability.');
Explanation of Features:
Room Booking:

Users can select the room type, check-in date, and check-out date.
Clicking the "Book Room" button adds the booking details to the bookings array and stores it in localStorage.
Check Room Availability:

Users can check if a specific room type is available.
This example checks if any booking exists for the selected room type.
View Bookings:

Displays a list of current bookings from localStorage.
Shows the room type and dates for each booking.
Persistent Storage:

Bookings are stored in localStorage, allowing the data to persist across page reloads or browser restarts.
Enhancements (Optional):
Advanced Availability Check: Implement a more sophisticated check to handle overlapping bookings.
User Authentication: Add a user login system to manage bookings for different users.
Admin Panel: Create an admin interface to manage room availability, view all bookings, etc.
Error Handling: Add more robust error handling and validation for user inputs.
This basic implementation provides a foundational system for managing hotel bookings and can be expanded with additional features as needed.