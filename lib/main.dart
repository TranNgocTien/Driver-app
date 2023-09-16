import 'package:flutter/material.dart';
import 'package:driver_app/splashScreen/splash_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child:MaterialApp(
      title: 'Drivers App',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:const SplashScreen(),
      
      debugShowCheckedModeBanner: false,
      ),
    ),

  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key,required this.child});

  final Widget child;


  static void restartApp(BuildContext context){
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Key key =UniqueKey();

  void restartApp(){
    setState(() {
     key= UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key:key,
      child:widget.child,
    );
  }
}