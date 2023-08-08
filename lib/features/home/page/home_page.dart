import 'package:dailyfood/features/home/widget/all_restaurent_list.dart';
import 'package:dailyfood/features/home/widget/restaurent_list_slider.dart';
import 'package:dailyfood/features/home/widget/signle_restaurent_card.dart';
import 'package:dailyfood/routes/routes.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const ImageIcon(
                    AssetImage("assets/images/back.png"),
                    size: 24,
                    color: Kcolor.primary,
                  )),
            ),
            title: Container(
              height: 30,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .85,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  // contentPadding:
                  //     EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  fillColor: Colors.transparent,
                  hintText: "Search for restaurents",
                  hintStyle: KtextStyls.subTitle1,
                  border: InputBorder.none,
                  prefixIcon: ImageIcon(
                    AssetImage("assets/images/search.png"),
                    size: 24,
                    color: Kcolor.bodyText,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CategoryHeader(header: "Features Partnar", onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.showRestaurents);
              }),
              RestaurentListSlider(),
              const SizedBox(height: 30),
              CategoryHeader(
                  header: "Best Picks Restaurent by team", onPressed: () {}),
              RestaurentListSlider(),
              const SizedBox(height: 30),
              CategoryHeader(header: "All Restaurent", onPressed: () {}),
              const SizedBox(height: 20),
              AllRestaurentList()
            ],
          ),
        ));
  }
}


class CategoryHeader extends StatelessWidget {
  String header;
  VoidCallback onPressed;

  CategoryHeader({
    super.key,
    required this.header,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * .75,
              child: Text(
                header,
                style: KtextStyls.headLine1,
              )),
          InkWell(
            onTap: onPressed,
            child: const Text(
              "see all",
              style: KtextStyls.subTitle3,
            ),
          ),
        ],
      ),
    );
  }
}
