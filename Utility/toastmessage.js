function showToast(message) {
    var toastContainer = document.getElementById('toast-container');
    var toast = document.createElement('div');
    toast.classList.add('toast');
    toast.textContent = camelCase(message)
    toastContainer.appendChild(toast);
    // Trigger reflow to enable CSS transition
    toast.offsetWidth; // This line is required to trigger a reflow
    // Show the toast
    toast.classList.add('show');
    // Hide the toast after 3 seconds
    setTimeout(function() {
        toast.classList.remove('show');
        setTimeout(function() {
            toastContainer.removeChild(toast);
        }, 500); // Wait for transition to complete before removing
    }, 3000);
}

function camelCase(str) {
    // Using replace method with regEx
    return str.replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
        return index == 0 ? word.toUpperCase() : word.toUpperCase();
    }).replace(/\s+/g, ' ');
}

addEventListener("load", function () {
    // Create a <style> element
    let style = document.createElement('style');
    style.type = 'text/css';

// Define your CSS rules
    let css = `
        #toast-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
        }
        
        .toast {
            width: 200px;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.7);
            color: #fff;
            border-radius: 5px;
            margin-bottom: 10px;
            opacity: 0; /* Initially hidden */
            transition: opacity 0.5s ease-in-out, transform 0.5s ease-in-out; /* Transition effect */
            transform: translateY(100%);
        }
        
        .toast.show {
            opacity: 1; /* Show the toast */
            transform: translateY(0); /* Move the toast from bottom to top */
        }
`;
// Set the CSS text of the <style> element
    style.appendChild(document.createTextNode(css));
// Append the <style> element to the <head> section of the document
    document.head.appendChild(style);
    let toastContainer = document.createElement("div")
    toastContainer.setAttribute("id","toast-container")
    document.body.appendChild(toastContainer);
})
