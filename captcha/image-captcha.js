// captcha.js

var canvas = document.getElementById('captchaCanvas');
var ctx = canvas.getContext('2d');

function generateCaptcha() {
    var captchaText = generateRandomString(6); // Change the length as needed
    drawCaptchaImage(captchaText);
    return captchaText;
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
    ctx.fillStyle = 'lightgray';
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Draw text with distortion
    ctx.font = '40px Arial';
    ctx.fillStyle = 'black';
    ctx.fillText(distortText(text), 30, 80);
}

function distortText(text) {
    // Add distortion to the text (you can customize this function)
    return text.split('').map(function (char) {
        return char + ' ';
    }).join('');
}

function validateCaptcha() {
    var enteredCaptcha = document.getElementById('captchaInput').value;
    var generatedCaptcha = distortText(captchaText);

    if (enteredCaptcha === generatedCaptcha) {
        alert('CAPTCHA verification successful!'); // Replace with your logic
        generateCaptcha(); // Regenerate a new CAPTCHA
    } else {
        alert('CAPTCHA verification failed. Try again.'); // Replace with your logic
        generateCaptcha(); // Regenerate a new CAPTCHA
    }
}

// Initial generation of CAPTCHA when the page loads
var captchaText = generateCaptcha();
