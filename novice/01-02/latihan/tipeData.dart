main (){

int angkaInt = 3;
double angkaDouble = 325235235;

var one = int.parse('1');
assert(one ==1);

var onePointOne = double.parse('1.1');
assert(onePointOne ==1);

String oneAsString = 1.toString();
assert(oneAsString=="1");

String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');


var s1 = 'Single quotes work well for string literals';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to esxape to string delimiter.';
var s4 = "it's even esier to use the other deliminer.";

var s= 'string interpolation';

assert('Dart has $s, which is very handy.' ==
 'dart has string interpolation, '+ 
 'which is very handy.'
);

assert('That deserves all caps. '+
'${s.toUpperCase()} is very handy!'==
'That deserves all caps.'+ 
'STRING INTERPOLATION is very hady!');

var s5 = 'String' 
'concatenation'
"works even over line breaks";
assert(s5 == 'String concatenation workss even over '
'line breaks.');

var s6 = 'The +operator ' + 'works , as well.';
assert(s2 == 'The _operator works,as well.');


var s7 = '''
You can create 
multiple-line Strings like this one.
''';

var s8 =""" 
this is also 
a multi-line string""";

var s9 = r'In a raw string, not even \n gets spectial treatment.';

//bolean
var fullName ='';
assert(fullName.isEmpty);

var hitPoints = 0;
assert(hitPoints <= 0);

var unicorn;
assert(unicorn == null);

var iMeantToDoThis = 0/0;
assert(iMeantToDoThis.isNaN);

//list 
var list = [1,2,3];

assert (list.length ==3);
assert(list [1] == 2);

list[1]= 1;
assert(list[1]==1);

var constantList = const[1,2,3];

var list2 = [0,...?list];
assert(list2.length == 1);

var promoActive = true;
var nav = [
  'home ', 
  'forniture',
  'Plants',
  if (promoActive) 'Outlet'
];

var listOfInts = [1,2,3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
assert (listOfStrings[1] == '#1');

//sets
var halogens = {'fluorine', 'chlorine','bromine','iodine','astatine'};

var elements = <String>{};
elements.add('florine');
elements.addAll(halogens);

var gifts = {
  'first':'partridge',
  'second':'turtledoves',
  'fifth':'golden ring'
};

var nobleGases = {
  2:'helium',
  10: 'neon',
  18: 'argon',
};

var gifts2 = Map();
  gifts2['first']='partridge';
  gifts2['second']='turtledoves';
  gifts2['fifth']='golden ring';

var nobleGases2 = Map();
nobleGases2 [2] = 'helium';
nobleGases2 [10] = 'neon';
nobleGases2 [18] = 'argon';

var gifts3 = {'first': 'partridge'};
gifts3['fourth']= 'calling birds';
assert(gifts3['first']=='partridge');




}