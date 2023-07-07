import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String textformfielddisp = "";
  String num1 = "";
  String num2 = "";
  String selOperator = "";
  String clear = "";
  bool isOperatorClicked = false;
  late String result;
  TextEditingController txt = TextEditingController();
  var percent = "(value/total value)×100%.";

  pressoperator(String operator) {
    selOperator = operator;
    isOperatorClicked = true;
    txt.text = operator;
  }

  void click(String buttonvalue) {
    result = (textformfielddisp + buttonvalue).toString();
    clear = (textformfielddisp + buttonvalue).toString();

    setState(() {
      textformfielddisp = result;
      textformfielddisp = clear;
    });
  }
  Numclick(String val){
    if (isOperatorClicked) {
      num2 += val;
      txt.text = num2;
     } else {
      num1 += val;
      txt.text = num1;
    }
    print("Num1 ${num1}");
    print("Num2 ${num2}");
  }

  operator(String val){
    isOperatorClicked = true;
    selOperator = "+";
    txt.text = "+";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text("Calculator", style: TextStyle(fontSize: 50),)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/ee.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 350,),
            TextFormField(controller: txt, style: TextStyle(color: Colors.white12, fontSize: 30),),
            TextFormField(controller: txt,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Numclick("1");
                  }, style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ), child: Text("1", style: TextStyle(fontSize: 35),),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Numclick("2");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text("2", style: TextStyle(fontSize: 35),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Numclick("3");
                      }, style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ), child: Text("3", style: TextStyle(fontSize: 35),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Numclick("4");
                      }, style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ), child: Text("4", style: TextStyle(fontSize: 35),)),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                  onPressed: () {
                    Numclick("5");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text("5", style: TextStyle(fontSize: 35),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Numclick("6");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text("6", style: TextStyle(fontSize: 35),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Numclick("7");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("7", style: TextStyle(fontSize: 30),),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Numclick("8");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text("8", style: TextStyle(fontSize: 35),)),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Numclick("9");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text("9", style: TextStyle(fontSize: 35),)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Numclick("0");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("0", style: TextStyle(fontSize: 35),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                       operator("+");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("+", style: TextStyle(fontSize: 35),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        operator("-");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("-", style: TextStyle(fontSize: 35),)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      operator("*");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text("*", style: TextStyle(fontSize: 35),)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        operator("/");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("/", style: TextStyle(fontSize: 35),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (isOperatorClicked) {
                          num2 += ".";
                          txt.text = num2;
                        } else {
                          num1 += ".";
                          txt.text = num1;
                        }
                        print("Num1 ${num1}");
                        print("Num0 ${num2}");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text(".", style: TextStyle(fontSize: 35),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        double firstNum = double.parse(num1);
                        double secNum = double.parse(num2);
                        double res = 0;
                        if (selOperator == "+") {
                          res = firstNum + secNum;
                        } else if (selOperator == "-") {
                          res = firstNum - secNum;
                        } else if (selOperator == "*") {
                          res = firstNum * secNum;
                        } else if (selOperator == "/") {
                          res = firstNum / secNum;
                        }
                        txt.text = res.toString();
                        isOperatorClicked = false;
                        num2 = "";
                        num1 = txt.text;
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("=", style: TextStyle(fontSize: 35),)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(

                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        String str= txt.text;
                        int len =str.length;
                        num1=str.substring(0,len-1);
                        txt.text =num1;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child:Icon(Icons.backspace_outlined,size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        double value = double.parse(txt.text);
                        if (value.isNegative) {
                          txt.text = value.abs().toString();
                        } else {
                          txt.text = (value * -1).toString();
                        }
                        num1 = txt.text;
                        num2 = "";
                        isOperatorClicked = false;
                        selOperator = "";
                        print("firstnum:${num1}");
                        print("secondnum:${num2}");
                      }, style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ), child: Text("+/-", style: TextStyle(fontSize: 28),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        double value = double.parse(txt.text);
                        txt.text = (value / 100).toString();
                        num1 = txt.text;
                        num2 = "";
                        isOperatorClicked = false;
                        selOperator = "";
                        print("firstnum:${num1}");
                        print("secondnum:${num2}");
                      }, style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ), child: Text("%",style: TextStyle(fontSize: 30),)),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        isOperatorClicked = true;
                        selOperator = "AC";
                        txt.text = "";
                        print("firstnum:${num1}");
                        print("secondnum:${num2}");
                      }, style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ), child: Text("AC",style: TextStyle(fontSize: 30),)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




class Saraa extends StatefulWidget {
  const Saraa({Key? key}) : super(key: key);

  @override
  State<Saraa> createState() => _SaraaState();
}

class _SaraaState extends State<Saraa> {

  final ctrl = TextEditingController();


  Widget btn(btnValue)
  {
    return ElevatedButton(onPressed: (){}, child: Text("$btnValue"));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(),
        ],
      ),



    );
  }
}
