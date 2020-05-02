import 'package:flutter/material.dart';
import 'package:demo_app/utills/data.dart';
Widget drawer(List<Person> personDetails, int _selectedIndexPerson, Function onTap){
  return Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(personDetails.where((i)=>i.id==_selectedIndexPerson).toList()[0].name), 
              accountEmail: Text(personDetails.where((i)=>i.id==_selectedIndexPerson).toList()[0].email),
              currentAccountPicture: CircleAvatar(
                backgroundColor:Colors.white,
                child: Text(personDetails.where((i)=>i.id==_selectedIndexPerson).toList()[0].name.toUpperCase()[0], style:TextStyle(fontSize: 40.0)),
                ),
              otherAccountsPictures: 
              personDetails.where((i)=>i.id!=_selectedIndexPerson).map((entry){
                  return GestureDetector(
                    onTap:(){
                      onTap(entry.id);
                    },
                    child:CircleAvatar(
                      backgroundColor:Colors.white,
                      child: Text(entry.name.toUpperCase()[0], style:TextStyle(fontSize: 20.0)),
                  ),
                );
              }).toList()
              ),
              ListTile(
                title:Text('Item 1'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title:Text('Item 2'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title:Text('Item 3'),
                trailing: Icon(Icons.arrow_forward),
              )
          ],
        )
      );
}