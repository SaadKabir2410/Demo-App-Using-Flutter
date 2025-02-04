import 'package:flutter/material.dart';

import 'package:myapp/Data/notifiers.dart';
import 'package:myapp/Views/Pages/constant.dart';

import 'package:myapp/Views/Pages/home_pages.dart';

import 'package:myapp/Views/Pages/setting_page.dart';

import 'package:myapp/Widgets/navbar_widgets.dart';

import 'Pages/profile_pages.dart';
import "package:shared_preferences/shared_preferences.dart";

List<Widget> pages = [
  const HomePages(),
  const ProfilePage(),
];

class WidgetsTrees extends StatelessWidget {
  // ignore: use_super_parameters

  const WidgetsTrees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("App Demo"), centerTitle: true, actions: [
        IconButton(
          icon: ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDarkMode, child) {
              return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
            },
          ),
          onPressed: () async {
            isDarkModeNotifier.value = !isDarkModeNotifier.value;
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.setBool(KConstants.themeModeKey,isDarkModeNotifier.value);
            
          },
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SettingPage(
                    title: 'Settings',
                  );
                },
              ),
            );
          },
          icon: const Icon(Icons.settings),
        ),
      ]),
      bottomNavigationBar: NavbarWidgets(),
      body: ValueListenableBuilder(
        valueListenable: selectedPagesNotifier,
        builder: (context, selectedpages, child) {
          return pages.elementAt(selectedpages);
        },
      ),
    );
  }
}
