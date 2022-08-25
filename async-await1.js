

let arr =[1,2]

function showData(){
    setTimeout(()=>{
        arr.forEach((data,index)=>{
            console.log(data)
        })
    },1000)
}

async function addData(val){
    setTimeout(()=>{
        arr.push(val)
        
    },2000)
    
}



addData().then(showData).catch((e)=>console.log(e));