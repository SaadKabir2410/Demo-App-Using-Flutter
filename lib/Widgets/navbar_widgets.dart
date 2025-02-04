import 'package:flutter/material.dart';
import 'package:myapp/Data/notifiers.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class NavbarWidgets extends StatelessWidget {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPagesNotifier,
      builder: (context, selectedPages, child) {
        return NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (int value) {
            selectedPagesNotifier.value = value;
          },
          selectedIndex: selectedPages,
        );
      },
    );
  }
}
