 
 async function getDigiAuthPage(){
    try {
        const rawResponse = await fetch(fullUrl, {
            method: "POST",
            headers: {
                Accept: "application/json",
                "Content-Type": "application/json",
            },
            body: formData
        });
        const result = await rawResponse.json();

    } catch (e) {
        console.log(e)
    }
 }
