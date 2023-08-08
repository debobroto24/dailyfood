import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class CircleWithText extends StatelessWidget {
  const CircleWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: Kcolor.bodyText,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          "chines",
          style: KtextStyls.subTitle2,
        )
      ],
    );
  }
}
