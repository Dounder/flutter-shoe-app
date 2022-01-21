import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';

class AddToCart extends StatelessWidget {
  final double amount;

  const AddToCart({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              '\$$amount',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const OrangeBtn(text: 'Add to cart'),
          ],
        ),
      ),
    );
  }
}
