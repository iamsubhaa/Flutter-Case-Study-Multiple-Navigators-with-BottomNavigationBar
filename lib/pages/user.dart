import 'package:flutter/material.dart';
class userDetails extends StatelessWidget {
  userDetails({Key key,this.title}):super(key:key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.yellow,
    );
  }
  
}