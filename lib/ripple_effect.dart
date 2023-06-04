import 'package:flutter/material.dart';

class RippleAnimationPage extends StatefulWidget {
  const RippleAnimationPage({super.key});

  @override
  State<RippleAnimationPage> createState() => _RippleAnimationPageState();
}

class _RippleAnimationPageState extends State<RippleAnimationPage>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  var listRadius = [150.0,200.0,250.0,300.0,350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.addListener(() {
setState(() {

});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Effect'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: listRadius.map((radius){
            return Container(
              width: radius*_animationController.value,
              height: radius*_animationController.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(1.0 - _animationController.value),
              ),
            );
          }).toList(),
        )
        ),
      );
  }
}
