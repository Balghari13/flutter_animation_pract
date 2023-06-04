import 'package:flutter/material.dart';

class MapListPage extends StatefulWidget {
  const MapListPage({super.key});

  @override
  State<MapListPage> createState() => _MapListPageState();
}

class _MapListPageState extends State<MapListPage> {
  var arrData = [
    {
      'name':'najam',
      'cell': '122344',
      'unread': '1',
    },
    {
      'name':'saqib',
      'cell': '2343141',
      'unread': '2',
    },
    {
      'name':'sail',
      'cell': '098776',
      'unread': '3',
    },
    {
      'name':'najam',
      'cell': '122344',
      'unread': '1',
    },
    {
      'name':'saqib',
      'cell': '2343141',
      'unread': '2',
    },
    {
      'name':'sail',
      'cell': '098776',
      'unread': '3',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map List'),
      ),
      body: ListView(
        children: arrData.map((value){
         return ListTile(
           leading: Icon(Icons.person),
           title: Text(value['name'].toString()),
           subtitle: Text(value['cell'].toString()),
           trailing: CircleAvatar( radius: 12, backgroundColor: Colors.green,
               child: Text(value['unread'].toString())),
         );
        }).toList(),
      ),
    );
  }
}
