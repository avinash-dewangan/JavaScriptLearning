const { Translate } = require('@google-cloud/translate').v2;

// Creates a client
const translate = new Translate();

async function translateText(text, targetLanguage) {
  try {
    // Translates the text into the target language
    const [translation] = await translate.translate(text, targetLanguage);
    console.log(`Text: ${text}`);
    console.log(`Translation: ${translation}`);
    return translation;
  } catch (error) {
    console.error('Error translating text:', error);
    throw error;
  }
}

// Example usage
const textToTranslate = 'Hello, world!';
const targetLanguage = 'fr'; // French

translateText(textToTranslate, targetLanguage)
  .then(translation => {
    console.log(`Translation: ${translation}`);
  })
  .catch(error => {
    console.error('Error:', error);
  });
