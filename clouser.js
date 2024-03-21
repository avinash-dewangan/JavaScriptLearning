/**
 * Clouser, Lexical Scope
 */

//Example First

function sum(a){
    let b=5   // this lexical Scope
    return function(c){
        return a+b+c;
    }
}
let store = sum(3);  //store reten the variable out side of function that is variable lexical scope
console.log(store(5))


//Example Second
function sum1(a){
    let b=5
    return{
        one:function(){
            return a+b
        },
        second:function(c){
            return a+b+c
        }
    }
}
let store1 = sum1(3)
console.log(store1.one())
console.log(store1.second(5))




             otp = cscFeedbackFormRequestDto.getOtp();
			 arn = cscFeedbackFormRequestDto.getApplicationRefNo();
			 mobile = cscFeedbackFormRequestDto.getMobileNo();
			 msg = cscFeedbackFormRequestDto.getFeedbackMessage();
			Integer rating = cscFeedbackFormRequestDto.getRating();
			Integer districtId = cscFeedbackFormRequestDto.getDistrictId();
			Integer officeId = cscFeedbackFormRequestDto.getDistrictId();
			Integer serviceId = cscFeedbackFormRequestDto.getDistrictId();
			Integer userId = cscFeedbackFormRequestDto.getDistrictId();