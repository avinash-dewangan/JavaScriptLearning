// Function to log activities
function logActivity(activity) {
    // Get existing logs from local storage
    let logs = JSON.parse(localStorage.getItem('userActivityLog')) || [];
    
    // Add new activity to the log
    logs.push({
        timestamp: new Date().toISOString(),
        activity: activity
    });
    
    // Save updated logs back to local storage
    localStorage.setItem('userActivityLog', JSON.stringify(logs));
}

// Example event listeners
document.addEventListener('click', function(event) {
    logActivity(`Clicked element: ${event.target.tagName}`);
});

document.addEventListener('keydown', function(event) {
    logActivity(`keydown element: ${event.target.tagName}`);
});

document.getElementById('sampleForm').addEventListener('submit', function(event) {
    logActivity(`Form submitted: ${event.target.id}`);
});

// View log
document.getElementById('viewLogBtn').addEventListener('click', function() {
    let logs = JSON.parse(localStorage.getItem('userActivityLog')) || [];
    let logContainer = document.getElementById('logContainer');
    
    logContainer.innerHTML = ''; // Clear previous logs
    
    logs.forEach(log => {
        let logEntry = document.createElement('div');
        logEntry.className = 'log-entry';
        logEntry.textContent = `${log.timestamp}: ${log.activity}`;
        logContainer.appendChild(logEntry);
    });
});

// Clear log
document.getElementById('clearLogBtn').addEventListener('click', function() {
    localStorage.removeItem('userActivityLog');
    document.getElementById('logContainer').innerHTML = ''; // Clear displayed logs
});
