import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/SecondRoute.dart';

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myPhone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormRegistration"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gwejh Jago Main EMEL",
              style: const TextStyle(
                  color: Color.fromARGB(255, 23, 21, 21),
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
                hintText: "Nama kamu siapa cantik",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: ctrPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Kurang tau",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pilih Jenis Kelamin Anda",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (value) {
                    setState(() {
                      id = 1;
                    });
                  },
                ),
                Text("Male"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (value) {
                    setState(() {
                      id = 2;
                    });
                  },
                ),
                Text("Female"),
              ],
            ),
            Text(
              "Phone Number $myPhone",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              width: Size.infinite.width,
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                    setState(() {
                      myPhone = result.toString();
                    });
                  },
                  child: Text("Input Number")),
            ),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
