console.log("Problem Statement");
(function timer() {
  for (var i = 0; i <= 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, 1000);
  }
})();

console.log("Solution 1");
(function timer() {
  for (var i = 0; i <= 5; i++) {
    ((i) =>
      setTimeout(() => {
        console.log(i);
      }, 1000))(i);
  }
})();



console.log("Solution 2");
(function timer() {
  for (let i = 0; i <= 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, 1000);
  }
})();

console.log("Solution 2");
(function timer() {
  for (var i = 0; i <= 5; i++) {
    delay(i);
  }
})();

function delay(i) {
  setTimeout(() => {
    console.log(i);
  }, 1000);
}
console.log("Solution 3");
(function timer() {
  for (var i = 0; i <= 5; i++) {
    function fun (i) {
      setTimeout(() => {
        console.log(i);
      }, 1000);
    }fun(i);
  }
})();