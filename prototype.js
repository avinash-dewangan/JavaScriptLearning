/*
Creating Object Style*/

const obj = new Object()
console.log(obj)


const obj1 = {
    name:"avinash",
    roll:2,
    getName:function(){
       return this.name
    }
}

/*Inheritance */

//Obj2 properties and function inherited from obj2 by the help of __proto__ 

const obj2 = {
    name:'amit',
    __proto__:obj1
}

//console.log(obj2)

/**
 * How to add fuction predefine Object
 */

//Creating Array Object
const arr = new Array();

//Define new function
Array.prototype.show=function(){
    return this
}

//using newly added function
const cities =["raipur","bsp"]
console.log(cities.show())

// second function adding in Array Object
Array.prototype.arrayToObj=function(){
    let obj ={}
    this.forEach((ele)=>{
        obj[ele]=ele
    })
    return obj
}
console.log(cities.arrayToObj())

/**
    Self Defind Constructor Object
 *  
 */
function MyConstructor(name){
    this.name=name
}

//Inherited properties and function from obj1 this style
MyConstructor.prototype= obj1;

//Creating Constructor Object
const obj5 = new MyConstructor("avi")

// Added new function to self created constructor function
MyConstructor.prototype.show=function(){
    return this.name
}
console.log(obj5.roll)





