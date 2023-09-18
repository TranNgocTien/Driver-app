import 'package:flutter/material.dart';
import 'package:driver_app/tabs/earning_tab.dart';
import 'package:driver_app/tabs/home_tab.dart';
import 'package:driver_app/tabs/profile_tab.dart';
import 'package:driver_app/tabs/rating_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      _tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics:const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          EarningTab(),
          HomeTab(),
          ProfileTab(),
          RatingsTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Họme",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label:"Earning",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label:"Ratings"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:"Account",
          ),
        ],

        unselectedItemColor:Colors.white54,
        selectedItemColor:Colors.white,
        backgroundColor:Colors.black,
        type:BottomNavigationBarType.fixed,
        selectedLabelStyle:const TextStyle(fontSize: 14,),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap:onItemClicked,

      ),
    );
  }
}
