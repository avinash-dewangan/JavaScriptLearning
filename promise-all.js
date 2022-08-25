const promise1 = Promise.resolve(3);
const promise2 = 42;
const promise3 = new Promise((resolve, reject) => {
    // setTimeout(() => {
        
    // }, timeout);
    setTimeout(resolve, 5000, 'foo');
});

Promise.all([promise3, promise2, promise1]).then((values) => {
    console.log(values);
});
// expected output: Array [3, 42, "foo"]


