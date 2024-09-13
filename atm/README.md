# Design an ATM System
## To design an ATM system using HTML, CSS, and JavaScript with localStorage, we can simulate basic functionalities like:

* Checking balance
* Depositing money
* Withdrawing money
* Storing user transactions in localStorage
* This system won't be as complex as a real ATM, but it will give you a basic idea of how an ATM works.

## Features:
* Check Balance: Display the current balance.
* Deposit: Add money to the account.
* Withdraw: Subtract money from the account.
* Transaction History: Show a list of deposits and withdrawals.
* Store Data: Save the balance and transaction history in localStorage so the data persists even after page reload.

```

1. HTML (Structure)
html
Copy code
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="atm-container">
        <h1>ATM System</h1>
        
        <div class="atm-operations">
            <button id="checkBalance">Check Balance</button>
            <button id="deposit">Deposit</button>
            <button id="withdraw">Withdraw</button>
            <button id="transactionHistory">Transaction History</button>
        </div>

        <div class="input-area">
            <label for="amount">Enter Amount:</label>
            <input type="number" id="amount" placeholder="Amount" />
        </div>

        <div class="output-area">
            <p id="output"></p>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>

```

## 2. CSS (Style)
```

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

.atm-container {
    width: 300px;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
}

h1 {
    margin-bottom: 20px;
}

.atm-operations button {
    display: block;
    width: 100%;
    margin: 10px 0;
    padding: 10px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.atm-operations button:hover {
    background-color: #45a049;
}

.input-area {
    margin-top: 20px;
}

.input-area input {
    width: calc(100% - 22px);
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.output-area {
    margin-top: 20px;
}

.output-area p {
    font-size: 18px;
    color: #333;
}

```

## 3. JavaScript (Functionality)
```
javascript
Copy code
// Initialize balance and transaction history from localStorage
let balance = parseFloat(localStorage.getItem('balance')) || 0;
let transactionHistory = JSON.parse(localStorage.getItem('transactionHistory')) || [];

// Function to update localStorage
function updateLocalStorage() {
    localStorage.setItem('balance', balance.toFixed(2)); // Store balance with 2 decimal places
    localStorage.setItem('transactionHistory', JSON.stringify(transactionHistory));
}

// Function to display output messages
function displayMessage(message) {
    document.getElementById('output').innerText = message;
}

// Event listeners for ATM operations
document.getElementById('checkBalance').addEventListener('click', () => {
    displayMessage(`Your current balance is $${balance.toFixed(2)}`);
});

document.getElementById('deposit').addEventListener('click', () => {
    const amount = parseFloat(document.getElementById('amount').value);
    if (amount > 0) {
        balance += amount;
        transactionHistory.push(`Deposited: $${amount.toFixed(2)}`);
        updateLocalStorage();
        displayMessage(`Deposited $${amount.toFixed(2)} successfully. New balance: $${balance.toFixed(2)}`);
    } else {
        displayMessage('Please enter a valid amount.');
    }
    document.getElementById('amount').value = '';
});

document.getElementById('withdraw').addEventListener('click', () => {
    const amount = parseFloat(document.getElementById('amount').value);
    if (amount > 0 && amount <= balance) {
        balance -= amount;
        transactionHistory.push(`Withdrew: $${amount.toFixed(2)}`);
        updateLocalStorage();
        displayMessage(`Withdrew $${amount.toFixed(2)} successfully. New balance: $${balance.toFixed(2)}`);
    } else if (amount > balance) {
        displayMessage('Insufficient balance.');
    } else {
        displayMessage('Please enter a valid amount.');
    }
    document.getElementById('amount').value = '';
});

document.getElementById('transactionHistory').addEventListener('click', () => {
    if (transactionHistory.length > 0) {
        displayMessage(`Transaction History:\n${transactionHistory.join('\n')}`);
    } else {
        displayMessage('No transactions available.');
    }
});


// Update output on initial load
displayMessage(`Your current balance is $${balance.toFixed(2)}`);

```

## Explanation of Features

### Check Balance:

* Shows the current balance stored in localStorage. If no balance is found, it initializes to 0.
Deposit:

* The user inputs a valid amount to deposit, which is added to the balance and stored in localStorage. The deposit transaction is also recorded.

### Withdraw:

* The user inputs an amount to withdraw. The system checks if there is enough balance, then deducts the amount from the balance and updates the transaction history in localStorage.
Transaction History:

* Displays all previous deposits and withdrawals recorded in the system, stored in localStorage.
Persistent Storage:

* The balance and transaction history are stored in localStorage, allowing the data to persist even after page reloads or closing the browser.

### Enhancements (optional):
* Security Measures: Implement a PIN system to simulate an ATM login.
* Real-time Validation: Check for invalid inputs such as negative amounts or non-numeric values.
* User Interface: Improve the UI with better design and animations to simulate an actual ATM machine.