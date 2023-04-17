import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Planner'),
      ),
      body: Center(

        child: Container(
          alignment: Alignment(0.7,0.9),

          child: ElevatedButton(
            child: const Text('Start to Planner Helper'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}

