import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController ctrPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone number",
                hintText: "Hehe",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Close the screen and return ctrPhone as the result.
                  Navigator.pop(context, ctrPhone.text);
                },
                child: Text("Gass")),
          ],
        ),
      ),
    );
  }
}
