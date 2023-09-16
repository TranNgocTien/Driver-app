import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  int selectedIndex = 0;

  onItemClicked(int index){
    setState(() {
      selectedIndex=index;
      _tabController!.index=selectedIndex;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController =TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:TabBarView(children: [], physics: NeverScrollableScrollPhysics(),)
    );
  }
}
