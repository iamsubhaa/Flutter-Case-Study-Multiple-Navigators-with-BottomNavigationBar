import 'package:flutter/material.dart';

class myList extends StatelessWidget {
  myList({Key key, this.title}) : super(key: key);
  final String title;
  final List<String> entries = <String>['Item1', 'Item2', 'Item3'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.green,
      body: SizedBox.expand(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
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
