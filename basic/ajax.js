// Example POST method implementation:
async function postRequest(
  url = "",
  data = {},
  dataSentType = "p"
) {
  let newUrl = new URL(url)
  let bodyData = "";
  if (dataSentType === "p") {
    Object.keys(data).forEach((key) =>
    newUrl.searchParams.append(key, data[key])
    );
  } else {
    bodyData = JSON.stringify(data);
  }

  // Default options are marked with *
  const response = await fetch(newUrl, {
    method: 'POST', // *GET, POST, PUT, DELETE, etc.
    mode: "cors", // no-cors, *cors, same-origin
    cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
    credentials: "same-origin", // include, *same-origin, omit
    headers: {
      //'Content-Type': 'application/json'
      // 'Content-Type': 'application/x-www-form-urlencoded',
    },
    redirect: "follow", // manual, *follow, error
    referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    body: JSON.stringify(data) // body data type must match "Content-Type" header
  });
  return response.json(); // parses JSON response into native JavaScript objects
}

postRequest(
  "http://localhost:9003/speServiceLocnTypeMapperServicefindByProperty",
  { propertyName: "pcdiServiceId", propertyValue: 6 }
)
  .then((data) => {
    var datasort = data.sort(function(a,b){return a - b})
    for(var key in data){
      var anOption = document.createElement("OPTION");
     
      console.log(data[key].pcdvLocTypeLocalLang);
      console.log(data[key].pcdiLocTypeId);
        console.log(data[key].pcdvLocType);
          console.log(data[key].pcdiLocTypeId);
      
  }
    console.log(datasort); // JSON data parsed by `data.json()` call
  })
  .catch((error) => console.log(error));
