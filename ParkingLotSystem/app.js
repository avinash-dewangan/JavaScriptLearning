class Vehicle {
    constructor(licensePlate, vehicleSize) {
        this.licensePlate = licensePlate;
        this.vehicleSize = vehicleSize;
        this.entryTime = null;
    }
}

class ParkingSpot {
    constructor(size) {
        this.size = size;
        this.isOccupied = false;
        this.vehicle = null;
    }

    parkVehicle(vehicle) {
        if (!this.isOccupied && this.size === vehicle.vehicleSize) {
            this.vehicle = vehicle;
            this.isOccupied = true;
            vehicle.entryTime = new Date();
            return true;
        }
        return false;
    }

    leaveVehicle() {
        if (this.isOccupied) {
            const vehicle = this.vehicle;
            const timeSpent = Math.floor((new Date() - vehicle.entryTime) / 60000); // Minutes
            this.vehicle = null;
            this.isOccupied = false;
            return { vehicle, timeSpent };
        }
        return null;
    }
}

class ParkingLot {
    constructor(levels, spotsPerLevel) {
        this.levels = levels;
        this.spotsPerLevel = spotsPerLevel;
        this.parkingSpots = this.createParkingSpots();
    }

    createParkingSpots() {
        const spots = [];
        for (let i = 0; i < this.levels; i++) {
            for (let j = 0; j < this.spotsPerLevel.small; j++) spots.push(new ParkingSpot('small'));
            for (let j = 0; j < this.spotsPerLevel.medium; j++) spots.push(new ParkingSpot('medium'));
            for (let j = 0; j < this.spotsPerLevel.large; j++) spots.push(new ParkingSpot('large'));
        }
        return spots;
    }

    findSpot(vehicle) {
        return this.parkingSpots.find(spot => !spot.isOccupied && spot.size === vehicle.vehicleSize);
    }

    parkVehicle(vehicle) {
        const spot = this.findSpot(vehicle);
        if (spot) {
            spot.parkVehicle(vehicle);
            return true;
        }
        return false;
    }

    leaveVehicle(licensePlate) {
        const spot = this.parkingSpots.find(spot => spot.isOccupied && spot.vehicle.licensePlate === licensePlate);
        if (spot) return spot.leaveVehicle();
        return null;
    }
}

// DOM manipulation and interaction with the ParkingLot system
document.addEventListener('DOMContentLoaded', () => {
    const parkingLot = new ParkingLot(1, { small: 3, medium: 3, large: 3 });
    const parkingLotDiv = document.getElementById('parkingLot');
    const logDiv = document.getElementById('log');

    // Render the parking spots in the UI
    function renderParkingLot() {
        parkingLotDiv.innerHTML = '';
        parkingLot.parkingSpots.forEach((spot, index) => {
            const spotDiv = document.createElement('div');
            spotDiv.classList.add('parking-spot');
            spotDiv.textContent = spot.isOccupied ? spot.vehicle.licensePlate : `Spot ${index + 1} (${spot.size})`;
            if (spot.isOccupied) spotDiv.classList.add('occupied');
            parkingLotDiv.appendChild(spotDiv);
        });
    }

    // Park Vehicle
    document.getElementById('parkBtn').addEventListener('click', () => {
        const licensePlate = document.getElementById('licensePlate').value;
        const vehicleSize = document.getElementById('vehicleSize').value;

        if (licensePlate && vehicleSize) {
            const vehicle = new Vehicle(licensePlate, vehicleSize);
            if (parkingLot.parkVehicle(vehicle)) {
                logDiv.textContent = `Vehicle ${licensePlate} parked.`;
            } else {
                logDiv.textContent = 'No available spot for this vehicle.';
            }
            renderParkingLot();
        } else {
            logDiv.textContent = 'Please enter all vehicle details.';
        }
    });

    // Remove Vehicle
    document.getElementById('removeBtn').addEventListener('click', () => {
        const licensePlate = document.getElementById('licensePlate').value;
        const result = parkingLot.leaveVehicle(licensePlate);

        if (result) {
            const { vehicle, timeSpent } = result;
            logDiv.textContent = `Vehicle ${vehicle.licensePlate} left. Time spent: ${timeSpent} minutes.`;
        } else {
            logDiv.textContent = 'Vehicle not found.';
        }
        renderParkingLot();
    });

    renderParkingLot();
    
});
