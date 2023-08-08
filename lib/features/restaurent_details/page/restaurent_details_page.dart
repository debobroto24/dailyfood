import 'package:dailyfood/features/common_widgets/circle_with_text.dart';
import 'package:dailyfood/features/common_widgets/kapp_bar.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RestaurentDetails extends StatefulWidget {
  const RestaurentDetails({super.key});

  @override
  State<RestaurentDetails> createState() => _RestaurentDetailsState();
}

class _RestaurentDetailsState extends State<RestaurentDetails> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: KappBar(text: "Restaurent details")),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage("assets/images/res5.png"),
                width: width,
                height: height * .25,
                fit: BoxFit.fill,
              ),
              RestaurentInfo(),
              const SizedBox(height: 15),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Features Iteam", style: KtextStyls.title3)),
              const SizedBox(height: 15),
              FeaturesItem(),
              FoodCategoryByRestaurent(),
            ],
          ),
        ));
  }
}

class RestaurentInfo extends StatelessWidget {
  const RestaurentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Mayfield Bakery & Cafe",
            style: KtextStyls.title2,
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              CircleWithText(),
              SizedBox(width: 20),
              CircleWithText(),
              SizedBox(width: 20),
              CircleWithText(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text(
                "4.3",
                style: KtextStyls.subTitle2,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Kcolor.accent,
                size: 12,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "200+ Rating",
                style: KtextStyls.subTitle2,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.money, size: 16, color: Kcolor.accent),
              const SizedBox(width: 5),
              const Text(
                "free Delivery",
                style: KtextStyls.subTitle2,
              ),
              const SizedBox(width: 20),
              const Icon(Icons.money, size: 16, color: Kcolor.accent),
              const SizedBox(width: 5),
              const Text(
                "free Delivery",
                style: KtextStyls.subTitle2,
              ),
              SizedBox(width: 20),
              Container(
                width: 113,
                height: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Kcolor.accent, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Take Awaya",
                  style: KtextStyls.subTitle3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class FeaturesItem extends StatelessWidget {
  const FeaturesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .23,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage("assets/images/res6.png"),
                      height: height * .15,
                      width: width * .35,
                      fit: BoxFit.fill),
                  SizedBox(height: 5),
                  Text("Cookie Sandwitch", style: KtextStyls.subTitle2),
                  SizedBox(height: 5),
                  Text("Chinese", style: KtextStyls.subTitle2),
                ],
              ),
            );
          }),
    );
  }
}

class FoodCategoryByRestaurent extends StatefulWidget {
  const FoodCategoryByRestaurent({super.key});

  @override
  State<FoodCategoryByRestaurent> createState() =>
      FoodCategoryByRestaurentState();
}

class FoodCategoryByRestaurentState extends State<FoodCategoryByRestaurent>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  final tabs = const [
    Tab(
      text: "see food",
    ),
    Tab(
      text: "launch",
    ),
    Tab(
      text: "dinner",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     TabBar(
    //       controller: tabController,
    //       tabs:tabs
    //     ),
    //     SizedBox(
    //       height: 400,
    //       child:TabBarView( children: [
    //           TabPageContent('Page 1 Content'),
    //           TabPageContent('Page 2 Content'),
    //           TabPageContent('Page 3 Content'),
    //         ],)
    //     )
    //   ],
    // );
    return DefaultTabController(
        length: tabs.length,
        
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: Kcolor.bodyText,
              indicatorColor: Colors.transparent,
              tabs: tabs), 
            Container( 
              height: 400,
              child: TabBarView(
                children: [
                  TabPageContent('Page 1 Content'),
                  TabPageContent('Page 2 Content'),
                  TabPageContent('Page 3 Content'),
                ],
              ),
            ),
          ],
        ));
  }
}

class TabPageContent extends StatelessWidget {
  final String content;

  TabPageContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(content),
    );
  }
}
