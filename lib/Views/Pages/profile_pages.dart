import 'package:flutter/material.dart';
import 'package:myapp/Data/notifiers.dart';
import 'package:myapp/Views/Pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  // ignore: use_super_parameters
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: const Text("Log Out"),
            onTap: () {
              selectedPagesNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const WelcomePage();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
