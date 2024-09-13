/**
 * Call, Apply, Bind
 */

//Creating object
const obj1={
    name:"avi",
    getName:function(){
       return this.name
    }
}

const obj2 = {
    name:"ravi"
}

//Bowerrowing function obj1 to obj2
//How?

//using Call or Apply
console.log(obj1.getName.call(obj2))
console.log(obj1.getName.apply(obj2))

//first store the function then inovke
const copyOfObj = obj1.getName.bind(obj2)
console.log(copyOfObj())


/**
 * Difference Between call and apply
 */

const obj3={
    show:function (city, country){
        return name+" "+city+" "+country
    }
}


//call
console.log(obj3.show.call(obj1,"raipur","india"))

//call
console.log(obj3.show.apply(obj1,["raipur","india"]))

