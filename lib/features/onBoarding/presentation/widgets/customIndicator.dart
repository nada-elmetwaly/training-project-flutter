import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}): super(key: key);
  final int? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(dotsCount: 3,decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: Color(0xff553333FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Color(0xff553333FF)),
        )



    ),
    position: dotIndex!,);

  }
}
