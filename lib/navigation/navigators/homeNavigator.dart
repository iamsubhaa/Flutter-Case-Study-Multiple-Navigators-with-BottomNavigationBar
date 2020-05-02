import 'package:demo_app/navigation/stacks/homeStack.dart';
import 'package:flutter/material.dart';

Widget homeNavigator() {
  return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
          return homeStack(settings);
      });
}
