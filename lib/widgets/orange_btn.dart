import 'package:flutter/material.dart';

class OrangeBtn extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;

  const OrangeBtn({
    Key? key,
    required this.text,
    this.width = 150,
    this.height = 50, 
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
