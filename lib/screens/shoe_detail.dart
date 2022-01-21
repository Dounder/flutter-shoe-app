import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoeDetailScreen extends StatelessWidget {
  const ShoeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ShoePreview(fullscreen: true),
          _ShoeInfo(),
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
            ShoeDescription(
              title: 'Nike Air Max 720',
              description:
                  'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
            ),
            _AmountBuyNow(amount: 180.0),
            _ColorsAndMore(),
          ],
        ),
      ),
    );
  }
}

class _AmountBuyNow extends StatelessWidget {
  final double amount;

  const _AmountBuyNow({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(
            '\$$amount',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const OrangeBtn(text: 'Buy Now', width: 110, height: 40)
        ],
      ),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  const _ColorsAndMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: const [
                Positioned(
                  left: 90,
                  child: _ColorItem(color: Color(0xffC6D642)),
                ),
                Positioned(
                  left: 60,
                  child: _ColorItem(color: Color(0xffFFAD29)),
                ),
                Positioned(
                  left: 30,
                  child: _ColorItem(color: Color(0xff2099f1)),
                ),
                _ColorItem(color: Color(0xff364D56)),
              ],
            ),
          ),
          const OrangeBtn(
            text: 'More related items',
            width: 160,
            height: 30,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  final Color color;

  const _ColorItem({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
