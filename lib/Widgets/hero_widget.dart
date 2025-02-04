import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget(Required required, {super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "hero_One",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("Assets/images/noPic.jpg",
                color: Colors.teal, colorBlendMode: BlendMode.darken),
          ),
        ),
        FittedBox(
          child:  Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 50.0, 
                letterSpacing: 50.0),
          ),
        ),
        
      ],
    );
  }
}
