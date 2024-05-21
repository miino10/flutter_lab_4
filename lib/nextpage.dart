import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
// Constructor to get the data from the previous page.
  const NextPage(
      {super.key,
      required this.name,
      required this.email,
      required this.phoneno});
  final String name, email, phoneno;
  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    // To listen to the changes in the textfield.
    TextEditingController name1 = TextEditingController(text: widget.name);
    TextEditingController email1 = TextEditingController(text: widget.email);
    TextEditingController phoneno1 =
        TextEditingController(text: widget.phoneno);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                // To set the appropriate controller to the text field.
                controller: name1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: email1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: phoneno1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Number",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
