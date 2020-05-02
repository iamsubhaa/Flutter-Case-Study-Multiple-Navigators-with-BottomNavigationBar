import 'package:flutter/material.dart';
import 'package:demo_app/pages/user.dart';

PageRoute userStack(RouteSettings settings) {
  return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context){
          switch (settings.name) {
            case '/':
              return userDetails(title:'User details');
            default:
              break;
          }
        }
      );
}