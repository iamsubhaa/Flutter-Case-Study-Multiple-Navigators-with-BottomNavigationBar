import 'package:demo_app/pages/main.dart';
import 'package:demo_app/provider/bottomNavProvider.dart';
import 'package:demo_app/provider/drawerProvider.dart';
import 'package:demo_app/provider/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [ 
  ChangeNotifierProvider(create: (_)=>bottomNavProvider()),
  ChangeNotifierProvider(create: (_)=>drawerProvider()), 
],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
  
}