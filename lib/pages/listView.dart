import 'package:demo_app/provider/bottomNavProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class myListView extends StatelessWidget {
  myListView({Key key, this.title}) : super(key: key);
  final String title;
  final List<String> entries = <String>['Item1', 'Item2', 'Item3'];
  final List<String> entrinesDesc = <String>[
    'Item1 - Description 1',
    'Item1 - Description 2',
    'Item1 - Description 3'
  ];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Provider.of<bottomNavProvider>(context,listen: false).visible();
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.green,
      body: SizedBox.expand(
          child: Container(
        height: 300,
        color: Colors.amber[colorCodes[index]],
        child: Center(
            child: Column(
              children: [
                Text('Entry ${entries[index]}'),
                Text('Entry ${entrinesDesc[index]}')
              ]
            )
        ),
      )),
    );
  }
}
