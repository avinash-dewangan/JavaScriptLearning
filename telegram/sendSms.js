const botToken = '6783182109:AAGNApcmCjHHtiQQIiH2XR3rzRC-QVUGM0A';  // Replace with your actual bot token
const chatId = '996115399';      // Replace with the actual chat ID of the user
const messageText = 'Hello, this is a message from your Telegram bot!';

const apiUrl = `https://api.telegram.org/bot${botToken}/sendMessage`;

const params = {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    chat_id: chatId,
    text: messageText,
  }),
};

fetch(apiUrl, params)
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));
