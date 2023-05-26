// void main() {
  //VARIABLE DECLARATION
  /*
  A Variable(var) is a container or parameter used to hold a
  set  of value or information that will be used later
  A Variable can be of the type 
  1. String
  2. Int
  3. double
  4. boolean(bool) = takes only true or false
  */

  //   String ann = "Sylva";
  //   int doe = 3;
  //   double ken = 3.2;
  //   bool k = true;
  //   bool l = true;

  //OPERATORS IN DART
  /*
  Operators are signs and symbols used in dart to make 
  programming easier
  Types of operators
  1. Assignment operator - "="
  2. additional operator - "+"
  3. subtraction - "-"
  4. division - "/"
  5. modulus - "%"
  6. And operator- "&&"
  7. Or operator- "||"
  8. multiplication - "*"
  9. comparison operator- "=="
  */

  //   int i = 10;
  //   int ii = 5;

  //   var ans = i + ii;
  //   print(ans);

  //   var ans2 = i - ii;
  //   print(ans2);

  //   var ans3 = i / ii;
  //   print(ans3);

  //   var ans4 = i % ii;
  //   //Modulus is the remainder after division has occured
  //   print(ans4);

  //   var ans5 = i * ii;
  //   print(ans5);

  //CONDITIONAL STATEMENTS
  /*
  These are coding syntax that are used to run a particular
  section of code depending on the condition.
  There are three types:
  1. IF statements
  2. Switch Statements
  3. Loop 
  */

  //IF Statement
  /*
  Three types of If statement
  a. if
  b. if else
  c. if else if
  */
  
//   int age = 18;
  
//   if(age > 19 && age <= 20){
//     print ("You are a Teenager");
//   } else {
//     print ("Kids Cant use this app");
//   }
  
//   if(age > 30 && age <= 40) {
//     print("You are a Teenager");
//   } else if (age > 19 && age <= 40) {
//     print ("You are a Youth");
//   } else if (age != 60) {
//     print("You are not 60 years");
//   } else if (age > 40) {
//     print ("You are above 40");
//   }else {
//     print ("Leave this app");
//   }
  
  //Switch Statement
  /*
  is a control statement that executes a set of logic based
  on the result of a comparison between a controlling
  expression and the labels specified in the switch block.
  The switch syntax makes use of a "case" and a "break".
  */
//   switch(age){
//     case 11:
//       print("age is $age");
//     break;
    
//     case 20:
//       print("age is $age");
//     break;
     
//     case 18:
//       print("ag is $age");
//     break;
      
//     case 40:
//       print("age is $age");
//     break;
      
//     default:
//       print("None of the above");
//     break;

 //LOOP 
  /*
  Loops are syntax that is used to make an event reoccur
  depending on the condition. Reoccurence is directly 
  proportional to the condition.
  There are four types of loop:
  1. For Loop
      which consists of
     a) initialization
     b) condition
     c) control(Decrement or Increment)
    * continue - Skips and Continues a loop and doesn't 
                  return or break
    * return / break - stops a loop once the target
                        or comparison is reached
  2. While Loop
  3. Do While Loop
  4. For each loop
  */
  
  //For Loop
  
  //1. Loop i from numbers 100 to 0
  // for(int i = 100; i > 0; i--) {
//     print(i);
  // }
  
  //2. Loop i from numbers 0 to 100
  // for(int j = 1; j < 100; j++) {
//     print(j);
  // }
  
  //3. Loop k from 30 to 56
  // for(int k = 30; k < 57; k++) {
//     print(k);
  // }
  
  /// continue for loop ////
  
  // for (int l = 1; l < 10; l++) {
  //   if(l == 5) {
//       continue;
//       break;
//       return;
    // }
//     print(l);
  // }
  
  //While loop
  // int m = 100;
  // while(m > 0) {
  //   m--;
//     print(m);
  // }
  
 //Do While
  // int n = 0;
  // do{
  //   n++;
  //   print(n);
  // }while(n < 100);

/*
ASSIGNMENT
Loop the multiplication table from 1 to 12
*/

/*
  for(int i = 1; i <= 12; i++){
    for (int y = 1; y <= 12; y++) {
      var ans = y * 1;
      print("$i * $y = $ans");
    }
  }
*/

//Lists []
  
 /*
 In Flutter, lists are a collection of ordered objects of the same type. 
 They are similar to arrays in other programming languages. Lists are used 
 to store and manipulate multiple values in a single variable.
 */
  
// List<String> names = ["Sylva", "Somtee", "Amos", "Victor"];
// List<int> number = [3, 6, 7, 4, 6, 8];
// List<dynamic> both = ["Saint", 3, 6, "King", "queen", 4];
  
// for(int i = 0; i < names.length; i++) {
//   print(names[i]);
// }
  
// names.forEach((i){
//   print(i);
// });
  
//   for(var length in names) {
//     print(length);
//   }

  
//   var jss1 = [["Ezinne", "Sylva"], ["Somtee", "Victor"], 
              
//                ["Austine", "Samuel"], ["Vincent", "Toochi"]];
  
//  print(jss1[0][0]);
  
    /*
    ASSIGNMENT
    print out all the names in jss1 in ascending order

    for (var name in jss1){
      for (var element in name) {
        print (element);
      }
    }
    */

//  var myList = [];
 
//  myList.add("Somtee");
//   myList.add("Dennis");
//   print(myList);
//  myList.removeAt(0);
//   print(myList);

  /*
  INTRO TO MAPS
  In Flutter, maps refer to the data structure used to 
  store key-value pairs. It is similar to the concept 
  of an associative array in other 
  programming languages.
  Flutter provides a built-in class called Map for 
  working with maps.
  */
  
//   Map<String, dynamic> jss2 = {
//     "name": "Amos",
//     "gender": "Male",
//     "class": "Jss2",
//     "level": 1,
//   };
 
//   print(jss2["name"]);
//   print(jss2["gender"]);
  
//   jss2.forEach((key, value){
//     print(key);
//     print(value);
//   });
  
//   Map<String, dynamic> bio = {
//     "profile": {"name": "Amos",  "gender": "Male"},
//     "education": {"secondary": "Airforce", "tertiary": "Unn"},
//   };
  
//   print(bio["profile"]["name"]);
//   print(bio["education"]["tertiary"]);
  
//   List<Map<String, dynamic>> students = [
//    {"Username": "Somtee", "Class": "SS3", "Password": 1234},
//    {"Username": "Sylva", "Class": "SS2", "Password": 5678},
//    {"Username": "Davies", "Class": "SS1", "Password": 9012},
//    {"Username": "Carl", "Class": "Jss3", "Password": 2345},
//  ];
 
// for(int i = 0; i < students.length; i++) {
//   print(students[i]);
// } 

//   var myMap = {};
//   myMap["name"] = "somtee";
//   myMap["gender"] = "Male";
  
//   print(myMap);
  
//   myMap.remove("name");
//   print(myMap);

 //Assignment
  /*
  Remove more than one key from the map above
  */

    //STRING METHODS//
  
//   String name = "Ugonnaya Somto";
  
//   print(name.toUpperCase());
//   print(name.toLowerCase());
  
//   print(name.substring(3,8));
//   print(name[1]);
  
//   String password = "   12345   ";
  
//   print(password);
//   print(password.trim());
//   if(password.trim().length < 8){
//     print(true);
//   } else {
//     print(false);
//   }

//   String name = "Obi is a big Man";
  
//   if(name.startsWith("U")){
//     print(true);
//   } else {
//     print ("No");
//   }
  
//   if(name.endsWith("Man")){
//     print(true);
//   } else {
//     print(false);
//   }
  
//   print(name.replaceAll(" ","-"));
  
//   var email = "somtoo76@gmail.com";
//   if(email.contains("@")) {
//     print("good email");
//   } else {
//     print("bad email");
//   }

  //SPLIT METHOD//
//   String name = "Chigozie Okeke Obi";
  
//   var sname = name.split("");
//   print(sname);
  
//   var fname = sname[0];
//   print(fname);
  
//   var kname = sname[1];
//   print(kname);
  
//   var lname = sname[2];
//   print(lname);
  
  /*
  ASSIGNMENTS
  1. Run a loop to print out star shape in 6 rows
  2. Write a function that capitalizes the first letter of a
     String
  */
  
// }
