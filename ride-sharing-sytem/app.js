// Initialize data from localStorage
let users = JSON.parse(localStorage.getItem('users')) || [];
let rides = JSON.parse(localStorage.getItem('rides')) || [];

// Function to update localStorage
function updateLocalStorage() {
    localStorage.setItem('users', JSON.stringify(users));
    localStorage.setItem('rides', JSON.stringify(rides));
}

// Function to display messages
function displayMessage(message) {
    document.getElementById('output').innerText = message;
}

// Function to render available drivers
function renderDrivers() {
    const drivers = users.filter(user => user.type === 'driver');
    if (drivers.length > 0) {
        const driversList = drivers.map(driver => 
            `${driver.name} - ${driver.vehicle}`
        ).join('\n');
        displayMessage(`Available Drivers:\n${driversList}`);
    } else {
        displayMessage('No drivers available.');
    }
}

// Event listener for registration
document.getElementById('register').addEventListener('click', () => {
    const type = document.getElementById('userType').value;
    const name = document.getElementById('name').value;
    const vehicle = type === 'driver' ? document.getElementById('vehicle').value : '';

    if (name) {
        users.push({ type, name, vehicle });
        updateLocalStorage();
        displayMessage(`Registered as ${type === 'driver' ? 'Driver' : 'Rider'}: ${name}`);
    } else {
        displayMessage('Please fill in all required fields.');
    }
});

// Event listener for requesting a ride
document.getElementById('requestRide').addEventListener('click', () => {
    const pickupLocation = document.getElementById('pickupLocation').value;
    const dropoffLocation = document.getElementById('dropoffLocation').value;
    
    if (pickupLocation && dropoffLocation) {
        const rider = users.find(user => user.type === 'rider');
        if (rider) {
            rides.push({ rider: rider.name, pickupLocation, dropoffLocation });
            updateLocalStorage();
            displayMessage(`Ride requested from ${pickupLocation} to ${dropoffLocation}`);
        } else {
            displayMessage('No rider registered.');
        }
    } else {
        displayMessage('Please provide pickup and dropoff locations.');
    }
});

// Event listener for viewing available drivers
document.getElementById('viewDrivers').addEventListener('click', () => {
    renderDrivers();
});

// Event listener for viewing active rides
document.getElementById('viewActiveRides').addEventListener('click', () => {
    if (rides.length > 0) {
        const ridesList = rides.map(ride => 
            `Rider: ${ride.rider}, Pickup: ${ride.pickupLocation}, Dropoff: ${ride.dropoffLocation}`
        ).join('\n');
        displayMessage(`Active Rides:\n${ridesList}`);
    } else {
        displayMessage('No active rides.');
    }
});

// Initial message on load
displayMessage('Welcome to the Ride Sharing System. Register as a rider or driver to get started.');
