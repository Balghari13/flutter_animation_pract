import 'package:flutter/material.dart';
import 'package:practise/animated_opacity.dart';
import 'package:practise/clip_rrect.dart';
import 'package:practise/cross_fade.dart';
import 'package:practise/foo_animation.dart';
import 'package:practise/hero/hero_animation.dart';
import 'package:practise/listwheel_scrollView.dart';
import 'package:practise/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FooAnimationPage()));
            }, child: Text('Foo Animation')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedOpacityPage()));
            }, child: Text('Animated Opacity')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossFadePage()));
            }, child: Text('Cross Fade')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroAnimationPage()));
            }, child: Text('Hero Animation')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListWheelScrollPage()));
            }, child: Text('List Wheel scroll')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ClipRRectPage()));
            }, child: Text('Clip RRect')),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TestPage()));
            }, child: Text('Testing'))
          ],
        ),
      ),
    );
  }
}

