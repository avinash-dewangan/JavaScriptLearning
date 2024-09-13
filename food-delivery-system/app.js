// Initialize cart and order history from localStorage
let cart = JSON.parse(localStorage.getItem('cart')) || [];
let orders = JSON.parse(localStorage.getItem('orders')) || [];

// Function to update localStorage
function updateLocalStorage() {
    localStorage.setItem('cart', JSON.stringify(cart));
    localStorage.setItem('orders', JSON.stringify(orders));
}

// Function to display messages
function displayMessage(message) {
    document.getElementById('output').innerText = message;
}

// Function to render cart items
function renderCart() {
    const cartItems = document.getElementById('cartItems');
    cartItems.innerHTML = '';
    cart.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `${item.name} - $${item.price}`;
        cartItems.appendChild(li);
    });
}

// Event listener for adding items to the cart
document.querySelectorAll('.add-to-cart').forEach(button => {
    button.addEventListener('click', () => {
        const item = button.getAttribute('data-item');
        const price = parseFloat(button.getAttribute('data-price'));
        cart.push({ name: item, price: price });
        updateLocalStorage();
        renderCart();
        displayMessage(`${item} added to cart.`);
    });
});

// Event listener for placing an order
document.getElementById('placeOrder').addEventListener('click', () => {
    if (cart.length > 0) {
       let carts=  cart.map((item, index) => {
            return{
                name: item.name,
                price: item.price,
                timestamp: new Date().toISOString()
            }
        });
        orders.push(...carts);
        cart = [];
        updateLocalStorage();
        renderCart();
        displayMessage('Order placed successfully.');
    } else {
        displayMessage('Your cart is empty.');
    }
});

// Event listener for viewing order history
document.getElementById('viewOrders').addEventListener('click', () => {
    if (orders.length > 0) {
        const ordersList = orders.map(order => `${order.timestamp} - ${order.name} - $${order.price}`).join('\n');
        displayMessage(`Order History:\n${ordersList}`);
    } else {
        displayMessage('No orders found.');
    }
});

// Render cart on initial load
renderCart();
