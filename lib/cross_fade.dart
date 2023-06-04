import 'dart:async';


import 'package:flutter/material.dart';

class CrossFadePage extends StatefulWidget {
  const CrossFadePage({super.key});

  @override
  State<CrossFadePage> createState() => _CrossFadePageState();
}

class _CrossFadePageState extends State<CrossFadePage> {

  bool isFirst = true;
  void reload(){
    setState(() {
      if(isFirst){
        isFirst = false;
      }else{
        isFirst = true;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstCurve: Curves.linear,
              firstChild: Container(
              width: 100, height: 50, color: Colors.green,
            ),
                secondChild: Icon(Icons.home, size: 40,),
                crossFadeState: isFirst? CrossFadeState.showFirst: CrossFadeState.showSecond,
                duration: Duration(seconds: 2),
            ),
            ElevatedButton(onPressed: (){
              reload();
            }, child: Text('Animate'))
          ],
        ),
      )
    );
  }
}
