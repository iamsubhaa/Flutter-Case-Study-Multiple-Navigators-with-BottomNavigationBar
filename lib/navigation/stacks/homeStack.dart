import 'package:demo_app/pages/homepage.dart';
import 'package:demo_app/pages/listView.dart';
import 'package:flutter/material.dart';
PageRoute homeStack(RouteSettings settings){
  return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context){
          switch (settings.name) {
            case '/':
              return homePage(title:'Home');
            break;
            default:
              break;
          }
        }
      );
}