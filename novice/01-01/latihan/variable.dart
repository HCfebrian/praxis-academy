void main(){
  var name ='voyager I';
  var year = 2001;
  var antennaDiameter = 3.7;
  var flybyObject =['Jupiter','Saturn','Uranus','Neptune'];
  var image ={
    'tags' : ['saturn'],
    'ulr' : '//path/to/saturn.jpg'
  };

  if(year >= 2001){
    print('21st century');
  }else if(year >= 1901){
    print('20th century');
  }

  for( var object in flybyObject){
    print(object);
  }

  for(int month = 1; month<=12; month++){
    print(month);
  }

  while(year <2016){
    year +=1;
  }

 
}