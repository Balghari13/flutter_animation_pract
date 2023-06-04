import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({super.key});

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0, end: 50.0).animate(animationController);
    colorAnimation= ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
      ),
      body: Center(
        child: Container(
              width: animation.value,
          height: 100,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
