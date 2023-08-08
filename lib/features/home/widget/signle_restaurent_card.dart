import 'package:dailyfood/features/home/widget/star_container.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class SingleRestaurentCard extends StatelessWidget {
  const SingleRestaurentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect( 
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/res1.png",
                fit: BoxFit.cover,
                 width: width * .65,
            height: height* .2,
                ),
          ),
          const Text(
            "Krispy creame",
            overflow: TextOverflow.ellipsis,
            style: KtextStyls.title3,
          ),
          const SizedBox(height: 5),
          const Text(
            "sp Geogerje close, path",
            overflow: TextOverflow.ellipsis,
            style: KtextStyls.subTitle2,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StarContainer(text:"4.5"),
             const  SizedBox(width: 20),
              const Text("25 min", style: KtextStyls.subTitle2),
              const  SizedBox(width: 20),
                const Text("Free delivery", style: KtextStyls.subTitle2),
            ],
          )
        ],
      ),
    );
  }
}


