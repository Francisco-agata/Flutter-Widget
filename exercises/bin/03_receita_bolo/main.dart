import 'package:flutter/material.dart';

void main() {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Column(
        children: [
          Image.network("https://i.imgur.com/NrfOeJY.jpg"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
              ),

              Container(
                height: 120,
                width: 120,
                color: Colors.redAccent,
              ),

              Container(
                height: 120,
                width: 120,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}