import 'package:demo_app/navigation/stacks/listStack.dart';
import 'package:flutter/material.dart';
Widget listNavigator(){
  return Navigator(
    initialRoute: '/',
    onGenerateRoute: (RouteSettings settings){
      return listStack(settings);
    }
  );
}