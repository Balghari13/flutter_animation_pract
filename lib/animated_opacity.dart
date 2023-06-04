import 'package:flutter/material.dart';


class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var myOpacity = 1.0;
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animated Opacit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
AnimatedOpacity(opacity: myOpacity,
  duration: Duration(seconds: 1),
  curve: Curves.bounceIn,
  child: Container(
  width: 200,
  height: 100,
  color: Colors.blue,
),),
            ElevatedButton(onPressed: (){
              setState(() {
                if(toggle){
                  myOpacity = 0.0;
                  toggle= false;
                }else{
                  myOpacity = 1.0;
                  toggle= true;
                }

              });
            }, child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
