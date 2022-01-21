import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String text;

  const CustomAppbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
