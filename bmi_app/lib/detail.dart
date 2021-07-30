import 'package:bmi_app/entity.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DataBMI? dataBMI;

  DetailPage({@required this.dataBMI});

  @override
  Widget build(BuildContext context) {
    var height = int.parse(dataBMI!.tinggi);
    var weight = int.parse(dataBMI!.berat);
    var height_in_meter = height / 100;
    var hasil_angka = weight / (height_in_meter * height_in_meter);
    var hasil = "-";
    if (hasil_angka < 17.0) {
      hasil = "Sangat Kurus";
    } else if (hasil_angka >= 17.0 && hasil_angka <= 18.4) {
      hasil = "Kurus";
    } else if (hasil_angka >= 18.5 && hasil_angka <= 25.0) {
      hasil = "Normal";
    } else if (hasil_angka >= 25.1 && hasil_angka <= 27.0) {
      hasil = "Gemuk";
    } else if (hasil_angka > 27.0) {
      hasil = "Sangat Gemuk";
    } else {
      hasil = "Tidak Diketahui";
    }
    return MaterialApp(
      title: 'BMI App',
      theme: ThemeData(primarySwatch: Colors.red, primaryColor: Colors.yellow),
      home: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text(
                'Tinggi: ${dataBMI!.tinggi} cm & Berat: ${dataBMI!.berat} kg',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                'Hasil BMI: $hasil',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Kembali",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
