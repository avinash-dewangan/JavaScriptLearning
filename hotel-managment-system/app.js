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

// Function to check room availability
function checkAvailability(roomType, checkInDate, checkOutDate) {
    return !bookings.some(booking => 
        booking.roomType === roomType &&
        (new Date(booking.checkInDate) <= new Date(checkOutDate) && new Date(booking.checkOutDate) >= new Date(checkInDate))
    );
}

// Event listener for checking availability
document.getElementById('checkAvailability').addEventListener('click', () => {
    const roomType = document.getElementById('roomType').value;
    const checkInDate = document.getElementById('checkInDate').value;
    const checkOutDate = document.getElementById('checkOutDate').value;

    if (roomType && checkInDate && checkOutDate) {
        const isAvailable = checkAvailability(roomType, checkInDate, checkOutDate);
        if (isAvailable) {
            displayMessage(`Room type ${roomType} is available for the selected dates.`);
            document.getElementById('bookRoom').disabled = false; // Enable the booking button
        } else {
            displayMessage(`Room type ${roomType} is not available for the selected dates.`);
            document.getElementById('bookRoom').disabled = true; // Disable the booking button
        }
    } else {
        displayMessage('Please fill all fields.');
        document.getElementById('bookRoom').disabled = true; // Disable the booking button
    }
});

// Event listener for booking a room
document.getElementById('bookRoom').addEventListener('click', () => {
    const roomType = document.getElementById('roomType').value;
    const checkInDate = document.getElementById('checkInDate').value;
    const checkOutDate = document.getElementById('checkOutDate').value;

    if (roomType && checkInDate && checkOutDate) {
        if (checkAvailability(roomType, checkInDate, checkOutDate)) {
            bookings.push({ roomType, checkInDate, checkOutDate });
            updateLocalStorage();
            displayMessage(`Room booked successfully: ${roomType} from ${checkInDate} to ${checkOutDate}`);
            document.getElementById('bookRoom').disabled = true; // Disable the booking button after booking
        } else {
            displayMessage(`Room type ${roomType} is not available for the selected dates.`);
        }
    } else {
        displayMessage('Please fill all fields.');
    }
});

// Event listener for viewing bookings
document.getElementById('viewBookings').addEventListener('click', () => {
    if (bookings.length > 0) {
        const bookingsList = bookings.map(booking => 
            `Room: ${booking.roomType}, Check-in: ${booking.checkInDate}, Check-out: ${booking.checkOutDate}`
        ).join('\n');
        displayMessage(`Current bookings:\n${bookingsList}`);
    } else {
        displayMessage('No bookings found.');
    }
});

// Initial message on load
displayMessage('Welcome to the Hotel Management System. Check room availability before booking.');
