// script.js
const formJson = {
    "fields": [
        {
            "label": "Name",
            "type": "text",
            "name": "name",
            "placeholder": "Enter your name",
            "validation": {
                "required": true,
                "minLength": 3,
                "maxLength": 50
            }
        },
        {
            "label": "Email",
            "type": "email",
            "name": "email",
            "placeholder": "Enter your email",
            "validation": {
                "required": true,
                "pattern": "^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$"
            }
        },
        {
            "label": "Age",
            "type": "number",
            "name": "age",
            "placeholder": "Enter your age",
            "validation": {
                "required": true,
                "min": 1,
                "max": 120
            }
        },
        {
            "label": "Gender",
            "type": "select",
            "name": "gender",
            "options": ["Male", "Female", "Other"],
            "validation": {
                "required": true
            }
        },
        {
            "label": "Subscribe",
            "type": "checkbox",
            "name": "subscribe"
        },
        {
            "label": "Comments",
            "type": "textarea",
            "name": "comments",
            "placeholder": "Enter your comments",
            "validation": {
                "required": false
            }
        },  
      {
        "label": "Checkbox",
        "type": "checkbox",
        "name": "subscribe",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Favorite Color",
        "type": "color",
        "name": "favoriteColor",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Date of Birth",
        "type": "date",
        "name": "dob",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Meeting Time",
        "type": "datetime-local",
        "name": "meetingTime",
        "validation": {
          "required": true
        }
      },
      
      {
        "label": "Profile Picture",
        "type": "file",
        "name": "profilePicture",
        "validation": {
          "required": true
        }
      },
      {
        "type": "hidden",
        "name": "userId",
        "value": "12345"
      },
      {
        "label": "Image Input",
        "type": "image",
        "name": "imageInput",
        "src": "https://via.placeholder.com/100",
        "alt": "Submit Image"
      },
      {
        "label": "Birth Month",
        "type": "month",
        "name": "birthMonth",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Age",
        "type": "number",
        "name": "age",
        "placeholder": "Enter your age",
        "validation": {
          "required": true,
          "min": 1,
          "max": 120
        }
      },
      {
        "label": "Password",
        "type": "password",
        "name": "password",
        "validation": {
          "required": true,
          "minLength": 6
        }
      },
      {
        "label": "Gender",
        "type": "radio",
        "name": "gender",
        "options": ["Male", "Female", "Other"],
        "validation": {
          "required": true
        }
      },
      {
        "label": "Satisfaction",
        "type": "range",
        "name": "satisfaction",
        "min": 0,
        "max": 100
      },
      {
        "label": "Reset Form",
        "type": "reset"
      },
      {
        "label": "Search",
        "type": "search",
        "name": "search"
      },
      {
        "label": "Submit",
        "type": "submit"
      },
      {
        "label": "Phone Number",
        "type": "tel",
        "name": "phone",
        "validation": {
          "required": true,
          "pattern": "^\\+?[0-9]{10,15}$"
        }
      },
      {
        "label": "Username",
        "type": "text",
        "name": "username",
        "placeholder": "Enter your username",
        "validation": {
          "required": true,
          "minLength": 3,
          "maxLength": 50
        }
      },
      {
        "label": "Appointment Time",
        "type": "time",
        "name": "appointmentTime",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Website",
        "type": "url",
        "name": "website",
        "placeholder": "https://example.com",
        "validation": {
          "required": true
        }
      },
      {
        "label": "Week of the Year",
        "type": "week",
        "name": "weekOfYear",
        "validation": {
          "required": true
        }
      }
    ]
  }
  ;

function createFormField(field) {
    const formGroup = document.createElement('div');
    formGroup.className = 'form-group';

    const label = document.createElement('label');
    label.textContent = field.label || '';
    formGroup.appendChild(label);

    let input;

    switch (field.type) {
        case 'checkbox':
        case 'color':
        case 'date':
        case 'datetime-local':
        case 'email':
        case 'file':
        case 'hidden':
        case 'month':
        case 'number':
        case 'password':
        case 'radio':
        case 'range':
        case 'reset':
        case 'search':
        case 'submit':
        case 'tel':
        case 'text':  // Default input type
        case 'time':
        case 'url':
        case 'week':
            input = document.createElement('input');
            input.type = field.type;
            input.name = field.name;
            input.placeholder = field.placeholder || '';
            input.value = field.value || '';
            input.src = field.src || '';
            input.alt = field.alt || '';

            // Add validation attributes
            applyValidationAttributes(input, field.validation);

            if (field.type === 'radio' && field.options) {
                formGroup.removeChild(input); // Remove the default input
                field.options.forEach(optionText => {
                    const radioLabel = document.createElement('label');
                    const radioInput = document.createElement('input');
                    radioInput.type = 'radio';
                    radioInput.name = field.name;
                    radioInput.value = optionText.toLowerCase();
                    radioLabel.textContent = optionText;
                    formGroup.appendChild(radioInput);
                    formGroup.appendChild(radioLabel);
                });
            }
            break;

        case 'image':
            input = document.createElement('input');
            input.type = 'image';
            input.name = field.name;
            input.src = field.src;
            input.alt = field.alt;
            break;

        case 'select':
            input = document.createElement('select');
            input.name = field.name;
            field.options.forEach(optionText => {
                const option = document.createElement('option');
                option.value = optionText.toLowerCase();
                option.textContent = optionText;
                input.appendChild(option);
            });

            // Add validation attributes
            applyValidationAttributes(input, field.validation);
            break;

        case 'textarea':
            input = document.createElement('textarea');
            input.name = field.name;
            input.placeholder = field.placeholder;
            
            // Add validation attributes
            applyValidationAttributes(input, field.validation);
            break;

        default:
            break;
    }

    if (field.type !== 'radio') {
        formGroup.appendChild(input);
    }

    return formGroup;
}

function applyValidationAttributes(input, validation) {
    if (validation) {
        if (validation.required) {
            input.setAttribute('required', 'required');
        }
        if (validation.minLength) {
            input.setAttribute('minlength', validation.minLength);
        }
        if (validation.maxLength) {
            input.setAttribute('maxlength', validation.maxLength);
        }
        if (validation.pattern) {
            input.setAttribute('pattern', validation.pattern);
        }
        if (validation.min) {
            input.setAttribute('min', validation.min);
        }
        if (validation.max) {
            input.setAttribute('max', validation.max);
        }
    }
}

function generateForm(formJson) {
    const form = document.getElementById('dynamic-form');
    formJson.fields.forEach(field => {
        const formField = createFormField(field);
        form.appendChild(formField);
    });
}

function validateForm() {
    const form = document.getElementById('dynamic-form');
    const inputs = form.querySelectorAll('input, select, textarea');
    let isValid = true;

    inputs.forEach(input => {
        if (!input.checkValidity()) {
            input.style.borderColor = 'red';
            isValid = false;
        } else {
            input.style.borderColor = '';
        }
    });

    return isValid;
}

function submitForm() {
    if (validateForm()) {
        const form = document.getElementById('dynamic-form');
        const formData = new FormData(form);
        const formObject = {};
        formData.forEach((value, key) => {
            formObject[key] = value;
        });
        console.log(JSON.stringify(formObject, null, 2));
    } else {
        alert('Please correct the errors in the form.');
    }
}

generateForm(formJson);
