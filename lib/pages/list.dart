import 'package:demo_app/drawer/drawer.dart';
import 'package:demo_app/provider/bottomNavProvider.dart';
import 'package:demo_app/provider/drawerProvider.dart';
import 'package:demo_app/utills/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
const List<Person> personDetails = <Person>[
    Person(1,'Subhajit Dey', 'nits.subhajitdey@gmail.com'),
    Person(2,'Kabir Singh', 'nits.kabirsingh@gmail.com'),
    Person(3,'Pjush Barik', 'nits.pijushbarik@gmail.com'),
  ];
class myList extends StatefulWidget {
  myList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _myListState createState() => _myListState();
}

class _myListState extends State<myList> {
  final List<String> entries = <String>['Item1', 'Item2', 'Item3'];

  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    // Provider.of<bottomNavProvider>(context,listen: false).visible();
    // print(Provider.of<rootProvider>(context).selectedIndexPerson);
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          drawer: drawer(personDetails, Provider.of<drawerProvider>(context).selectedIndexPerson, Provider.of<drawerProvider>(context).setPerson),
      backgroundColor: Colors.green,
      body: SizedBox.expand(
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                      Provider.of<bottomNavProvider>(context,listen: false).inVisible();
                      Navigator.pushNamed(context, '/list-view',arguments: index);
                    },
                  child:Container(
                  height: 300,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(child: Text('Entry ${entries[index]}')
                  ),
                )
                );
              }
          )
        ),
    );
  }
}
