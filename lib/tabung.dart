import 'package:flutter/material.dart';
import 'dart:math';

class Tabung extends StatelessWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas dan Keliling Tabung'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Masukkan nilai jari-jari dan tinggi tabung:',
            ),
            SizedBox(height: 20),
            InputForm(),
          ],
        ),
      ),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();
  final _radiusController = TextEditingController();
  final _heightController = TextEditingController();
  double _luas = 0;
  double _keliling = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _radiusController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nilai jari-jari harus diisi';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Jari-jari',
              hintText: 'Masukkan nilai jari-jari',
            ),
          ),
          TextFormField(
            controller: _heightController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nilai tinggi harus diisi';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Tinggi',
              hintText: 'Masukkan nilai tinggi',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  double radius = double.parse(_radiusController.text);
                  double height = double.parse(_heightController.text);
                  _luas = 2 * pi * radius * (radius + height);
                  _keliling = 2 * pi * radius;
                });
              }
            },
            child: Text('Hitung'),
          ),
          SizedBox(height: 20),
          Text('Luas: $_luas'),
          SizedBox(height: 20),
          Text('Keliling: $_keliling'),
        ],
      ),
    );
  }
}
