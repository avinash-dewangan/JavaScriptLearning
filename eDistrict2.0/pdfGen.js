const axios = require('axios');
const fs = require('fs');
const puppeteer = require('puppeteer');

async function fetchDataAndGeneratePDF() {
    try {
        // Step 1: Call API
        const apiResponse = await axios.get('https://fakestoreapi.com/products');

        // Step 2: Generate HTML Page
        const htmlContent = `
            <html>
            <head>
                <title>Generated Page</title>
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            </head>
            <body>
                <h1>Generated HTML Page</h1>
                <p>${JSON.stringify(apiResponse.data)}</p>
                <canvas id="myChart"></canvas>
                <script>
                    // Step 3: Generate Data for Pie Chart
                    const data = {
                        labels: ['Red', 'Blue', 'Yellow'],
                        datasets: [{
                            data: [10, 20, 30],
                            backgroundColor: ['red', 'blue', 'yellow']
                        }]
                    };

                    // Step 4: Configure Chart
                    const ctx = document.getElementById('myChart').getContext('2d');
                    const myChart = new Chart(ctx, {
                        type: 'pie',
                        data: data
                    });
                </script>
            </body>
            </html>
        `;

        // Step 5: Save HTML Page
        fs.writeFileSync('generated_page.html', htmlContent);

        // Step 6: Convert HTML to PDF
        const browser = await puppeteer.launch();
        const page = await browser.newPage();
        await page.setContent(htmlContent);
        await page.pdf({ path: 'generated_pdf.pdf', format: 'A4' });

        // Step 7: Close browser
        await browser.close();

        console.log('PDF generated successfully.');
    } catch (error) {
        console.error('Error:', error);
    }
}

// Call the function to start the process
fetchDataAndGeneratePDF();
