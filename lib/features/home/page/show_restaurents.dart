import 'package:dailyfood/features/common_widgets/kapp_bar.dart';
import 'package:dailyfood/features/home/widget/star_container.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class ShowRestaurents extends StatelessWidget {
  const ShowRestaurents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: KappBar(text: "Features Restaurent"),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              height: MediaQuery.of(context).size.height,
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     RestaurentCard(),
              //     SizedBox(width: 20),
              //      RestaurentCard(),
              //   ],
              // ),
              child: GridView.builder(
                
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return RestaurentCard();
                  })),
        ));
  }
}

class RestaurentCard extends StatelessWidget {
  const RestaurentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .45,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                image: AssetImage("assets/images/res4.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 50,
            child: Row(
              children: [
                Icon(Icons.punch_clock, color: Colors.white),
                Text(
                  "25 Min",
                  style: KtextStyls.subTitle4,
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: Row(
              children: [
                Icon(Icons.money, color: Colors.white),
                Text(
                  "Free",
                  style: KtextStyls.subTitle4,
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: StarContainer(text: "4.5"),
          ),
        ],
      ),
    );
  }
}
