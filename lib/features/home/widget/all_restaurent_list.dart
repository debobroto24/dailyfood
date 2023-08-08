import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class AllRestaurentList extends StatelessWidget {
  const AllRestaurentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/res2.png"),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .30,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 20),
                const Text(
                  "McDonald's",
                  style: KtextStyls.title3,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    circleWithText(),
                    const SizedBox(
                      width: 20,
                    ),
                    circleWithText(),
                    const SizedBox(
                      width: 20,
                    ),
                    circleWithText(),
                  ],
                ),
                const SizedBox(height: 10),
                restaurentInfo()
              ],
            ),
          );
        });
  }

  Row restaurentInfo() {
    return Row(
      children: const [
        Text(
          "4.3",
          style: KtextStyls.subTitle2,
        ),
        const SizedBox(width: 10),
        Icon(Icons.star, color: Kcolor.active1, size: 16),
        const SizedBox(width: 10),
        Text(
          "200 + Rating",
          style: KtextStyls.subTitle2,
        ),
        const SizedBox(width: 20),
        Icon(Icons.lock_clock_rounded, color: Kcolor.bodyText, size: 16),
        const SizedBox(width: 5),
        Text(
          "25 Min",
          style: KtextStyls.subTitle2,
        ),
        const SizedBox(width: 20),
        Icon(Icons.money, color: Kcolor.bodyText, size: 16),
        const SizedBox(width: 5),
        Text(
          "Free",
          style: KtextStyls.subTitle2,
        ),
      ],
    );
  }

  Row circleWithText() {
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
