import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PerhitunganBangunDatar extends StatefulWidget {
  const PerhitunganBangunDatar({Key? key}) : super(key: key);

  @override
  State<PerhitunganBangunDatar> createState() => _PerhitunganBangunDatarState();
}

class _PerhitunganBangunDatarState extends State<PerhitunganBangunDatar> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi Panjang"),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: ctrPanjang,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Panjang",
                  hintText: "Masukkan Panjang(cm)",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ctrLebar,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Lebar",
                  hintText: "Masukkan Lebar(cm)",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Size.infinite.width,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (ctrPanjang.text.isNotEmpty &&
                            ctrLebar.text.isNotEmpty) {
                          ctrHasil.text = (double.parse(ctrPanjang.text) *
                                  double.parse(ctrLebar.text))
                              .toString();
                        } else {
                          ctrHasil.text =
                              "Semoga Keluarga anda sehat selalu, Semoga Allah memberkati kepada kita";
                        }
                      });
                    },
                    child: Text("Hasil")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 46, 46, 46),
                height: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                width: Size.infinite.width,
                child: Text(
                  "Luas persegi panjang : ${ctrHasil.text} cm",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 79, 150, 169),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
