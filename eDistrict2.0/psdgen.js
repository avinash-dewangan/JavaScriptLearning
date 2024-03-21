const axios = require('axios');
const fs = require('fs');
const puppeteer = require('puppeteer');

async function fetchDataAndGeneratePDF() {
    try {
        // Step 1: Call API
        const apiResponse = await axios.get('https://fakestoreapi.com/products');
        console.log(apiResponse)

      let data =  apiResponse.data.map((item)=>{
            return `<div><p>${item.id}</p><b>${item.title}</b></div>`
        })

        // Step 2: Generate HTML Page
        const htmlContent = `
            <html>
            <head><title>Generated Page</title></head>
            <body>
                <h1>Generated HTML Page</h1>
                <p>${data}</p>
            </body>
            </html>
        `;

        // Step 3: Save HTML Page
        fs.writeFileSync('generated_page.html', htmlContent);

        // Step 4: Convert HTML to PDF
        const browser = await puppeteer.launch();
        const page = await browser.newPage();
        await page.setContent(htmlContent);
        await page.pdf({ path: 'generated_pdf.pdf', format: 'A4' });

        // Step 5: Close browser
        await browser.close();

        console.log('PDF generated successfully.');
    } catch (error) {
        console.error('Error:', error);
    }
}

// Call the function to start the process
fetchDataAndGeneratePDF();
