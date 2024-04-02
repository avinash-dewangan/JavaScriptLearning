function debounce(func, delay) {
    let timeoutId;
    
    return function() {
        const context = this;
        const args = arguments;
        
        clearTimeout(timeoutId);
        timeoutId = setTimeout(() => {
            func.apply(context, args);
        }, delay);
    };
}

const inputField = document.getElementById('inputField');
const outputDiv = document.getElementById('output');

const updateOutput = debounce(function() {
    outputDiv.textContent = inputField.value;
}, 1000); // Debounce with a delay of 1 second

// Attach the debounced function to the input field's input event
inputField.addEventListener('input', updateOutput);
