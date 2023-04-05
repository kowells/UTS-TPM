import 'package:flutter/material.dart';
import 'package:utstpm/profile.dart';
import 'package:utstpm/bangundatar.dart';
import 'package:utstpm/kalender.dart';
import 'package:utstpm/login.dart';

class MenuPage extends StatelessWidget {
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
              'Menu',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            new SizedBox(
              width: 200.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bangundatar()),
                  );
                },
                child: Text('Bangun Datar'),
              ),
            ),
            SizedBox(height: 10),
            new SizedBox(
              width: 200.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kalender()),
                  );
                },
                child: Text('Kalender'),
              ),
            ),
            SizedBox(height: 10),
            new SizedBox(
              width: 200.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Text('Profile'),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('LOGOUT'),
            ),
          ],
        ),
      ),
    );
  }
}
