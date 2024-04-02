// const fs = require('fs');

// function removeDuplicatesFromFile(filePath) {
//     // Read file contents
//     const fileContent = fs.readFileSync(filePath, 'utf-8');

//     // Split contents into sentences (assuming sentences end with '.', '!', or '?')
//     const sentences = fileContent.split(/[.!?]\s+/);

//     // Remove duplicate sentences
//     const uniqueSentences = [...new Set(sentences)];

//     // Join unique sentences back into a single string
//     const uniqueContent = uniqueSentences.join('. ');

//     // Write unique content back to the file
//     fs.writeFileSync(filePath, uniqueContent);
// }

// // Usage
// const filePath = 'path/to/your/file.txt';
// removeDuplicatesFromFile(filePath);

// remove by line
// const fs = require('fs');

// function removeDuplicatesFromFile(filePath) {
//     // Read file contents
//     const fileContent = fs.readFileSync(filePath, 'utf-8');

//     // Split contents into lines
//     const lines = fileContent.split(/\r?\n/);
    
//     // Remove duplicate lines
//     const uniqueLines = Array.from(new Set(lines));
//     console.log(uniqueLines)
//     // Join unique lines back into a single string
//     const uniqueContent = uniqueLines.join('\n');

//     // Write unique content back to the file
//     fs.writeFileSync(filePath, uniqueContent);
// }

// // Usage
// const filePath = 'D:\\Edist2.0\\Qualiaris\\edistrict-www\\src\\main\\webapp\\WEB-INF\\messages_hi.properties';
// removeDuplicatesFromFile(filePath);


/* 
Remove by line case sensitive
*/

const fs = require('fs');

function removeDuplicateLines(filePath) {
    // Read file contents
    const fileContent = fs.readFileSync(filePath, 'utf-8');

    // Split contents into lines
    const lines = fileContent.split(/\r?\n/);

    // Create a set to store unique lines (case sensitive)
    const uniqueLines = new Set();

    // Add each line to the set
    lines.forEach(line => {
        if (!uniqueLines.has(line)) {
            uniqueLines.add(line);
        }
    });

    // Join unique lines back into a single string with line breaks
    const uniqueContent = [...uniqueLines].join('\n');

    // Write unique content back to the file
    fs.writeFileSync(filePath, uniqueContent);
}

// Usage
const filePath = 'D:\\Edist2.0\\Qualiaris\\edistrict-www\\src\\main\\webapp\\WEB-INF\\messages.properties';
removeDuplicateLines(filePath);

