import 'package:flutter/material.dart';

void main() {
  runApp(const Component());
}

class Component extends StatelessWidget {
  const Component({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Block(color: Colors.green, height: 120, width: 230),
        Block(color: Colors.amber, height: 80, width: 80),
        Block(color: Colors.blueAccent, height: 150, width: 300),
        Block(color: Colors.redAccent, height: 100, width: 200),
      ],
    );
  }
}

class Block extends StatelessWidget {
  final double height, width;
  final Color color;
  const Block(
    { Key? key,
      required this.color,
      required this.height,
      required this.width
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}