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
