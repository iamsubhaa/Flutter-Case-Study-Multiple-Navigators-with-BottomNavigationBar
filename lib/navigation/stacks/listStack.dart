import 'package:demo_app/pages/listView.dart';
import 'package:demo_app/provider/bottomNavProvider.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/pages/list.dart';
import 'package:provider/provider.dart';

PageRoute listStack(RouteSettings settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case '/':
            // Provider.of<bottomNavProvider>(context,listen: false).visible();
            return myList(title: 'List');
          case '/list-view':
            // Provider.of<bottomNavProvider>(context, listen: false).inVisible();
            return myListView(title:'List View');
            break;
          default:
            break;
        }
      });
}
