
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class KappBar extends StatelessWidget {
  String text; 
   KappBar({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const ImageIcon(
            AssetImage("assets/images/back.png"),
            size: 24,
            color: Kcolor.primary,
          )),
      title:  Text(
        text,
        style: KtextStyls.appbarHeader,
      ),
      centerTitle: true,
    );
  }
}
