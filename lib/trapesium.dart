import 'package:flutter/material.dart';
import 'dart:math';

class Trapesium extends StatelessWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas dan Keliling Trapesium'),
      ),
      body: InputForm(),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();
  final _sisiAtasController = TextEditingController();
  final _sisiBawahController = TextEditingController();
  final _tinggiController = TextEditingController();
  double _luas = 0;
  double _keliling = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _sisiAtasController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nilai sisi atas harus diisi';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Sisi Atas',
                  hintText: 'Masukkan nilai sisi atas',
                ),
              ),
              TextFormField(
                controller: _sisiBawahController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nilai sisi bawah harus diisi';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Sisi Bawah',
                  hintText: 'Masukkan nilai sisi bawah',
                ),
              ),
              TextFormField(
                controller: _tinggiController,
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
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      double sisiAtas = double.parse(_sisiAtasController.text);
                      double sisiBawah =
                          double.parse(_sisiBawahController.text);
                      double tinggi = double.parse(_tinggiController.text);
                      double sisiMiring = sqrt(
                          pow((sisiBawah - sisiAtas) / 2, 2) + pow(tinggi, 2));
                      _luas = (sisiAtas + sisiBawah) * tinggi / 2;
                      _keliling = sisiAtas + sisiBawah + 2 * sisiMiring;
                    });
                  }
                },
                child: Text('Hitung'),
              ),
              SizedBox(height: 16.0),
              Text('Luas: $_luas'),
              SizedBox(height: 8.0),
              Text('Keliling: $_keliling'),
            ],
          ),
        ),
      ),
    );
  }
}
