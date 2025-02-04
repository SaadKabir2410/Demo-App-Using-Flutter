import 'package:flutter/material.dart';
import 'package:myapp/Widgets/hero_widget.dart';
import 'constant.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key });
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const HeroWidget(required,title: "Flutter App",),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Basic Layout", style: KTextStyle.titleTealText),
                      const Text(
                        "The description of this layout",
                        style: KTextStyle.descriptionStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
