import 'package:flutter/material.dart';

class HeaderPaintCustom extends StatelessWidget {
  Widget child;
  HeaderPaintCustom({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: child,
            ),
          ),
          const CustomPaint(
            painter: MyCustom(),
          ),
        ],
      ),
    );
  }
}

class MyCustom extends CustomPainter {
  const MyCustom();

  @override
  void paint(Canvas canvas, Size size) {
    Paint lapiz = Paint();
    lapiz
      ..color = Colors.indigo
      ..strokeWidth = 20
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 1.5, size.width, size.height);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
