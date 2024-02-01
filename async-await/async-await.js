/**
 * async, await
 */

 let arr =[1,2]

 function showData(){
     setTimeout(()=>{
         arr.forEach((data,index)=>{
             console.log(data)
         })
     },1000)
 }
 
function addData(val){
    return new Promise((resolve, reject)=>{
        setTimeout(()=>{
            arr.push(val)
            let err = false
            if(!err){
                resolve()
            }else{
                reject("Kuch Gadbad hai boss!!")
            }
        },2000)
       
    })
}

 async function start(){
    await addData(3)
    showData()  
 }
 //start();

 addData(3).then(showData).catch((e)=>console.log(e));


 