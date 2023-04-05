import 'package:flutter/material.dart';
import 'package:utstpm/trapesium.dart';
import 'package:utstpm/tabung.dart';

class Bangundatar extends StatelessWidget {
  const Bangundatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Menu Bangun Datar',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            new SizedBox(
              width: 200.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Trapesium()),
                  );
                },
                child: Text('Trapesium'),
              ),
            ),
            SizedBox(height: 20),
            new SizedBox(
              width: 200.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tabung()),
                  );
                },
                child: Text('Tabung'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
