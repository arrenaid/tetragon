import 'package:flutter/material.dart';

class RectPainter extends CustomPainter{
  late double percent = 0.009;
  double stroke = 8;
  double radius = 8;
  double width= 100;
  Offset startPoint = Offset(0,0);
  Offset endPoint = Offset(0,0);
  @override
  void paint(Canvas canvas, Size size) {

    final Paint bottomPaint = Paint();
    bottomPaint.color = Colors.white;
    bottomPaint.style = PaintingStyle.stroke;
    bottomPaint.strokeWidth = stroke;
    bottomPaint.strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(radius,  size.height/2),
        Offset(width, size.height/2), bottomPaint);
    canvas.drawCircle(Offset(0, size.height/2), radius, bottomPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  upd(int count){ percent = count/100 ;
  }

}