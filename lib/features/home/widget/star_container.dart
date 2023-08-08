import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class StarContainer extends StatelessWidget {
  String text;
   StarContainer({
    required this.text, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Kcolor.accent,
      ),
      child:  Text(text,
          style: KtextStyls.subTitle4),
    );
  }
}