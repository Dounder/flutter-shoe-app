import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  final bool fullscreen;

  const ShoePreview({Key? key, this.fullscreen = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: fullscreen ? 5 : 30,
          vertical: 5,
        ),
        width: double.infinity,
        height: fullscreen ? 400 : 430,
        decoration: BoxDecoration(
          color: const Color(0xffffcf53),
          borderRadius: fullscreen
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))
              : BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            const _ShoeContainer(),
            if (!fullscreen) const _ShoeSize(),
          ],
        ));
  }
}

class _ShoeContainer extends StatelessWidget {
  const _ShoeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: const [
          Positioned(
            bottom: 0,
            right: 0,
            child: _ShoeShadow(),
          ),
          Image(image: AssetImage('assets/azul.png')),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Color(0xffeaa14e), blurRadius: 30)
            ]),
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  const _ShoeSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _ShoeSizeContainer(7),
          _ShoeSizeContainer(7.5),
          _ShoeSizeContainer(8),
          _ShoeSizeContainer(8.5),
          _ShoeSizeContainer(9),
          _ShoeSizeContainer(9.5),
        ],
      ),
    );
  }
}

class _ShoeSizeContainer extends StatelessWidget {
  final double size;

  const _ShoeSizeContainer(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: size == 9 ? const Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (size == 9)
              const BoxShadow(
                color: Color(0xffF1A23A),
                blurRadius: 20,
                offset: Offset(0, 5),
              )
          ]),
      child: Text(
        size.toString().replaceAll('.0', ''),
        style: TextStyle(
          color: size == 9 ? Colors.white : const Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
