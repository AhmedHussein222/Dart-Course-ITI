void main() {
  // // Object can hold any type of data and chage it in future
  //   Object obj = "Hello World";
  //   obj = 123;
  //   print(obj);

  //   // num can hold any type of number and chage it in future
  //   num number = 123;
  //   number = 12.3;
  //   print(number);
  //   print(number.runtimeType);


  //   // int can hold only integer numbers
  //   int integer = 123;
  //   // double can hold only decimal numbers
  //   double decimal = 12.3;

  //   String text = "this is integer value $integer , and double $decimal \n";
  //   bool gt = integer > decimal;
  //   print(text);
  //   print(text.runtimeType);
  //   print(gt);


// functions statement
  void name (){
    print("Hello World");
  }
  name();
// function declation 
String name2 (String name){
    return "Hello World $name";
  }
  // Function Expresion 
  var name3 = (String n) {
    return "Hello World $n";
  };
name3("ali");



}
