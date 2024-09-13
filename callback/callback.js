
/**
 * callback
 */


//Problem statement if not using callback so last added push value not show that is why using callback


//achiving by call back

let arr =[1,2]

function a(){
    setTimeout(()=>{
        arr.forEach((data,index)=>{
            console.log(data)
        })
    },1000)
}

function b(val, callback){
    setTimeout(()=>{
        arr.push(val)
        callback()
    },2000)
}

b(3, a)
