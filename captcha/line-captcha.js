// captcha.js

var canvas = document.getElementById('captchaCanvas');
var ctx = canvas.getContext('2d');
var captchaText = '';

function generateCaptcha() {
    captchaText = generateRandomString(6); // Change the length as needed
    drawCaptchaImage(captchaText);
}

function generateRandomString(length) {
    var charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    var result = "";
    for (var i = 0; i < length; i++) {
        result += charset.charAt(Math.floor(Math.random() * charset.length));
    }
    return result;
}

function drawCaptchaImage(text) {
    // Clear the canvas
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    // Draw background
    ctx.fillStyle = getRandomColor();
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Draw lines
    drawRandomLines(10);

    // Draw arcs
    drawRandomArcs(5);

    // Draw text with distortion
    ctx.font = '40px Arial';
    ctx.fillStyle = getRandomColor();
    ctx.fillText(distortText(text), 30, 80);
}

function drawRandomLines(count) {
    for (var i = 0; i < count; i++) {
        ctx.beginPath();
        ctx.moveTo(Math.random() * canvas.width, Math.random() * canvas.height);
        ctx.lineTo(Math.random() * canvas.width, Math.random() * canvas.height);
        ctx.strokeStyle = getRandomColor();
        ctx.lineWidth = 2;
        ctx.stroke();
    }
}

function drawRandomArcs(count) {
    for (var i = 0; i < count; i++) {
        ctx.beginPath();
        ctx.arc(Math.random() * canvas.width, Math.random() * canvas.height, Math.random() * 30, 0, 2 * Math.PI);
        ctx.strokeStyle = getRandomColor();
        ctx.lineWidth = 2;
        ctx.stroke();
    }
}

function distortText(text) {
    // Add distortion to the text (you can customize this function)
    return text.split('').map(function (char) {
        return char + ' ';
    }).join('');
}

function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

function validateCaptcha() {
    var enteredCaptcha = document.getElementById('captchaInput').value;

    // if (enteredCaptcha === distortText(captchaText).trim()) {
    if (enteredCaptcha === captchaText) {
        alert('CAPTCHA verification successful!'); // Replace with your logic
        generateCaptcha(); // Regenerate a new CAPTCHA
    } else {
        alert('CAPTCHA verification failed. Try again.'); // Replace with your logic
        generateCaptcha(); // Regenerate a new CAPTCHA
    }
}

function refreshCaptcha() {
    generateCaptcha();
}

// Initial generation of CAPTCHA when the page loads
generateCaptcha();
