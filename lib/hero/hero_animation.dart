import 'package:flutter/material.dart';
import 'package:practise/hero/details.dart';


class HeroAnimationPage extends StatefulWidget {
  const HeroAnimationPage({super.key});

  @override
  State<HeroAnimationPage> createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
          },
          child: Hero(
            tag: 'background',
            child: Image.asset('assets/img.png',width: 150,height: 100,),


          ),
        )
      ),
    );
  }
}
