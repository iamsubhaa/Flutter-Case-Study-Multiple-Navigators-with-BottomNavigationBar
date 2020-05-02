import 'package:demo_app/navigation/stacks/userStack.dart';
import 'package:flutter/material.dart';
Widget userNavigator(){
  return Navigator(
    initialRoute: '/',
    onGenerateRoute: (RouteSettings settings){
      return userStack(settings);
    }
  );
}