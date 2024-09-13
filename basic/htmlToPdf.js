const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  
  // Set the HTML content
  const htmlContent = `
    <!DOCTYPE html>
    <html>
      <head>
        <title>Sample Page</title>
      </head>
      <body>
        <h1>Hello, world!</h1>
        <div id="dynamicContent"></div>
        <script>
          //document.getElementById('dynamicContent').innerText = 'Generated at ' + new Date();
        async function getfile(){
            let res = await fetch('https://fakestoreapi.com/products/1')
            let result = await  res.json()
            
               document.getElementById('dynamicContent').innerText = result
        }getfile()
          
        </script>
      </body>
    </html>
  `;
  
  // Set the HTML content and convert to PDF
  await page.setContent(htmlContent);
  await page.pdf({ path: 'output.pdf' });

  await browser.close();
})();
