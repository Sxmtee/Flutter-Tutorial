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
// }
