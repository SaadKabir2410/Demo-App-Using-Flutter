import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Views/Pages/login_page.dart';
import 'package:myapp/Views/Pages/onbording.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('Assets/Lotties/Welcome.json', height: 400.0),
                const FittedBox(
                  child: Text(
                    "Flutter App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Onbording();
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40.0),
                  ),
                  child: const Text("Get Started"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Loginpage(
                            title: "Login",
                          );
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40.0),
                  ),
                  child: const Text("Log In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
