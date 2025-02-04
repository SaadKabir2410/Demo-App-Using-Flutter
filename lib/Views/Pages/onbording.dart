import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Views/Pages/login_page.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('Assets/Lotties/hi.json', height: 400.0),
                const SizedBox(height: 20.0),
                
                FilledButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40.0),
                  ),
                  child: const Text("Register"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Loginpage(title: "Register");
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10.0),
                const Text("Do you hava an Account? Login"),
                const SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
