// form-validation.js
var expectedCaptcha;
function generateNumericCaptcha() {
    var num1 = Math.floor(Math.random() * 10);
    var num2 = Math.floor(Math.random() * 10);
    var question = num1 + ' + ' + num2;
    
    document.getElementById('captchaQuestion').textContent = question;
    
    return num1 + num2; // Return the expected sum
}

function validateForm(w) {
e.preventDefault();
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;
    var enteredCaptcha = parseInt(document.getElementById('captchaInput').value, 10);
  

    if (username === '' || password === '') {
        alert('Please fill in both username and password.');
        return false;
    }

    if (enteredCaptcha !== expectedCaptcha) {
        alert('CAPTCHA verification failed. Please enter the correct sum.');
        expectedCaptcha = generateNumericCaptcha();
        return false;
    }
    
    // Add more validation logic as needed

    return true; // Allow form submission
}
var expectedCaptcha = generateNumericCaptcha();
// Initial generation of numeric CAPTCHA when the page 
