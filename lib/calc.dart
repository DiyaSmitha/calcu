import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';
import 'package:eval_ex/eval_ex.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _calculatorState();
}

class _calculatorState extends State<Calculator> {
  String a = "";
  String temp = "";

  String result = "";

  void display(String bnum) {
    setState(() {
      a += bnum;
    });
  }
  void back()
  {
    setState(() {
      if (a.length > 0) {
        a = a.substring(0, a.length - 1);
      }
    });
  }

  void fun() {
    /*result=Expression("a").eval().toString();*/
    Expression exp = Expression(a);
    result = exp.eval().toString();
    a = result;
  }

  void clean() {
    a = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            a,
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          /*Text('$result',style: TextStyle(fontSize: 36),),
              SizedBox(
                width: 20,
                height: 20,
              ),*/
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    clean();
                    setState(() {});
                  },
                  child: Text("C")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("("), child: Text("(")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display(")"), child: Text(")")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("/"), child: Text("/")),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () => display("1"), child: Text("1")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("2"), child: Text("2")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("3"), child: Text("3")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("x"), child: Text("x")),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () => display("4"), child: Text("4")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("5"), child: Text("5")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("6"), child: Text("6")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("+"), child: Text("+")),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () => display("7"), child: Text("7")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("8"), child: Text("8")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("9"), child: Text("9")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("-"), child: Text("-")),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () => back(), child: Text("back")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("0"), child: Text("0")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(onPressed: () => display("."), child: Text(".")),
              SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    fun();
                    setState(() {});
                  },
                  child: Text("=")),
            ],
          ),

          /*TextField(
            //controller: height,//
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'enter',
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 4, color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                filled: true,
                fillColor: Colors.black),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
            //controller: weight,//
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'enter',
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Colors.yellowAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 4, color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                filled: true,
                fillColor: Colors.teal),
            style: TextStyle(color: Colors.white),
          ),*/
        ]),
      ),
    );
  }
}
