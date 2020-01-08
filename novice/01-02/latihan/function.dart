
var _nobleGases = {
  2:'helium',
  10: 'neon',
  18: 'argon',
};

void main(){


  bool isNoble(int atomicNumber){
    return _nobleGases[atomicNumber] != null;
  }

  bool isNoble2(int atomicNumber )=>_nobleGases[atomicNumber] != null;



//named parameter
void enableFlags({bool bold, bool hidden}){

}

enableFlags(bold:true, hidden:false);



//positional parameter

String say(String from, String msg, [String device]){
  var result = '$from says $msg';
  if (device!=null){
    result = '$result with a $device';
  }
  return result;
}

say('bob','Howdy','smoke signal')==('bob says howdy with a smoke signal');

//default parameter value : named paramater
void enableFlags2({bool bold = false, bool hidden = false}){

}
enableFlags2(bold:true);


//default parameter value : positional parameter
String say2(String from, String msg, [String device = 'carrier pigeon',String mood]){
  var result = '$from says $msg';
  if (device != null){
    result = '$result with a $device';
  }
  if (mood != null){
    result = '$result (in a $mood mood)';
  }
  return result;

}

assert(say2('Bob', ' Howdy')=='Bob says Howdy with a carrier pigeon');


void printElement(int element){
  print(element);
}

var list = [1,2,3];

list.forEach(printElement);

var loudify = (msg)=> '!!! ${msg.toUpperCase()} !!!';
assert(loudify('hello')== '!!! HELLO');

var fruitList = ['apples', 'bananas','oranges'];

fruitList.forEach(
  (item)=>print('${fruitList.indexOf(item)}:$item')
);

///lexical closeures

//make function that adds 2
var add2 = makeAdder(2);
//make function that adds 4
var add4 = makeAdder(4);

assert(add2(3) == 5);
assert(add4(4) == 7);



}

//lexical closures
Function makeAdder(num addBy){
  return (num i)=> addBy + i;
}