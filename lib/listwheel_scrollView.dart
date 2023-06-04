import 'package:flutter/material.dart';

class ListWheelScrollPage extends StatefulWidget {
  const ListWheelScrollPage({super.key});

  @override
  State<ListWheelScrollPage> createState() => _ListWheelScrollPageState();
}

class _ListWheelScrollPageState extends State<ListWheelScrollPage> {
  @override
  var arrIndex = [1,2,3,4,5,6,7,8,9];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheel Scroll'),
      ),
      body: ListWheelScrollView(
        itemExtent: 150,
        children: arrIndex.map((value) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(child: Text('$value', style: TextStyle(fontSize: 35),)),
          ),
        )
        ).toList(),
      )
    );
  }
}
