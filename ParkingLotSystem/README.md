# How It Works
## HTML: 
* Provides the UI elements for entering a vehicle's license plate and size, and buttons for parking or removing vehicles. The parking spots are displayed in a grid layout.

## CSS: 
* Styles the parking lot spots, with a different color for occupied spots.

## JavaScript:

* Manages the parking lot system with Vehicle, ParkingSpot, and ParkingLot classes.
* The UI is updated whenever a vehicle parks or leaves.
* Logs are shown to inform the user of the action taken, like successful parking or vehicle removal.

## Run the Project
* Open the index.html file in a browser.
* Enter a vehicle license plate and size, then click "Park Vehicle".
* To remove a vehicle, enter the license plate and click "Remove Vehicle".
* This system provides a simple but expandable parking lot system using HTML, CSS, and JavaScript. You can * further improve it by adding more features like different parking fees, parking levels, or time-based billing.



## This example will include:

* Parking spot management.
* Handling vehicle entry and exit.
* Charging fee based on time spent in the parking lot.

1. Parking Lot System Design
We will have:

* Parking Spot Types: Different types of parking spots (e.g., small, medium, large).
* Vehicle Types: Vehicles can be small (motorcycle), medium (car), or large (truck).
* Parking Lot: The parking lot will have multiple levels with different numbers of spots for each vehicle type.
* Time-based Billing: Charge vehicles based on the time they spend in the parking lot.

## Explanation of Code

* Vehicle Class: Represents a vehicle with properties like licensePlate, vehicleSize (small, medium, large), and entryTime (when it enters the parking lot).
* ParkingSpot Class: Represents a parking spot with properties like size (small, medium, large), isOccupied, and methods for parking and leaving vehicles.
* ParkingLot Class: Manages the parking lot by handling parking spot availability across multiple levels. It searches for available spots, parks vehicles, and handles billing when vehicles leave.
## Parking Fee Calculation
* Time spent in the parking lot is calculated in minutes.
* The parking fee is calculated based on the time the vehicle has been parked using a simple rate (ratePerMinute).
## Expandability
* This system can easily be extended to include additional features like reserved parking, parking limits, different rate structures for different vehicle types, etc.