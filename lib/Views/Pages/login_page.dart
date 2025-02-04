import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Views/widgets_trees.dart';

class Loginpage extends StatefulWidget {
  
  const Loginpage({super.key, required this.title});
  final String title;

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController controllerEmail = TextEditingController(text: "Login1111");
  TextEditingController controllerPass = TextEditingController(text: "111111");
  String confirmedEmail = "Login1111";
  String confiremedPass = "111111";

 


  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPass.dispose();
    super.dispose();
  }

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
              Lottie.asset('Assets/Lotties/Home.json', height: 400.0),  
                const SizedBox(height: 20.0),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  controller: controllerPass,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                FilledButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40.0),
                  ),
                  child:  Text(widget.title),
                  onPressed: () {
                    setState(
                      () {
                        onLoginPressed();
                      },
                    );
                  },
                ),
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

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confiremedPass == controllerPass.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const WidgetsTrees();
          },
        ),
        (route)=> false,
      );
    }
  }
}


