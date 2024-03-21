function loadingToggle(loadingValue=0){
    let showToggle="none";
    if(loadingValue==1){
        showToggle="block";
    }
    document.querySelector(".loading").style.display=showToggle;
}

function loaderStyleCSS(){
    // Create a <style> element
    let loaderStyle = document.createElement('style');
    loaderStyle.type = 'text/css';

// Define your CSS rules
    let loaderCSS = `
       .overlay {
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            position: fixed;
            background: rgba(0, 0, 0, 0.5);
            visibility: inherit;
            opacity: 1;
        }

        .overlay__inner {
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .overlay__content {
            left: 50%;
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
        }

        .spinner {
            width: 75px;
            height: 75px;
            display: inline-block;
            border-width: 2px;
            border-color: rgba(255, 255, 255, 0.05);
            border-top-color: #fff;
            animation: spin 1s infinite linear;
            border-radius: 100%;
            border-style: solid;
        }

        @keyframes spin {
            100% {
                transform: rotate(360deg);
                -webkit-transform: rotate(360deg);
                -ms-transform: rotate(360deg);
            }
        }
`;

    // Set the CSS text of the <style> element
    loaderStyle.appendChild(document.createTextNode(loaderCSS));

// Append the <style> element to the <head> section of the document
    document.head.appendChild(loaderStyle);


// Loader HTML string
    let loaderHTML = `
<div class="loading" style="display: none;">
    <div class="overlay">
        <div class="overlay__inner">
            <div class="overlay__content"><span class="spinner"></span></div>
        </div>
    </div>
</div>
`;

// Create a temporary container element
    let tempContainer = document.createElement('div');
    tempContainer.innerHTML = loaderHTML;

// Get the loader element from the container
    let loaderElement = tempContainer.querySelector('.loading');

// Append the loader element to the body of the document
    document.body.appendChild(loaderElement);
}



addEventListener("load", function () {
    loaderStyleCSS()
})

