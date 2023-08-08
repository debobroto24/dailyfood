import 'package:dailyfood/features/home/page/home_page.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController(); 
  int _currentIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(  
        controller: _pageController, 
        onPageChanged: (index)=>setState(() {
          _currentIndex = index; 
        }), 
        children: [
          HomePage(),  
          Container(child: Center(child:Text("search")),),  
          Container(child: Center(child:Text("order")),),  
          Container(child: Center(child:Text("profile")),),  
        ],
      ), 
      bottomNavigationBar: BottomNavigationBar(  
        onTap: (index){
          _pageController.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.bounceIn);
          setState(() {
            _currentIndex = index; 
          });
        },
        selectedItemColor: Kcolor.accent,
        unselectedItemColor: Kcolor.bodyText,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(  AssetImage("assets/images/food.png")),label: "Home"
          ),
          BottomNavigationBarItem(icon: ImageIcon(  AssetImage("assets/images/search.png")), label:"search"),
          BottomNavigationBarItem(icon: ImageIcon(  AssetImage("assets/images/orderlist.png")), label:"order"),
          BottomNavigationBarItem(icon: ImageIcon(  AssetImage("assets/images/profile.png")), label:"profile"),
      


        ],
      ),
    );
  }
}