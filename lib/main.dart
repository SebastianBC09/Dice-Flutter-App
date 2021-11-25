import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF000428),
                Color(0xFF004e92),
              ]
            ),
          ),
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  print('Left button has been pressed.');
                },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  print('Right button has been pressed.');
                },
                  child: Image.asset('images/dice2.png'),
              ),
          ),
        ],
      ),
    );
  }
}
