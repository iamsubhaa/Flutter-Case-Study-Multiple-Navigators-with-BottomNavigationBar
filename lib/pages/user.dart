import 'package:demo_app/drawer/drawer.dart';
import 'package:demo_app/provider/drawerProvider.dart';
import 'package:demo_app/utills/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
const List<Person> personDetails = <Person>[
    Person(1,'Subhajit Dey', 'nits.subhajitdey@gmail.com'),
    Person(2,'Kabir Singh', 'nits.kabirsingh@gmail.com'),
    Person(3,'Pjush Barik', 'nits.pijushbarik@gmail.com'),
  ];
class userDetails extends StatelessWidget {
  userDetails({Key key,this.title}):super(key:key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          drawer: drawer(personDetails, Provider.of<drawerProvider>(context).selectedIndexPerson, Provider.of<drawerProvider>(context).setPerson),
      backgroundColor: Colors.yellow,
    );
  }
}