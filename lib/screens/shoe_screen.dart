import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoeScreen extends StatelessWidget {
  const ShoeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppbar(text: 'For you'),
          SizedBox(height: 20),
          _ShoeInfo(),
          AddToCart(amount: 180.0)
        ],
      ),
    );
  }
}

class _ShoeInfo extends StatelessWidget {
  const _ShoeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            ShoePreview(),
            ShoeDescription(
              title: 'Nike Air Max 720',
              description:
                  'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
            ),
          ],
        ),
      ),
    );
  }
}

