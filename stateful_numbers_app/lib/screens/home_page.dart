import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten"
  ];
  int indexOfNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My stateful App"),
      ),
      body: SafeArea(child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(numbers[indexOfNumber]),
              FlatButton(
                  onPressed: () {
                    setState(() => changeNumberIndex());
                  },
                  child: Text("Change the number"))
            ],
          ),
        );
      })),
    );
  }

  void changeNumberIndex() {
    if (indexOfNumber < 9) {
      indexOfNumber++;
      print(indexOfNumber);
    } else {
      indexOfNumber = 0;
      print(indexOfNumber);
    }
  }
}
