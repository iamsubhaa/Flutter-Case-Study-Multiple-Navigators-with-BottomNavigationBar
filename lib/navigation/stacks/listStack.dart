import 'package:demo_app/pages/listView.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/pages/list.dart';

PageRoute listStack(RouteSettings settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case '/':
            return myList(title: 'List');
          case '/list-view':
            return myListView(title:'List View');
            break;
          default:
            break;
        }
      });
}
