

import 'package:flutter/material.dart';

class FooAnimationPage extends StatefulWidget {
 const FooAnimationPage({Key? key}) : super(key: key);

  @override
  State<FooAnimationPage> createState() => _FooAnimationPageState();
}

class _FooAnimationPageState extends State<FooAnimationPage> {
  var _width = 200.0;
  var _height = 100.0;
  bool toggle = true;
  //Color bgColor = Colors.grey;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _width,
              height: _height,
              //color: bgColor,
              decoration: myDecor,
              curve: Curves.easeInOutExpo,
            ),
            ElevatedButton(onPressed: (){

              setState(() {
                if(toggle){
                  _width=100.0;
                  _height=200.0;
                  //bgColor = Colors.orange;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  );
                  toggle=false;
                }else{
                  _height= 100.0;
                  _width=200.0;
                  //bgColor= Colors.grey;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  );
                  toggle=true;
                }


              });
            }, child: Text('Animate')),
          ],
        ),
      )
    );
  }
}
