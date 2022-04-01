import 'package:flutter/material.dart';

class SemiCircle extends StatelessWidget {

  final Widget children;

  const SemiCircle({ Key? key, required this.children }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return CustomPaint(
      painter: MyPainter(),
      size: size,
      child: children
    );
  }
}

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final pen = Paint()..color = Colors.white;
    pen.style = PaintingStyle.fill;
    pen.strokeWidth = 2.0;
    
    final path = Path();
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.5, size.width, size.height * 0.30);
    path.lineTo(size.width, 0);


    canvas.drawShadow(path, Colors.lightBlue, 80.0, false);
    canvas.drawPath(path, pen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}