import 'package:flutter/material.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({super.key});

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(36)),
          child: Image.asset('assets/img.png', width: 300,height: 200,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
