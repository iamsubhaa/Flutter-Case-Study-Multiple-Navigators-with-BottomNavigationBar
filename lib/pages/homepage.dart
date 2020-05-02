import 'package:demo_app/drawer/drawer.dart';
import 'package:demo_app/utills/data.dart';
import 'package:flutter/material.dart';
const List<Person> personDetails = <Person>[
    Person(1,'Subhajit Dey', 'nits.subhajitdey@gmail.com'),
    Person(2,'Kabir Singh', 'nits.kabirsingh@gmail.com'),
    Person(3,'Pjush Barik', 'nits.pijushbarik@gmail.com'),
  ];
class homePage extends StatefulWidget {
  homePage({Key key,this.title}):super(key:key);
  final String title;

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndexPerson = 1;
  void _setPerson(id){
    setState(() {
      _selectedIndexPerson = id;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: drawer(personDetails, _selectedIndexPerson, _setPerson),
      backgroundColor: Colors.yellow,
    );
  }
}