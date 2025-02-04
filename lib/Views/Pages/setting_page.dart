import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});
  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double isSlider = 0.0;
  String? menuItem = "E1"; // Set an initial value here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text("SnakBar"),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(),
                child: const Text("Open SnakBar"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Alert Title"),
                        content: const Text("Alert Conetent"),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(),
                child: const Text("SnakBar Alter"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AboutDialog();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(),
                child: const Text("About Licence"),
              ),
              DropdownButton(
                value: menuItem,
                items: const [
                  DropdownMenuItem(
                    value: "E1",
                    child: Text("Element 1"),
                  ),
                  DropdownMenuItem(
                    value: "E2",
                    child: Text("Element 2"),
                  ),
                  DropdownMenuItem(
                    value: "E3",
                    child: Text("Element 3"),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: const Text("Click Here"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text("Press Button"),
                value: isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              Slider(
                max: 10.0,
                value: isSlider,
                onChanged: (double value) {
                  setState(() {
                    isSlider = value;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {},
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("click me"),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text("click me"),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("click me")),
              const CloseButton(),
              const BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
