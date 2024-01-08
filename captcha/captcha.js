// captcha.js

function generateCaptcha() {
    var captchaChallenge = generateRandomString(6); // Change the length as needed
    document.getElementById('captchaChallenge').textContent = captchaChallenge;
    return captchaChallenge;
}

function generateRandomString(length) {
    var charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    var result = "";
    for (var i = 0; i < length; i++) {
        result += charset.charAt(Math.floor(Math.random() * charset.length));
    }
    return result;
}

function validateCaptcha() {
    var enteredCaptcha = document.getElementById('captchaInput').value;
    var generatedCaptcha = document.getElementById('captchaChallenge').textContent;

    if (enteredCaptcha === generatedCaptcha) {
        alert('CAPTCHA verification successful!'); // Replace with your logic
    } else {
        alert('CAPTCHA verification failed. Try again.'); // Replace with your logic
        generateCaptcha(); // Regenerate a new challenge
    }
}

// Initial generation of CAPTCHA when the page loads
generateCaptcha();
