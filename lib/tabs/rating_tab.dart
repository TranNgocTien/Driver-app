import 'package:flutter/material.dart';

class RatingsTab extends StatefulWidget {
  const RatingsTab({super.key});

  @override
  State<RatingsTab> createState() => _RatingsTabState();
}

class _RatingsTabState extends State<RatingsTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('Rating Tab'),
    );
  }
}